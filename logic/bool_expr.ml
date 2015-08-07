type bool_expr =
    | Var of string
    | Not of bool_expr
    | And of bool_expr * bool_expr
    | Or of bool_expr * bool_expr;;

let rec table2_eval a a_val b b_val expr = 
	match expr with
	| Var e -> if e = a then a_val else b_val
	| Not e -> not (table2_eval a a_val b b_val e)
	| And (e1, e2) -> (table2_eval a a_val b b_val e1) && (table2_eval a a_val b b_val e2)
	| Or (e1, e2) -> (table2_eval a a_val b b_val e1) || (table2_eval a a_val b b_val e2);;

let table2 a b expr = 
	(true, true, table2_eval a true b true expr) ::
	(true, false, table2_eval a true b false expr) ::
	(false, true, table2_eval a false b true expr) ::
	(false, false, table2_eval a false b false expr) :: [];;

let test = table2 "a" "b" (And(Var "a", Or(Var "a", Var "b")));;