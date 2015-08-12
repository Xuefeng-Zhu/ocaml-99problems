type 'a binary_tree =
    | Empty
    | Node of 'a * 'a binary_tree * 'a binary_tree;;

let rec insert tree v = 
	match tree with
	| Empty -> Node(v, Empty, Empty)
	| Node(x, l, r) -> if v < x then Node(x, insert l v, r) 
					   else Node(x, l, insert r v);;

let construct list = List.fold_left insert Empty list;;

let test = construct [3;2;5;7;1];;