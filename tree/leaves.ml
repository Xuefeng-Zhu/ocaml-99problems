type 'a binary_tree =
    | Empty
    | Node of 'a * 'a binary_tree * 'a binary_tree;;

let rec leaves tree = 
	match tree with
	| Empty -> []
	| Node(v, Empty, Empty) -> [v]
	| Node(v, l, r) -> (leaves l) @ (leaves r);;

let example_tree = Node('a', Node('b', Node('d', Empty, Empty), Node('e', Empty, Empty)),
         Node('c', Empty, Node('f', Node('g', Empty, Empty), Empty))) in
	leaves example_tree;;
