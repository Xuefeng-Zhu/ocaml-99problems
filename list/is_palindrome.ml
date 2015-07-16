let is_palindrome l = 
	l = List.rev l;;

Printf.printf "%B" (is_palindrome [ "x" ; "a" ; "m" ; "a" ; "x" ]);;