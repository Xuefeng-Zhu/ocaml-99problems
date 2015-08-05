#use "is_prime.ml"

let all_primes low up = 
	let rec aux n =
		if n > up then
			[]
		else if is_prime n then 
				n :: aux (n+1)
			 else aux (n+1)
	in aux low;;

