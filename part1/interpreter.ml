open Miniml

exception Match_fail

module Env = Map.Make(String)
type value =
  | VInt of int
  | VBool of bool
  | VClos of string * expr * env
  | VFix of expr * string * value * env 
  | VCstr of string * value list
  | VPair of value * value
and env = value Env.t

open Printf
let rec print_value = function
  | VInt n -> printf "%d\n" n
  | VBool b -> printf "%b\n" b
  | VClos _ -> printf "<fun>\n"
  | VFix(Fun _, _, _, _) -> printf "<fun>\n"
  | VFix _ -> failwith "fix value error\n"
  | VCstr(c, vlist) -> printf "%s(" c; print_vlist vlist; printf ")\n"
  | VPair(x, y) -> printf "("; print_value x; printf ","; print_value y; printf")\n"
and print_vlist = function
  | [] -> ()
  | [v] -> print_value v
  | v::vlist -> print_value v; printf ", "; print_vlist vlist

let rec eval e env = match e with
  | Int n -> VInt n
  | Bool b -> VBool b
  | Var x -> Env.find x env
  | Let(x, e1, e2) -> let v1 = eval e1 env in eval e2 @@ Env.add x v1 env
  | Bop(op, e1, e2) ->
     begin match op, eval e1 env, eval e2 env with
       | Add,  VInt n1,  VInt n2  -> VInt  (n1 + n2)
       | Sub,  VInt n1,  VInt n2  -> VInt  (n1 - n2)
       | Mul,  VInt n1,  VInt n2  -> VInt  (n1 * n2)
       | Div,  VInt n1,  VInt n2  -> VInt  (n1 / n2)
       | Rem,  VInt n1,  VInt n2  -> VInt  (n1 mod n2)
       | Lsl,  VInt n1,  VInt n2  -> VInt  (n1 lsl n2)
       | Lsr,  VInt n1,  VInt n2  -> VInt  (n1 lsr n2)
       | Or,   VBool b1, VBool b2 -> VBool (b1 || b2)
       | And,  VBool b1, VBool b2 -> VBool (b1 && b2)
       | Lt,   VInt n1,  VInt n2  -> VBool (n1 < n2)
       | Le,   VInt n1,  VInt n2  -> VBool (n1 <= n2)
       | Gt,   VInt n1,  VInt n2  -> VBool (n1 > n2)
       | Ge,   VInt n1,  VInt n2  -> VBool (n1 >= n2)
       | Neq,  v1,       v2       -> VBool (v1 <> v2)
       | Eq,   v1,       v2       -> VBool (v1 = v2)
       | Pair, v1,       v2       -> VPair (v1, v2)
       | _ -> failwith "unauthorized binary operation"
     end
  | If(c, e1, e2) -> 
     begin match eval c env with
       | VBool b -> if b then eval e1 env else eval e2 env
       | _ -> failwith "unauthorized operation"
     end
  | App(e1, e2) ->
     let x, e, env' = match force @@ eval e1 env with
       | VClos(x, e, env) -> x, e, env
       | _ -> failwith "unauthorized operation"
     in
     let v2 = eval e2 env in 
     eval e (Env.add x v2 env')
  | Fun(x, _, e) -> VClos(x, e, env)
  | Fix(x, _, e) -> let rec v = VFix(e, x, v, env) in v
  | Uop(op, e1) ->
      begin match op, eval e1 env with
      | Not, VBool b -> VBool(not b)
      | Minus, VInt i -> VInt(-i)
      | Fst, VPair(x, _) -> x
      | Snd, VPair(_, y)-> y
      | _ -> failwith "unothorized unary operation"
      end
  | Cstr(s, el) -> VCstr(s, List.map (lave env) el)
  | Match(e, cl) -> caser (eval e env) cl env

and force v = match v with
  | VFix(e, x, v, env) -> force (eval e @@ Env.add x v env)
  | v -> v
and lave env e = eval e env 

and caser v cl env =
  match cl with 
  | [] -> failwith "No compatible case"
  | (p,e)::cll -> 
    try 
      eval e (pattern_matcher v p env) 
    with 
    | Match_fail -> caser v cll env 

and pattern_matcher v p env=
  match v, p with
  | VCstr(t1, vl), PCstr(t2, pl) -> 
    if t1 = t2 then list_match vl pl env 
    else raise Match_fail
  | _  ,PVar(s) -> Env.add s v env 
  | _ -> raise Match_fail 

and list_match vl pl env =
  match vl, pl with 
  | v::vll, p::pll -> list_match vll pll (pattern_matcher v p env)
  | [], [] -> env
  | _ -> raise Match_fail
let eval_prog p = eval p.code Env.empty
