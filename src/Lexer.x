{
module Lexer where
}

%wrapper "basic"

$digit = 0-9
$alpha = [a-zA-Z]
$alphanum = [a-zA-Z0-9_]

tokens :-

  $white+                       ;
  "{" [^\}]* "}"                ;

  program                       { \s -> TokenProgram }
  begin                         { \s -> TokenBegin }
  end                           { \s -> TokenEnd }
  if                            { \s -> TokenIf }
  then                          { \s -> TokenThen }
  else                          { \s -> TokenElse }
  while                         { \s -> TokenWhile }
  do                            { \s -> TokenDo }
  and                           { \s -> TokenAnd }
  or                            { \s -> TokenOr }
  not                           { \s -> TokenNot }
  true                          { \s -> TokenTrue }
  false                         { \s -> TokenFalse }

  write                         { \s -> TokenWrite }
  read                          { \s -> TokenRead }

  $alpha $alphanum*             { \s -> TokenId s }
  $digit+                       { \s -> TokenInt (read s) }

  ":="                          { \s -> TokenAssign }
  "<>"                          { \s -> TokenNeq }
  "<="                          { \s -> TokenLeq }
  ">="                          { \s -> TokenGeq }
  "+"                           { \s -> TokenPlus }
  "-"                           { \s -> TokenMinus }
  "*"                           { \s -> TokenTimes }
  "/"                           { \s -> TokenDiv }
  "="                           { \s -> TokenEq }
  "<"                           { \s -> TokenLt }
  ">"                           { \s -> TokenGt }
  "("                           { \s -> TokenLParen }
  ")"                           { \s -> TokenRParen }
  ";"                           { \s -> TokenSemicolon }
  "."                           { \s -> TokenDot }

{
data Token
  = TokenProgram
  | TokenBegin
  | TokenEnd
  | TokenIf
  | TokenThen
  | TokenElse
  | TokenWhile
  | TokenDo
  | TokenAnd
  | TokenOr
  | TokenNot
  | TokenTrue
  | TokenFalse
  | TokenWrite
  | TokenRead
  | TokenId String
  | TokenInt Integer
  | TokenAssign
  | TokenNeq
  | TokenLeq
  | TokenGeq
  | TokenPlus
  | TokenMinus
  | TokenTimes
  | TokenDiv
  | TokenEq
  | TokenLt
  | TokenGt
  | TokenLParen
  | TokenRParen
  | TokenSemicolon
  | TokenDot
  deriving (Eq, Show)
}