let rand_select list n = 
	let length = (List.length list) in
	let rec aux count = 
		if count == 0 then []
		else (List.nth list (Random.int length)) :: aux (count-1)
	in aux n;;

let test = rand_select ["a";"b";"c";"d";"e";"f";"g";"h"] 3;;