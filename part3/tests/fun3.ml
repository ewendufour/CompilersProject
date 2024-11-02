let g (x:int) = x in

let rec f (z:int):int = 
  if z = 0 then 3
  else g (f (z-1)) 
in

f 5
(* 
Fun x -> Fun y -> Fun z -> x * y + z  

fv(1) : {}
fv(2) : {x}
fv(3) : {x, y}
*)

