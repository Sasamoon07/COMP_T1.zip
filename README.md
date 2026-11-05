# COMP_T1.zip
Primeira entrega do trabalho da cadeira de Compiladores

## Descrição do Projeto

Este projeto implementa as duas primeiras fases de um compilador para um **subconjunto da linguagem Pascal**: a análise léxica e a análise sintática. Foi desenvolvido em Haskell, com o Alex (gerador de analisadores léxicos) e o Happy (gerador de analisadores sintáticos).

O programa lê o código fonte em Pascal, converte-o numa sequência de tokens e constrói a respetiva Árvore sintática abstrata (AST), que depois é impressa.
Esta representação estrutural serve de base às fases seguintes de um compilador completo.

## Subconjunto de Pascal Suportado

**Expressões**
- Expressões aritméticas
- Expressões booleanas
- Função de saída: `write`
- Função de entrada: `read`

**Comandos**
- Atribuições
- Condicionais (`if ... then ... else`)
- Ciclos `while`

## Estrutura do Projeto

| Ficheiro | Função |
|----------|--------|
| `src/Lexer.x` | Especificação do analisador léxico (Alex) |
| `src/AST.hs` | Tipos que representam a árvore sintática abstrata |
| `Parser.y` | Gramática e construção da AST (Happy) |
| `Main.hs` | Leitura do ficheiro Pascal e impressão dos tokens |
| `src/examples/example.pas` | Programa Pascal de exemplo |

## 1. Analisador Léxico (`src/Lexer.x`)

Transforma o código-fonte numa sequência de tokens, ignorando espaços em branco, tabulações e quebras de linha.

**Categorias de tokens**

- **Palavras reservadas:** `program`, `begin`, `end`, `if`, `then`, `else`, `while`, `do`, `write`, `read`
- **Operadores lógicos:** `and`, `or`, `not`
- **Valores booleanos:** `true`, `false`
- **Identificadores:** letra seguida de letras, dígitos ou `_` (ex.: `contador`, `x1`)
- **Inteiros:** sequências de dígitos (ex.: `42`)
- **Operadores aritméticos:** `+`, `-`, `*`, `/`
- **Operadores relacionais:** `=`, `<>`, `<`, `<=`, `>`, `>=`
- **Atribuição:** `:=`
- **Delimitadores:** `(`, `)`, `;`, `.`

## 2. Analisador Sintático (`Parser.y`)

O analisador sintático constrói uma Árvore Sintática Abstrata (AST) a partir do fluxo de tokens gerado pelo lexer, aplicando as regras gramaticais definidas para a linguagem. Desenvolvido com Happy, este componente valida a estrutura sintática do código-fonte.

**Construções Sintáticas Suportadas:**

**Programa:**
- Estrutura básica: `program nome; begin ... end.`
- Blocos de comandos: `begin ... end`

**Expressões:**
- Aritméticas: `a + b`, `a - b`, `a * b`, `a / b`
- Booleanas: `a and b`, `a or b`, `not a`
- Relacionais: `a = b`, `a <> b`, `a < b`, `a <= b`, `a > b`, `a >= b`
- Expressões entre parênteses: `( expressão )`
- Leitura (input): `read(identificador)`

**Comandos:**
- Atribuições: `identificador := expressão;`
- Estruturas condicionais:
  - `if condição then comando`
  - `if condição then comando else comando`
- Ciclos: `while condição do comando`
- Escrita (output): `write(expressão)`

**Funcionalidades Avançadas:**
- Precedência e associatividade de operadores definidas na gramática
- Construção e impressão da AST do programa
- Sinalização de erros sintáticos

## Árvore Sintática Abstrata

A AST representa o programa através de tipos algébricos de dados em Haskell, separando:

- **Expressões:** constantes inteiras e booleanas, variáveis, operações binárias e unárias, `read`
- **Comandos:** atribuição, `if-then-else`, `while`, `write`, sequências de comandos

## Estrutura de Pastas

​```
.
├── pascal-parser.cabal
├── README.md
├── src/
│   ├── AST.hs
│   ├── Lexer.x
│   ├── Parser.y
│   └── Main.hs
└── examples/
    ├── exemplo.pas
    ├── teste2.pas
    └── teste3.pas
​```

## Requisitos

- GHC e Cabal
- Alex e Happy (`cabal install alex happy`)

## Compilação e Execução

​```bash
cabal build
cabal run pascal-parser -- examples/exemplo.pas
​```

Também é possível ler do stdin: `cabal run pascal-parser < examples/exemplo.pas`.

## Exemplo de Utilização

Input:

​```pascal
program P;
begin
  x := 2 + 3 * 4
end.
​```

Output (AST):

​```
Program "P" [Assignment "x" (BinOp Add (IntLit 2) (BinOp Mul (IntLit 3) (IntLit 4)))]
​```

## Decisões de Design

- Em Pascal o `;` separa comandos, por isso o último comando de um bloco não leva `;`.
- O corpo de `if` e `while` é um comando simples ou um bloco `begin ... end`.
- Precedências (da mais baixa para a mais alta): `or`, `and`, relacionais, `+ -`, `* /`, `not` e menos unário.
- O conflito shift/reduce reportado pelo Happy é o *dangling else*, resolvido ligando o `else` ao `if` mais próximo.

## Limitações

- Não há declarações de variáveis (`var`), tipos, strings nem procedimentos.
- As palavras reservadas só são reconhecidas em minúsculas.
- Só são suportados comentários no formato `{ ... }`.

## Autor

- Ana Filipa Sampaio Ferreira (up202306983)

Unidade Curricular de Compiladores – Faculdade de Ciências da Universidade do Porto
