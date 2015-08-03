#use "factors2.ml"

let rec pow b e = if e = 0 then 1 else b * pow b (e-1);;

let phi_improved num = 
	let rec aux l = 
		match l with
		| [] -> 1
		| (p, m) :: t -> (p - 1) * pow p (m-1) * aux t in
	aux (factors num);;

let a = phi_improved 10;;
let b = phi_improved 13;;