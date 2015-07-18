let pack l =
	let rec aux temp res = function
		 | [] -> []
		 | [a] -> (a :: temp) :: res
		 | h1 :: h2 :: t ->  
		 	if h1 = h2
		 	then
		 		aux (h1 :: temp) res (h2::t)
		 	else
		 		aux [] ((h1::temp)::res) (h2::t)
	in List.rev(aux [] [] l);; 


let a = pack ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"d";"e";"e";"e";"e"];;