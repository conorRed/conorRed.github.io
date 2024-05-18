(* Dan Grossman, Coursera PL, HW2 Provided Code *)

(* ----------------------------------
   Section 1
   ----------------------------------*)

(* if you use this function to compare two strings (returns true if the same
   string), then you avoid several of the functions in problem 1 having
   polymorphic types that may be confusing *)
fun same_string(s1 : string, s2 : string) =
    s1 = s2

(* Problem 1 *)
fun all_except_option (str, strs) =
    let fun check_str (hdStrs, tlStrs) =
            case tlStrs of 
                [] => NONE
                | x::xs' => if same_string(x, str)
                            then SOME (hdStrs@xs')
                            else check_str(x::hdStrs, xs')
    in check_str([], strs) end


(* Problem 2 *)
fun get_substitutions1 (str_list, str) =
    case str_list of
        [] => []
        | x::xs' => case all_except_option(str, x) of
                        NONE => get_substitutions1(xs', str)
                        | SOME i => i @ get_substitutions1(xs',str)


(* Problem 3 *)
fun get_substitutions2 (str_list, str) =
    let fun get_strs(strs, tl_list) =
        case tl_list of
            [] => strs
            | x::xs' => case all_except_option(str, x) of
                        NONE => get_strs(strs, xs')
                        | SOME i => get_strs(strs@i, xs')
    in get_strs([], str_list) end


(* Problem 4 *)
fun similar_names (str_list, {first: string, middle:string, last:string}) =
    let fun sub_name(names) =
        case names of 
        [] => []
        | x::xs' => {first=x, last=last, middle=middle} :: sub_name(xs')
    in 
        sub_name(first::get_substitutions2(str_list, first))
    end


(* ----------------------------------
   Section 2
   ----------------------------------*)

(* you may assume that Num is always used with values 2, 3, ..., 10
   though it will not really come up *)
datatype suit = Clubs | Diamonds | Hearts | Spades
datatype rank = Jack | Queen | King | Ace | Num of int 
type card = suit * rank

datatype color = Red | Black
datatype move = Discard of card | Draw 

exception IllegalMove

(* Problem 5 *)
fun card_color (s: suit, r: rank) =
    case s of
        Clubs => Black
        | Spades => Black
        | Diamonds => Red
        | Hearts => Red


(* Problem 6 *)
fun card_value(s: suit, r: rank) =
    case r of 
        Num int => int
        | Ace => 11
        | Jack => 10
        | Queen => 10
        | King => 10


(* Problem 7 *)
fun remove_card (cards: card list, card:card, ex) =
    let fun check_cards (old_cards, new_cards) =
        case new_cards of 
            [] => raise ex
            | x::xs' => if x = card
                        then old_cards@xs'
                        else check_cards(x::old_cards, xs')
    in check_cards([], cards) end


(* Problem 8 *)
fun all_same_color (cards: card list) = 
    case cards of
        [] => true
        | x::xs' => case xs' of
                        [] => true
                        | y::ys' => if card_color(x) = card_color(y)
                                    then all_same_color(xs')
                                    else false


(* Problem 9 *)
fun sum_cards (cards: card list) =
    let fun check_cards (cards: card list, sum) =
        case cards of
            [] => sum
            | x::xs' => check_cards(xs', card_value(x)+sum)
    in check_cards(cards, 0) end


(* Problem 10 *)
fun score(cards: card list, goal) =
    let val sum = sum_cards(cards)
        val score = if (sum > goal)
                    then 3 * (sum - goal)
                    else goal - sum
    in if all_same_color(cards)
        then score div 2
        else score 
    end


(* Problem 11 *)
fun officiate (cards: card list, moves: move list, goal) =
    let fun play (held_cards: card list, card_list: card list, new_moves: move list) =
        case new_moves of
            [] => score(held_cards, goal)
            | x::xs' => case x of
                        Discard card => play(remove_card (held_cards, card, IllegalMove), card_list, xs')
                        | Draw => case card_list of 
                                [] => score(held_cards, goal)
                                | y::ys' => let val new_held = y::held_cards
                                            in if sum_cards(new_held) > goal
                                                then score(new_held, goal)
                                                else play(new_held, ys', xs')
                                            end
    in play([], cards, moves) end