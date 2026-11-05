module AST where

data Program = Program String [Statement]
    deriving (Show, Eq)

data Statement
    = Assignment String Expression
    | If Expression [Statement] (Maybe [Statement])
    | While Expression [Statement]
    | Write Expression
    | Read String
    deriving (Show, Eq)

data Expression
    = Var String
    | IntLit Integer
    | BoolLit Bool
    | BinOp Op Expression Expression
    | UnOp UnaryOp Expression
    deriving (Show, Eq)

data Op = Add | Sub | Mul | Div | Equal | NotEqual | Lt | Gt | Leq | Geq | And | Or
    deriving (Show, Eq)

data UnaryOp = Not | Neg
    deriving (Show, Eq)