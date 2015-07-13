let rec last l = 
	match l with
	| [] -> None
	| [a] -> Some a
	| h :: t -> last t;;


let a = last [ "a" ; "b" ; "c" ; "d" ];;
