let rec min_nodes h =
	match h with
	| 0 -> 0
	| 1 -> 1
	| _ -> min_nodes(h-2) + min_nodes(h-1) + 1;;
