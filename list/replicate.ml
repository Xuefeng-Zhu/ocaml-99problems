let rec replicate list n =
	let rec duplicate c acc t = 
		match t with
		 | 0 -> acc 
		 | _ -> duplicate c (c::acc) (t-1)
	in match list with
	| [] -> []
	| h :: t -> (duplicate h [] n) @ replicate t n;;

let test = replicate ["a";"b";"c"] 3;;