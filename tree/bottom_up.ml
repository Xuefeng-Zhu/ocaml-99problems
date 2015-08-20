type 'a mult_tree = T of 'a * 'a mult_tree list;;

let rec bottom_up (T(v, sub)) = 
	List.fold_left (fun acc t -> acc @ bottom_up t) [] sub @ [v];;

let t = T('a', [T('f',[T('g',[])]); T('c',[]);
            T('b',[T('d',[]); T('e',[])])]);;
let test = bottom_up t;;