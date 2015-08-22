type 'a binary_tree =
    | Empty
    | Node of 'a * 'a binary_tree * 'a binary_tree;;

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

let test1 = cbal_tree 4;;
let test2 = List.length(cbal_tree 40);;