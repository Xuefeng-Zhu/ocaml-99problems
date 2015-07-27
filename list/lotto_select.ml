let lotto_select n m =
	let rec aux acc a = 
		if a = 0 then acc
		else aux ((Random.int m) :: acc) (a-1)
in aux [] n;;

let test = lotto_select 6 49;;