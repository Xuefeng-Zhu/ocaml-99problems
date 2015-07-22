let rec duplicate list =
	match list with
	| [] -> []
	| h :: t -> h :: h :: duplicate t;;

let a = duplicate ["a";"b";"c";"c";"d"];;