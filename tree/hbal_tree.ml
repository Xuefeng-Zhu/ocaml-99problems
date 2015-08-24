type 'a binary_tree =
    | Empty
    | Node of 'a * 'a binary_tree * 'a binary_tree;;

let combine_trees ts1 ts2 res =
	List.fold_left (fun res t1 -> 
		List.fold_left (fun res t2 -> Node('x', t1, t2) :: res) res ts2) res ts1;;

let rec hbal_tree n = 
	if n = 0 then [Empty]
	else if n = 1 then [Node('x', Empty, Empty)]
	else let t1 = hbal_tree (n-1) in
	 	let t2 = hbal_tree (n-2) in
	 	combine_trees t1 t1 (combine_trees t1 t2 (combine_trees t2 t1 []));
