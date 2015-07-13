let rec last_two l = 
	match l with
	| [] | [_] -> None
	| [a; b] -> Some (a, b)
	| h :: l -> last_two l;;

last_two [ "a" ; "b" ; "c" ; "d" ];;