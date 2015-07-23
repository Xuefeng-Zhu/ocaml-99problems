let slice list a b = 
	let rec aux i acc = (function
	| [] -> acc
	| h :: t -> 
		if i >= a 
		then (if i = b then h::acc else aux (i+1) (h::acc) t)
		else aux (i+1) acc t)
in List.rev (aux 0 [] list);;

let test = slice ["a";"b";"c";"d";"e";"f";"g";"h";"i";"j"] 2 6;;


