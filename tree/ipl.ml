type 'a mult_tree = T of 'a * 'a mult_tree list;;

let ipl tree = 
	let rec aux len (T(_, sub)) =
		List.fold_left (fun acc t -> aux (len+1) t + acc) len sub in
	aux 0 tree;;

let t = T('a', [T('f',[T('g',[])]); T('c',[]);
            T('b',[T('d',[]); T('e',[])])]);;
let test = ipl t;;