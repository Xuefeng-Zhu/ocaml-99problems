let remove_at n list = 
	let rec aux i temp = function
	| [] -> List.rev temp 
	| h :: t -> 
		if i = n then List.rev temp @ t 
		else aux (i+1) (h::temp) t
	in aux 0 [] list;;

let test = remove_at 1 ["a";"b";"c";"d"];;