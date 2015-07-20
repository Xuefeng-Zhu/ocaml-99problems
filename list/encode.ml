let encode list =
	let rec aux count result= function
		| [] -> result
		| [a] -> (count+1,a)::result
		| a :: b :: rest -> 
			if a = b then aux (count+1) result (b::rest)
				else aux 0 ((count+1, a)::result) (b::rest)
	in List.rev(aux 0 [] list);; 

let test = encode ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;