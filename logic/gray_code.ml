let rec gray n =
	let rec aux c list = 
		match list with
		| [] -> []
		| h :: t -> (c^h) :: aux c t in
	if n <= 1 then ["0"; "1"]
	else let temp = (gray (n-1)) in 
		aux "0" temp @ aux "1" temp;;

let a = gray 1;;
let b = gray 2;;
let c = gray 3;;