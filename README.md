# SimPL (CS3110)
## BNF
```rust
e ::= x | i | b | e1 bop e2
    | if e1 then e2 else e3
    | let x = e1 in e2

bop ::= + | * | <=

x ::= <identifiers>

i ::= <integers>

b ::= true | false

v ::= i | b

v -/->
```

## Parser
Precedência: `TIMES` > `PLUS` > `LEQ` > `ELSE` > `IN`

```ocaml
%nonassoc       IN
%nonassoc       ELSE
%left           LEQ
%left           PLUS
%left           TIMES
```

```rust
T := fun a -> fun b -> a
F := fun a -> fun b -> b
```
