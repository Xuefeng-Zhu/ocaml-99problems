let factors n = 
	let rec aux rest factor temp acc =
		if rest mod factor = 0 then
			aux (rest / factor) factor (temp+1) acc
		else if rest = 1 then 
				(factor,temp)::acc
			else if temp = 0 then
					aux rest (factor+1) 0 acc
				else aux rest (factor+1) 0 ((factor, temp)::acc)
	in List.rev(aux n 2 0 []);;

let test = factors 315;;