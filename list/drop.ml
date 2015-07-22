let drop list n =
	let rec aux result rest count = 
		match rest with
		| [] -> result
		| h :: t -> if count == 1 then aux result t n
					else aux (h::result) t (count-1)
	in List.rev(aux [] list n);;

let test = drop ["a";"b";"c";"d";"e";"f";"g";"h";"i";"j"] 3;;