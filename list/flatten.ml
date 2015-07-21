type 'a node =
    | One of 'a 
    | Many of 'a node list;;


let flatten list =
	let rec aux result = function
		| [] -> result
		| One a :: t -> aux (a::result) t
		| Many sub :: t -> aux (aux result sub) t
	in List.rev(aux [] list);;

let a = flatten [ One "a" ; Many [ One "b" ; Many [ One "c" ; One "d" ] ; One "e" ] ];;