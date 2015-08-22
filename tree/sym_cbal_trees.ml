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

let combine_trees ts1 ts2 res =
	List.fold_left (fun res t1 -> 
		List.fold_left (fun res t2 -> Node('x', t1, t2) :: res) res ts2) res ts1;;

let rec cbal_tree n = 
	if n = 0 then [Empty]
else if n mod 2 = 1 
		then let t = cbal_tree(n/2) in
		combine_trees t t []
else let t1 = cbal_tree(n/2) in
	 let t2 = cbal_tree(n/2-1) in
	 combine_trees t1 t2 (combine_trees t2 t1 []);;


let sym_cbal_trees n =
	List.filter is_symmetric (cbal_tree n);;

let test = sym_cbal_trees 5;;