module Main where

import AST
import Parser (parse)
import Lexer (alexScanTokens)
import System.Environment (getArgs)

main :: IO ()
main = do
    putStrLn "=== ANALISADOR LÉXICO E SINTÁTICO DE PASCAL ===\n"

    args <- getArgs
    content <- case args of
        (filePath : _) -> do
            putStrLn $ "FICHEIRO: " ++ filePath ++ "\n"
            readFile filePath
        [] -> do
            putStrLn "A ler do stdin (termina com Ctrl+D)...\n"
            getContents

    putStrLn "CÓDIGO FONTE PASCAL:"
    putStrLn "===================="
    putStrLn content

    -- Análise léxica
    let tokens = alexScanTokens content
    putStrLn "TOKENS:"
    putStrLn "======="
    print tokens
    putStrLn ""

    -- Análise sintática
    let ast = parse tokens
    putStrLn "ÁRVORE SINTÁTICA ABSTRATA (AST):"
    putStrLn "================================"
    print ast
