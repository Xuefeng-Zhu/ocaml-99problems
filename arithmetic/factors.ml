let factors n = 
	let rec aux rest factor acc =
		if rest mod factor = 0 
			then aux (rest / factor) factor (factor::acc)
		else if rest = 1 
				then acc
			else aux rest (factor+1) acc
	in List.rev(aux n 2 []);;

let test = factors 315;;