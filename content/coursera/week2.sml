(* Dan Grossman, Coursera PL, HW2 Provided Code *)

(* if you use this function to compare two strings (returns true if the same
   string), then you avoid several of the functions in problem 1 having
   polymorphic types that may be confusing *)
fun same_string(s1 : string, s2 : string) =
    s1 = s2

(* put your solutions for problem 1 here *)


fun string_in_list (x: string,  y: string list) = 
  case y of 
    [] => false 
  | h::t => if same_string(h, x) then true else string_in_list(x, t);

fun remove_from_list(x : string, y : string list) = 
  case y of
    [] => []
  | h::t => if same_string(x, h) then t else h::remove_from_list(x, t);

fun all_except_option(x : string, y : string list) = 
  if string_in_list(x, y) then SOME(remove_from_list(x, y)) else NONE

fun get_substitutions1(x : string list list, s: string) = 
  case x of
    [] => []
  | h :: t => case h of
                [] => h
              | h1::t1 => case all_except_option(s, h1::t1) of 
                            NONE => get_substitutions1(t, s) 
                          | SOME(s') => s' @ get_substitutions1(t, s);

fun get_substitutions2(x : string list list, s: string) = 
  let fun helper(x' : string list list, acc : string list) = 
    case x' of 
      [] => acc
    | h :: t => case h of 
        [] => []
      | h1::t1 => case all_except_option(s, h1::t1) of 
                    NONE => helper(t, acc) 
                  | SOME(s') => helper(t, acc @ s')
  in
    helper(x, [])
  end;

type id = {first: string, middle: string, last: string}
fun append_records(r: id list, ys : id list) = case ys of [] => r | h::t => h :: append_records(r, t)

fun similar_names(sub : string list list, {first=x,middle=y,last=z}) = 
  let fun records_list_from_string_list(string_list : string list) = 
    case string_list of 
      [] => []
    | h :: t => append_records([{first=h, middle=y, last=z}], records_list_from_string_list(t))
  in
    append_records([{first=x, middle=y, last=z}],records_list_from_string_list(get_substitutions2(sub, x)))
  end;

(* Question 2 *)

(* you may assume that Num is always used with values 2, 3, ..., 10
   though it will not really come up *)
datatype suit = Clubs | Diamonds | Hearts | Spades
datatype rank = Jack | Queen | King | Ace | Num of int 
type card = suit * rank

datatype color = Red | Black;

exception IllegalMove;


fun card_color(card) = 
  case card of 
    (suit, rank) => case suit of  
      Clubs => Black
    | Diamonds => Red
    | Hearts => Red
    | Spades => Black;

fun card_value(card) = 
  case card of
    (suit, rank) => case rank of  
      Jack => 10
    | Queen => 10
    | King => 10
    | Ace => 11
    | Num(c) => c;

fun remove_card(cs : card list, c : card, e) = 
  case cs of 
    [] => raise e 
  | h :: t => case t of 
                h1::t1 => if h1 = c then h :: t1 else if c = h then t1 else remove_card(t, c, e)
              | [] => if h = c then [] else raise e;

val test7 = remove_card ([(Hearts, Ace)], (Hearts, Ace), IllegalMove) = [];

fun all_same_color(cs : card list) = 
  case cs of 
    [] => true
  | single:: [] => true
  | head::(neck::rest) => card_color(head) = card_color(neck) andalso all_same_color(rest);

fun sum_cards(cs : card list) = 
  let fun accumulate(acc : int, cs' : card list) = case cs' of [] => acc | h::t => accumulate(acc + card_value(h), t) in 
    accumulate(0, cs)
  end


fun score(held_cards : card list, goal : int) = 
  let val sum = sum_cards(held_cards) in
    if all_same_color(held_cards) then
      if sum > goal then (3 * (sum - goal)) div 2
      else ( goal - sum ) div 2
    else
      if sum > goal then  3 * (sum - goal) 
      else goal - sum 
  end

val test10 = score ([(Hearts, Num 2),(Clubs, Num 4)],10) = 4

datatype move = Discard of card | Draw;

fun officiate(card_list, move_list, goal) = (* return score *)
  let fun helper(state') = 
    case state' of 
      (_, held_cards, []) => score(held_cards, goal)
    | ([], held_cards, (Draw :: rest)) => score(held_cards, goal)
    | (h::t, held_cards, (Discard(c) :: rest)) => helper(remove_card(h::t, c, IllegalMove), [h] @ held_cards, rest)
    | (h::t, held_cards, (Draw :: rest)) => 
        if sum_cards(held_cards) > goal then score([h] @ held_cards, goal) 
        else helper(t, [h] @ held_cards, rest)
    | _ => score(card_list, goal)
  in 
    helper(card_list, [], move_list)
  end;

