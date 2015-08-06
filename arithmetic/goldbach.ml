#use "is_prime.ml"

let goldbach n = 
	let rec aux current = 
		if is_prime current && is_prime (n-current) then 
			(current, n-current)
		else aux (current+1) in 
	aux 2;;

