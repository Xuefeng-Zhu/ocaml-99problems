type 'a binary_tree =
    | Empty
    | Node of 'a * 'a binary_tree * 'a binary_tree;;


let rec is_mirror l r = 
	match (l, r) with
	| Empty, Empty -> true
	| Node(_, l1, r1), Node(_,l2, r2) -> (is_mirror l1 r2) && (is_mirror r1 l2)
	| _ -> false;;

let is_symmetric t = 
	match t with
	| Empty -> true
	| Node (_, l, r) -> is_mirror l r;;