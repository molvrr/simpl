type bop =
  | Add
  | Mul
  | Leq

type expr =
  | Var of string
  | Int of int
  | Bool of bool
  | Binop of bop * expr * expr
  | Lef of string * expr * expr
  | If of expr * expr * expr
