let is_prime n =
	let sq = int_of_float (sqrt (float_of_int n)) 
	in let rec aux d =
		if d > sq then true
		else if n mod d = 0 then false 
			 else aux (d+1)
	in n > 1 && aux 2;;


