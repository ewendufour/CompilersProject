let f (x:int) (y:int) (z:int) = x * y + z in
let g (x:int) = f 6 x  in
let t =g 7  in
t 8

(* 
Fun x -> Fun y -> Fun z -> x * y + z  

fv(1) : {}
fv(2) : {x}
fv(3) : {x, y}
*)

