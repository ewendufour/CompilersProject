let f (x:int) (y:int) (z:int) = x * y + z in
let g = f 6  in
let t =g 7 in
t 8

(* Fun x -> Fun y -> x * y *)