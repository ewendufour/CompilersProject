open Imp
open Nimp

module VSet = Set.Make(String)

(* returns the set of variables accessed by the expression [e] *)
let rec use_expr e =
  match e with 
  | Cst _ | Bool _ -> VSet.empty
  | Var x -> VSet.singleton x 
  | Binop(_, e1, e2) -> VSet.union (use_expr e1) (use_expr e2)
  | Call(_, el) -> List.fold_left VSet.union VSet.empty (List.map use_expr el) 

let liveness fdef =
  let n = max_instr_list fdef.code in
  let live = Array.make (n+1) VSet.empty in
  (* returns the set of variable that live in entry to the numbered 
     instruction [i], assuming a set of live variables [lv_out] on 
     exit of [i] *)
  let rec lv_in_instr i lv_out =
    (* by case on the contents of i.instr *)
    match i.instr with
    | Expr e   
    | Putchar e -> let s = VSet.union lv_out (use_expr e) in
                    live.(i.nb) <- s;
                    s
    | Return e -> let s = (use_expr e) in   
                  live.(i.nb) <- s;
                  s
    | Set(x, e) -> let s = (VSet.union (use_expr e) (VSet.remove x lv_out)) in
                  live.(i.nb) <- s;
                  s
    | If(e, s1, s2) -> let s = VSet.union (use_expr e) (VSet.union (lv_in_list s1 lv_out) (lv_in_list s2 lv_out)) in
                      live.(i.nb) <- s;
                      s
    | While(e, s) -> let ue = use_expr e in
                     let tmp  = VSet.union ue (lv_in_list s lv_out) in
                     let s = VSet.union ue (lv_in_list s tmp) in
                     live.(i.nb) <- s;
                     s
    (* While ? two rounds are enough *)
  (* the same for a sequence, and records in [live] the live sets computed
     on entry to each analyzed instruction *)
  and lv_in_list l lv_out = 
    match l with
    | [] -> lv_out 
    | i :: l' -> let lv_out_i = lv_in_list l' lv_out in
                 lv_in_instr i lv_out_i  
  in
  let _ = lv_in_list fdef.code VSet.empty in
  (*let rec printer2 instrl = 
    List.iter printer3 instrl
    
  and printer3 = function 
    | {nb=i; instr = Putchar e} -> Printf.printf "instruction nb %d : Putchar()\n" i
    | {nb=i; instr = Set(s,e)} -> Printf.printf "instruction nb %d : set %s \n" i s
    | {nb = i; instr = If(e, s1, s2)} -> Printf.printf "instruction nb %d : if\n" i;
                          printer2 s1;
                          printer2 s2;
    | {nb = i; instr = While(e, s)} -> Printf.printf "instruction nb %d : while\n" i;
                          printer2 s;
    | {nb = i; instr = Return e} -> Printf.printf "instruction nb %d : return\n" i
    | {nb = i; instr = Expr e} -> Printf.printf "instruction nb %d : expr\n" i
  in *)
  (*printer2 fdef.code ;*)
  live

let liveness_intervals_from_liveness fdef =
  let live = liveness fdef in
  (* for each variable [x], create the smallest interval that contains all
     the numbers of instructions where [x] is live *)
  let live_inter = Hashtbl.create 16 in
  let cell_act intervals i set = 
    let update_interval i intervals var =
      try 
      let (beg, _) = Hashtbl.find intervals var in
      Hashtbl.replace intervals var (beg, i)
      with Not_found -> Hashtbl.add intervals var (i,i) 
    in
    VSet.iter (update_interval i intervals) set in
  Array.iteri (cell_act live_inter) live;
  (*let printer x (x1, x2) = Printf.printf "Liveness of %s : (%d, %d)\n" x x1 x2 in 
  Hashtbl.iter printer live_inter;*)
  let  unzip a (b, c) l = 
    (a,b,c) :: l 
  in
  Hashtbl.fold unzip live_inter []
