let p  = 6 in
let f (x:int) (y:int) (z:int) = x+y+z+p in
let g (z:int) = f (f 12 2 4) 2 z in
g 10