(**
   Translation from MiniML to Clj (closure conversion)
 *)

(* Module for sets of variables *)
module VSet = Set.Make(String)

let translate_program (p: Miniml.prog) =
  (* List of global function definitions *)
  let fdefs = ref [] in
  (* Generate a unique function name, for creating a Clj global function
     from a MiniML anonymous function *)
  let new_fname =
    let cpt = ref (-1) in
    fun () -> incr cpt; Printf.sprintf "fun_%i" !cpt
  in
  
  (* Translation of an expression
     Parameters:
     - e     : MiniML expression
     - bvars : set of bound variable names 
              (bound locally, i.e. not free in the full expression)

     Result: pair (e', l)
     - e' : Clj expression
     - l  : association list, maps each free variable to its index in the current closure
   *)
  let rec tr_expr (e: Miniml.expr) (bvars: VSet.t): Clj.expression * (string * int) list =
    (* association list, maps free variables to indices in the closure *)
    let cvars = ref [] in
    (* utility function, to be called for each new free variable:
       - records the variable in cvars
       - returns the index *)
    let new_cvar =
      let cpt = ref 0 in (* indices will start at 1 *)
      fun x -> incr cpt; cvars := (x, !cpt) :: !cvars; !cpt
    in
    
    (* Translation of a variable, extending the closure if needed *)
    let rec convert_var x bvars =
      Clj.(if VSet.mem x bvars
        then Name(x) (* if the variable is bound, keep its identifier *)
        else if List.mem_assoc x !cvars (* if the variable has already been recorded *)
        then CVar(List.assoc x !cvars) (* then take its index *)
        else CVar(new_cvar x))         (* otherwise, create and record a new index *)
        
    (* Translation of an expression (main loop)
       Returns the translated expression, and extend the closure as a side effect *)
    and crawl (e: Miniml.expr) bvars: Clj.expression = match e with
      | Int(n) ->
        Int(n)

      | Bool(b) ->
        Bool(b)
          
      | Var(x) ->
        Var(convert_var x bvars)
          
      | Bop(op, e1, e2) ->
        Binop(op, crawl e1 bvars, crawl e2 bvars)
      
      | Uop(op, e1) ->
        Unop(op, crawl e1 bvars)
      (* The range of 'x' in 'let x = e1 in e2' is the expression e2:
         add x in the bound variables when translating e2 *)
      | Let(x, e1, e2) ->
        Let(x, crawl e1 bvars, crawl e2 (VSet.add x bvars))
      
      | If(e1, e2, e3) ->
        If(crawl e1 bvars, crawl e2 bvars, crawl e3 bvars)
      (* Translation of an anonymous function *)
      | Fun(x, _, e) ->
         (* create a global function definition, and add it to fdefs
            (this implies creating a new name with new_fname) *)
         (* return an expression that builds a closure *)
        let printer = function
        | (s, i) -> Printf.printf "Variable libre %s position %d\n" s i in
        let new_name = new_fname () in
        Printf.printf "fun %s( \n" x;
        let e0, varlibres = tr_expr e (VSet.add x VSet.empty) in
        List.iter printer varlibres;
        Printf.printf ")\n" ;
        let nfdef = Clj.{name = new_name;
                         body = e0;
                         param = x} in
        fdefs := nfdef :: !fdefs;
        MkClj(new_name, List.map(fun (x0, _) -> Clj.Name x0) varlibres )

      | App(e1, e2) ->
        App(crawl e1 bvars, crawl e2 bvars)
      | _ ->
         failwith "todo"

    in
    (* Return the result of the translation, and the list of variables to be 
       put in the closure *)
    let te = crawl e bvars in
    te, !cvars

  in

  (* Translation of a full program:
     - start with an empty set of bound variables
     - collect the translated main expression and the global function definitions *)
  (* Remark: for the main expression, the set of free variables collected in cvars
     shall be empty (otherwise, the program has undefined variables!) *)
  let code, cvars = tr_expr p.code VSet.empty in
  assert (cvars = []);
  Clj.({
    functions = !fdefs;
    code = code;
  })
