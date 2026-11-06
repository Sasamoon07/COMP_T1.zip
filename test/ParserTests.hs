module Main where

import AST (Expression(..), Op(..), Program(..), Statement(..))
import Control.Monad (unless)
import Lexer (Token(..), alexScanTokens)
import Parser (parse)

assertEqual :: (Eq a, Show a) => String -> a -> a -> IO ()
assertEqual name expected actual =
    unless (expected == actual) $
        fail (name ++ "\nEsperado: " ++ show expected ++ "\nObtido: " ++ show actual)

main :: IO ()
main = do
    let tokens = alexScanTokens "program P; begin x := 2 + 3 * 4 end."
        expectedTokens =
            [ TokenProgram, TokenId "P", TokenSemicolon, TokenBegin
            , TokenId "x", TokenAssign, TokenInt 2, TokenPlus
            , TokenInt 3, TokenTimes, TokenInt 4, TokenEnd, TokenDot
            ]
        expectedAst =
            Program "P"
                [ Assignment "x"
                    (BinOp Add (IntLit 2) (BinOp Mul (IntLit 3) (IntLit 4)))
                ]

    assertEqual "Análise léxica" expectedTokens tokens
    assertEqual "Análise sintática e precedência" expectedAst (parse tokens)
    putStrLn "Todos os testes passaram."
