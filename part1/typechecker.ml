open Miniml

exception Match_fail
exception Last
exception Not_comp

module Env = Map.Make(String)
(* typing environment for variables *)
type tenv = typ Env.t
(* typing environment for constructors *)
(* (args * parent_type) SMap  *)
type senv = (typ list * string) Env.t


let rec add_all_cstr_decl s cdl env=
  match cdl with
  | [] -> env
  | (ss, tl)::cdll -> add_all_cstr_decl s cdll (Env.add ss (tl, s) env) 

let rec add_all_types tdl env=
  match tdl with 
  | [] -> env
  | (s,cdl)::tdll -> add_all_types tdll (add_all_cstr_decl s cdl env)

let typ_expr (e: expr) (senv: senv) =
  let rec typ (e: expr) (tenv: tenv) = match e with
    | Int _ -> TInt
    | Bool _ -> TBool
    | Bop(op, e1, e2) ->
      begin match op, typ e1 tenv, typ e2 tenv with
        | (Add | Sub | Mul | Div | Rem | Lsl | Lsr), TInt, TInt -> TInt
        | (Lt  | Le  | Gt  | Ge), TInt, TInt -> TBool
        | (Or | And ), TBool, TBool -> TBool 
        | (Eq | Neq) , t1, t2 when t1 = t2 -> TBool
        | Pair, t1, t2 -> TPair(t1, t2)
        | _ -> failwith "type error: binop"
      end
    | Uop(op, e) ->
      begin match op, typ e tenv with
        | Not, TBool -> TBool
        | Minus, TInt -> TInt
        | Fst, TPair(t, _) -> t
        | Snd, TPair(_, t) -> t
        | _ -> failwith "type error: unop" 
      end
    | Var(x) -> Env.find x tenv
    | Let(x, e1, e2) ->
      let t1 = typ e1 tenv in
      typ e2 (Env.add x t1 tenv)
    | If(c, e1, e2) ->
      begin match typ c tenv, typ e1 tenv, typ e2 tenv with
        | TBool, t1, t2 when t1 = t2 -> t1
        | _ -> failwith "type error: if"
      end
    | App(e1, e2) ->
      begin match typ e1 tenv, typ e2 tenv with
        | TFun(ta, t1), t2 when ta = t2 -> t1
        | _ -> failwith "type error: application"
      end
    | Fun(x, t, e) ->
      TFun(t, typ e (Env.add x t tenv))
    | Fix(x, t, e) ->
      if typ e (Env.add x t tenv) = t then
        t
      else
        failwith "type error: fix"
    | Cstr(s, el) -> 
      let t = try
      let typetocheck =  Env.find s senv in 
      if compatible el (fst typetocheck) tenv then TStruct(snd typetocheck)
      else failwith (Printf.sprintf "wrong arguments for constructor %s" s)
      with Not_found -> failwith "Constructor was never declared"
      in t
    | Match(e, cl) -> verify_case_list (typ e tenv) cl tenv
     

  and verify_case_list te cl tenv =
    match cl with 
    | [] -> raise Last
    | c :: cll -> 
        let ct = verify_case  c te tenv in 
        let t =try if (verify_case_list te cll tenv) = ct then ct 
        else failwith "unconsistent type in pattern matching cases"
      with Last -> ct
    in t

  and verify_case (p,e) pt tenv =
    let t = 
    try typ e (verify_pattern p pt tenv) 
    with Match_fail -> failwith "match typing problem"
    in t

  and verify_pattern p pt tenv = 
    match p with
    | PVar(s) -> (Env.add s pt tenv)
    | PCstr(s, pl) -> 
      let t  = try
      let (tl, cs) = Env.find s senv in
        if (TStruct(cs) = pt) then list_pattern pl tl tenv
        else raise Match_fail 
        with Not_found -> raise Match_fail
    in t

  and list_pattern pl tl tenv =
    match pl,tl with
    | [], [] -> tenv
    | p::pll, t::tll -> list_pattern pll tll (verify_pattern p t tenv)
    | _ -> raise Match_fail

  and compatible el tl tenv =
    match el, tl with
    |e::ell, t::tll -> 
      if typ e tenv = t then compatible ell tll tenv
      else false
    |[], [] -> true
    | _ -> false
  in
  typ e Env.empty

let typ_prog p =
  let senv = add_all_types p.typs Env.empty (* replace with an actual initialization! *) in
  typ_expr p.code senv
