fun all_except_option (str, sl) =
  case sl of
    [] => NONE
    | x::xs => case same_string(str, x) of
                 true => SOME(xs)
                 | false => case all_except_option(str, xs) of
                              NONE => NONE
                             | SOME y => SOME(x::y)

val all_except_option_test_1 = all_except_option ("string", ["string"]) = SOME []
val all_except_option_test_2 = all_except_option ("string", ["foo"]) = NONE
val all_except_option_test_3 = all_except_option ("foo", ["foo", "bar", "baz"]) = SOME ["bar", "baz"]
val all_except_option_test_4 = all_except_option ("bar", ["foo", "bar", "baz"]) = SOME ["foo", "baz"]
val all_except_option_test_5 = all_except_option ("bar", ["foo", "baz", "bar"]) = SOME ["foo", "baz"]

fun get_substitutions1 (subs, s) =
  case subs of
    [] => []
    | (x :: xs) => case all_except_option(s, x) of 
                     NONE => get_substitutions1(xs, s)
                     | SOME(ys) => ys @ get_substitutions1(xs, s) 
                                                    

val get_substitutions1_test_1 = get_substitutions1 ([["foo"],["there"]], "foo") = []
val get_substitutions1_test_2 = get_substitutions1 ([["Fred","Fredrick"],["Freddie","Fred","F"]], "Fred") = ["Fredrick", "Freddie", "F"]
val get_substitutions1_test_3 = get_substitutions1 ([["Fred","Fredrick"],["Elizabeth","Betty"],["Freddie","Fred","F"]], "Fred") = ["Fredrick","Freddie","F"]
val get_substitutions1_test_4 = get_substitutions1 ([["Fred","Fredrick"],["Elizabeth","Betty","Fred"],["Freddie","Fred","F"]], "Fred") = ["Fredrick","Elizabeth","Betty","Freddie","F"]

fun get_substitutions2 (subs, s) =
  let fun aux(subs, s, acc) =
    case subs of
      [] => acc
      | (x :: xs) => case all_except_option(s, x) of 
                       NONE => aux(xs, s, acc)
                       | SOME(ys) =>  aux(xs, s, acc @ ys)
  in
    aux(subs, s, [])
  end

val get_substitutions2_test_1 = get_substitutions2 ([["foo"],["there"]], "foo") = []
val get_substitutions2_test_2 = get_substitutions2 ([["Fred","Fredrick"],["Freddie","Fred","F"]], "Fred") = ["Fredrick", "Freddie", "F"]
val get_substitutions2_test_3 = get_substitutions2 ([["Fred","Fredrick"],["Elizabeth","Betty"],["Freddie","Fred","F"]], "Fred") = ["Fredrick","Freddie","F"]
val get_substitutions2_test_4 = get_substitutions2 ([["Fred","Fredrick"],["Elizabeth","Betty","Fred"],["Freddie","Fred","F"]], "Fred") = ["Fredrick","Elizabeth","Betty","Freddie","F"]

type Name = {first:string, middle:string, last:string}
fun similar_names (subs, name) =
  let fun aux(subs, acc) =
    case subs of
      [] => acc
      | (x::xs) => aux(xs, acc @ [{first=x, middle=(#middle name), last=(#last name)}]) 
  in
    aux(get_substitutions2(subs, #first name), [name])
  end

val similar_names_test_1 = similar_names ([["Fred","Fredrick"],["Elizabeth","Betty"],["Freddie","Fred","F"]], {first="Fred", middle="W", last="Smith"}) =
	    [{first="Fred", last="Smith", middle="W"},
         {first="Fredrick", last="Smith", middle="W"},
	     {first="Freddie", last="Smith", middle="W"},
             {first="F", last="Smith", middle="W"}]

		2)
fun card_color (suit, rank) = 
  case suit of
    Spades => Black
    | Clubs => Black
    | Diamonds => Red
    | Hearts => Red

val card_color_test_1 = card_color (Clubs, Num 2) = Black
val card_color_test_2 = card_color (Spades, Num 2) = Black
val card_color_test_3 = card_color (Diamonds, Num 2) = Red
val card_color_test_4 = card_color (Hearts, Num 2) = Red

fun card_value (suit, rank) =
  case rank of
    Jack => 10
    | Queen => 10
    | King => 10
    | Ace => 11
    | Num i => i

val card_value_test_1 = card_value (Clubs, Num 2) = 2
val card_value_test_2 = card_value (Clubs, Ace) = 11
val card_value_test_3 = card_value (Clubs, King) = 10

fun remove_card(cs, c, e) =
  case cs of
    [] => raise e
    | x::xs => case c = x of
                 true => xs
                 | false => case remove_card(xs, c, e) of
                              [] => [x]
                              | y::ys => x::y::ys 

val remove_card_test_1 = remove_card ([(Hearts, Ace)], (Hearts, Ace), IllegalMove) = []
val remove_card_test_2 = remove_card ([(Hearts, Ace), (Diamonds, Num 3)], (Hearts, Ace), IllegalMove) = [(Diamonds, Num 3)]
val remove_card_test_3 = remove_card ([(Diamonds, Num 3), (Hearts, Ace)], (Hearts, Ace), IllegalMove) = [(Diamonds, Num 3)]
val remove_card_test_4 = ((remove_card ([(Hearts, Num 2)], (Hearts, Ace), IllegalMove); false) handle IllegalMove => true)

fun all_same_color (cs) =
  case cs of
    [] => true
    | a::[] => true
    | a::b::tail => case card_color(a) = card_color(b) of
                    true => all_same_color(b::tail)
                    | false => false

val all_same_color_test_1 = all_same_color [(Hearts, Ace), (Hearts, Ace)] = true
val all_same_color_test_2 = all_same_color [(Hearts, Ace), (Hearts, Ace), (Clubs, Ace)] = false
val all_same_color_test_3 = all_same_color [] = true

fun sum_cards (cs) =
  let fun aux (cs, acc) =
    case cs of
      [] => acc
      | x::xs => aux(xs, acc + card_value(x))
  in
    aux(cs, 0)
  end

val sum_cards_test_1 = sum_cards [(Clubs, Num 2),(Clubs, Num 2)] = 4
val sum_cards_test_2 = sum_cards [(Clubs, Ace),(Clubs, Num 2)] = 13
val sum_cards_test_3 = sum_cards [] = 0
val sum_cards_test_4 = sum_cards [(Clubs,Ace),(Spades,Ace),(Clubs,Ace),(Spades,Ace)]


fun score (cs, goal) = 
  let fun pre_score (cs) =
    case (sum_cards(cs), goal) of
      (sum, goal) => case sum > goal of
                       true => (sum - goal) * 3
                       | false => goal - sum
  in
    case all_same_color(cs) of
      true => pre_score(cs) div 2
      | false => pre_score(cs)
  end

val score_test_1 = score ([(Hearts, Num 2),(Clubs, Num 4)],10) = 4
val score_test_2 = score ([(Hearts, Num 2),(Clubs, Num 4)],2) = 12
val score_test_3 = score ([(Hearts, Num 2),(Clubs, Num 4)],6) = 0
val score_test_4 = score ([(Clubs,Ace),(Spades,Ace),(Clubs,Ace),(Spades,Ace)],42) = 3
val score_test_5 = score ([],6) = 3

fun officiate (cs, ms, goal) =
  let fun process_moves(cs, ms, held) =
      case ms of
        [] => held
        | m::ms_tail => case m of
                          Discard card => process_moves(cs, ms_tail, remove_card(held, card, IllegalMove))
                          | Draw => case cs of
                                      [] => held
                                      | c::_ => case sum_cards(c::held) > goal of
                                                  true => c::held
                                                  | false => process_moves(remove_card(cs, c, IllegalMove), ms_tail, c::held)
                                                       
                                                       
  in
    score(process_moves(cs, ms, []), goal) 
  end

val officiate_test_1 = officiate ([(Hearts, Num 2),(Clubs, Num 4)],[Draw], 15) = 6
val officiate_test_2 = officiate ([(Hearts, Num 2),(Clubs, Num 4),(Clubs, Ace)], [Draw, Draw, Draw], 15)
val officiate_test_3 = officiate ([(Clubs,Ace),(Spades,Ace),(Clubs,Ace),(Spades,Ace)], [Draw, Draw, Draw, Draw, Draw], 42) = 3
val officiate_test_4 = ((officiate([(Clubs,Jack),(Spades,Num(8))], [Draw,Discard(Hearts,Jack)], 42); false) handle IllegalMove => true)
