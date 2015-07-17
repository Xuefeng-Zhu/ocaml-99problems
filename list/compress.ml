let rec compress l = 
	match l with
	| [] -> []
	| [a] -> [a]
	| a :: b :: t -> if a = b then compress (a :: t) else a :: compress (b :: t);; 

let r = compress ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;