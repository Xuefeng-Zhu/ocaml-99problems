type 'a binary_tree =
    | Empty
    | Node of 'a * 'a binary_tree * 'a binary_tree;;

let rec internals tree = 
	match tree with
	| Empty -> []
	| Node(v, Empty, Empty) -> []
	| Node(v, l, r) -> v :: (internals l) @ (internals r);;

let example_tree = Node('a', Node('b', Node('d', Empty, Empty), Node('e', Empty, Empty)),
         Node('c', Empty, Node('f', Node('g', Empty, Empty), Empty))) in
	internals example_tree;;
