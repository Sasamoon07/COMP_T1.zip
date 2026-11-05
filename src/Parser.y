{
module Parser where

import AST
import Lexer
}

%name parse
%tokentype { Token }
%error { parseError }

%token
    program     { TokenProgram }
    begin       { TokenBegin }
    end         { TokenEnd }
    if          { TokenIf }
    then        { TokenThen }
    else        { TokenElse }
    while       { TokenWhile }
    do          { TokenDo }
    and         { TokenAnd }
    or          { TokenOr }
    not         { TokenNot }
    true        { TokenTrue }
    false       { TokenFalse }
    write       { TokenWrite }
    read        { TokenRead }
    id          { TokenId $$ }
    int         { TokenInt $$ }
    ':='        { TokenAssign }
    '<>'        { TokenNeq }
    '<='        { TokenLeq }
    '>='        { TokenGeq }
    '+'         { TokenPlus }
    '-'         { TokenMinus }
    '*'         { TokenTimes }
    '/'         { TokenDiv }
    '='         { TokenEq }
    '<'         { TokenLt }
    '>'         { TokenGt }
    '('         { TokenLParen }
    ')'         { TokenRParen }
    ';'         { TokenSemicolon }
    '.'         { TokenDot }

%left or
%left and
%nonassoc '=' '<>' '<' '<=' '>' '>='
%left '+' '-'
%left '*' '/'
%right not
%right NEG

%%

-- Programa completo: program nome; begin Comandos end.
Program : program id ';' begin StatementList end '.'
            { Program $2 $5 }

-- Em Pascal o ';' separa comandos (o último não precisa dele)
StatementList : Statement                       { [$1] }
              | Statement ';'                   { [$1] }
              | Statement ';' StatementList     { $1 : $3 }

-- Corpo de um if/while: um comando ou um bloco begin ... end
Body : Statement                        { [$1] }
     | begin StatementList end          { $2 }

Statement : id ':=' Expression                  { Assignment $1 $3 }
          | if Expression then Body             { If $2 $4 Nothing }
          | if Expression then Body else Body   { If $2 $4 (Just $6) }
          | while Expression do Body            { While $2 $4 }
          | write '(' Expression ')'            { Write $3 }
          | read '(' id ')'                     { Read $3 }

Expression : id                                 { Var $1 }
           | int                                { IntLit $1 }
           | true                               { BoolLit True }
           | false                              { BoolLit False }
           | Expression '+' Expression          { BinOp Add $1 $3 }
           | Expression '-' Expression          { BinOp Sub $1 $3 }
           | Expression '*' Expression          { BinOp Mul $1 $3 }
           | Expression '/' Expression          { BinOp Div $1 $3 }
           | Expression '=' Expression          { BinOp Equal $1 $3 }
           | Expression '<>' Expression         { BinOp NotEqual $1 $3 }
           | Expression '<' Expression          { BinOp Lt $1 $3 }
           | Expression '<=' Expression         { BinOp Leq $1 $3 }
           | Expression '>' Expression          { BinOp Gt $1 $3 }
           | Expression '>=' Expression         { BinOp Geq $1 $3 }
           | Expression and Expression          { BinOp And $1 $3 }
           | Expression or Expression           { BinOp Or $1 $3 }
           | not Expression                     { UnOp Not $2 }
           | '-' Expression %prec NEG           { UnOp Neg $2 }
           | '(' Expression ')'                 { $2 }

{
parseError :: [Token] -> a
parseError tokens = error ("Erro sintático perto de: " ++ show (take 10 tokens))
}