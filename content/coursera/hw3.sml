fun only_capitals(sl) = List.filter (fn s => Char.isUpper(String.sub(s, 0))) sl 

fun longest_string1(str_list) = 
  case str_list of 
    [] => "" 
  | h::t => List.foldl (fn(sl, acc) => if String.size sl > String.size acc
                                       then sl else acc) h t
fun longest_string2(str_list) =
  case str_list of 
    [] => "" 
  | h::t => List.foldl (fn(sl, acc) => if String.size sl > String.size acc 
                                       orelse String.size sl = String.size acc
                                       then sl else acc) h t

val longest_string_helper = fn comparator => fn str_list => 
  case str_list of 
    [] => "" 
  | h::t => List.foldl (fn(sl, acc) => if comparator(String.size sl, String.size acc) 
                                       then sl else acc) h t

val longest_string3 = longest_string_helper (fn(x, y) => x > y )
val longest_string4 = longest_string_helper (fn(x, y) => y < x orelse y = x)
val longest_capitalized = fn str_list => (longest_string1 o only_capitals) str_list

(** dont need to add an anonymous function here **)
val rev_string = fn str => (String.implode o (List.rev o String.explode)) str


exception NoAnswer
datatype pattern = Wildcard
		 | Variable of string
		 | UnitP
		 | ConstP of int
		 | TupleP of pattern list
		 | ConstructorP of string * pattern

datatype valu = Const of int
	      | Unit
	      | Tuple of valu list
	      | Constructor of string * valu

fun g f1 f2 p =
    let 
	val r = g f1 f2 
    in
	case p of
	    Wildcard          => f1 ()
	  | Variable x        => f2 x
	  | TupleP ps         => List.foldl (fn (p,i) => (r p) + i) 0 ps
	  | ConstructorP(_,p) => r p
	  | _                 => 0
    end

fun check_pat(p) = 
  let fun variables_as_list(p) = 
    case p of
      Variable x  => [x]
    | TupleP ps   => List.foldl (fn (p,i) => (variables_as_list p) @ i) [] ps
    | ConstructorP(s, p) => variables_as_list p
    | _           => []
  in 
    let fun has_repeats(str_lst) = 
      case str_lst of
       [] => true
     | h::t => if List.exists (fn x => h = x) t then false else has_repeats(t)
    in
      (has_repeats o variables_as_list) p
    end
  end

val count_wildcards = fn p => g (fn () => 1) (fn(x) => 0) p
(** Unnecessary wrapping here**)
val count_wild_and_variable_lengths  = fn p => g (fn () => 1) (fn(x) => String.size x) p
val count_some_var = fn (str, p) => g (fn () => 0) (fn(x) => if x = str then 1
                                                             else 0 ) p
fun all_answer_helper f [] acc = SOME(acc)
  | all_answer_helper f (h::t) acc = case f(h) of
                                SOME(v) => all_answer_helper f t (acc @ v)
                              | NONE => NONE
fun all_answers f [] = NONE
  | all_answers f (h::t) = all_answer_helper f (h::t) []


fun match (_, Wildcard) = SOME []
  | match (v, Variable(s)) = SOME [(s, v)]
  | match (Unit,  UnitP) = SOME []
  | match (Const(i), ConstP(cp)) = if i = cp then SOME [] else NONE
  | match (Tuple(vs), TupleP(ps)) = if List.length vs = List.length ps then
                                    all_answers match (ListPair.zip (vs, ps)) 
                                    else NONE
  | match (Constructor(s1, v), ConstructorP(s2, p)) = if (s1 = s2) then (match (v, p)) else NONE
  | match _ = NONE


fun first_answer f [] = raise NoAnswer
  | first_answer f (h::t) = case f(h) of 
                            SOME(v) => v
                          | NONE => first_answer f t

val first_match = fn(v : valu) => fn (plist : pattern list) => 
  let val first_answer_fixed = fn p => match(v, p) in
    SOME(first_answer first_answer_fixed plist) handle NoAnswer => NONE
  end

case [(4,19), (1,20), (74,75)] of 
  x::y => x;
