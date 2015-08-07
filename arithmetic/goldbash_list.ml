#use "goldbach.ml"

let goldbach_list low up =
	let rec aux cur = 
		if cur > up then []
		else (cur, (goldbach cur)) :: aux (cur+2) in
	if low mod 2 = 0 then aux low else aux (low+1);;

let goldbach_limit low up limit =
	List.filter (fun (n, (p1, p2)) -> p1 > limit && p2 > limit) (goldbach_list low up);;

let list = goldbach_list 9 20;;
let limit = goldbach_limit 3 2000 50;;