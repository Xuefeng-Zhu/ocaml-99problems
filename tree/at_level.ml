type 'a binary_tree =
    | Empty
    | Node of 'a * 'a binary_tree * 'a binary_tree;;

let rec at_level tree d = 
	match tree with
	| Empty -> []
	| Node(v, l, r) -> if d = 1 then [v] 
					   else (at_level l (d-1)) @ (at_level r (d-1));;

let example_tree = Node('a', Node('b', Node('d', Empty, Empty), Node('e', Empty, Empty)),
         Node('c', Empty, Node('f', Node('g', Empty, Empty), Empty))) in
	at_level example_tree 2;;
