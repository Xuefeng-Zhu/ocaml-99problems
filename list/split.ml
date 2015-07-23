let split list n =
	let rec aux rest temp = 
		match rest with
		| [] -> temp :: [[]]
		| a :: t -> 
			if List.length temp == n 
			then temp :: [t]
			else aux t (temp @ [a])
	in aux list [];;

let a = split ["a";"b";"c";"d";"e";"f";"g";"h";"i";"j"] 3;;
let b = split ["a";"b";"c";"d"] 5;;