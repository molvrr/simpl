%token <int> INT
%token EOF

%start <Ast.expr> prog

%%

prog:
    | e = expr; EOF { e }
    ;

expr:
    | e = INT { Ast.Int e }
    ;
