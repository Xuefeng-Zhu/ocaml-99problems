let range i j = 
	let rec aux a b = 
		if a < b
		then a :: aux (a+1) b
		else [a]
	in if i < j then aux i j
		else List.rev(aux j i)


let a = range 4 9;;
let b = range 9 4;;