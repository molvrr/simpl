open Interpreter

let parse str =
  let lexbuf = Lexing.from_string str in
  let ast = Parser.prog Lexer.read lexbuf in
  ast
;;

let () =
  let lines = input_line stdin in
  Ast.pp_expr Format.std_formatter @@ parse lines
;;
