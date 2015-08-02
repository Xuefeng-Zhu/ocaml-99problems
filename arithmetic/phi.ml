#use "gcd.ml"

let phi num =
	let rec aux current count =
		if current = num then count
		else if gcd num current = 1 then
				aux (current+1) (count+1)
			 else aux (current+1) count in
	aux 1 0;;

let a = phi 10;;
let b = phi 13;;