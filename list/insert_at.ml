let rec insert_at item pos list = 
	match list with
	| [] -> [item]
	| h :: t -> 		
		if pos = 0 then item :: list 
		else h :: insert_at item (pos-1) t;;

let a = insert_at "alfa" 1 ["a";"b";"c";"d"];;
let b = insert_at "alfa" 3 ["a";"b";"c";"d"];;
let c = insert_at "alfa" 4 ["a";"b";"c";"d"];;