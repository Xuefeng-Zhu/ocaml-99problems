#use "phi.ml"
#use "phi_improved.ml"

let timeit f a = 
	let s = Unix.gettimeofday() in
	let r = f a in
	let e = Unix.gettimeofday() in
	e -. s;;

let a = timeit phi 10090;;
let b = timeit phi_improved 10090;;