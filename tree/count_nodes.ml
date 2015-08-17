type 'a mult_tree = T of 'a * 'a mult_tree list;;

let rec count_nodes tree =
	let rec aux list = 
		match list with
		| [] -> 0
		| h::t -> (count_nodes h) + aux t in
	match tree with
	| T (_, []) -> 1
	| T (_, t) -> 1 + aux t;;

let test = count_nodes (T('a', [T('f',[]) ]));;