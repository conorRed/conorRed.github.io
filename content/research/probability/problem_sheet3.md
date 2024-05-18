# Problems relating to Lecture 3

# Tutorial

1. In order for A and B to be independent $P( A \cap B) = P(A) \cdot P(B)$

$A \subset B$ A subset of A that is not equal to A (proper subset). 

So can A and B be independent if A is a subset of B?

$A \cap B = A$

$P(A \cap B) = P(A) \neq P(A)\cdot P(B)$

Because it's a proper subset the above will always hold. 

2.

* _Operational_ with probability p.
* The system is _operational_ if all three subsystem are operational.
* What is the probability that the three subsystems are operational?
* A: System 1 is operational
* B: System 2 is operational
* C: System 3 is operational
* $P(A \cap B \cap C)$: All systems are operational.
* B is a complicated system. There are many paths through it.
    * 1) For one of the parallel paths and then out it's p(parallel path)*P(end node)
    * 2) For the lower path P(lower path).
    * $P(B) = (P(P_1 \cup P_2 \cup P_3) \cap P(P_5)) \cup P(P_4)$
    * $P(B) = (1 - (1 - P(P_1))(1 - P(P_2))(1 - P(P_3)) \cap P(P_5)) \cup P(P_4)$
    * $P(B) = (1 - (1 - P(P_2) - P(P_1) + P(P_1)P(P_2)(1 - P(P_3)))$
    * Getting confused multiplying this out but you get the picture.

### How do we turn Unions into intersections?

* De Morgan's law.
* In the case of system reliability. P(system is up) if the path for the system is parallel components then you're
  looking at: $P(A \cup B \cup C)$ you can't immediately use independence.
* Either all the units fail (that is, A and B and C all fail) or at least one of them is working.
* If $U_f$ is the probability of failure.
* This means the event $P(A_f \cap B_f \cap C_f)$ is a complement to $P(A \cup B \cup C)$.
    * $1 - P(A_f \cap B_f \cap C_f) = P(A \cup B \cup C)$
    * $1 - P(A_f)P(B_f)P(C_f) = P(A \cup B \cup C)$
    * $1 - (1-P(A))(1-P(B))(1-P(C)) = P(A \cup B \cup C)$

3.


* Bo and Chi will play a best out of two match. 
* If one of them wins both games they play Al in another best out of two.
* Al retains the title if there's no second round (so no one plays him) and he can win one of the two games.


A: Bo beats Chi.

B: Chi beats Bo.

C: Al beats Chi.

D: Al beats Bo.

P(A) = 0.6.
P(D) = 0.5.
$P(C) = 0.7.$

All games are independent.


a.

i. The probability the second round will be required.

That is, the probability that either Bo beats Chi twice or vice versa.

$P(A_1 \cap A_2) = P(A)*P(A) = 0.6*0.6 = 0.36$ 

$P(B_1 \cap B_2) = P(B)*P(B) = (1 - P(A))(1 - P(A)) = 0.16$

$P((A_1 \cap A_2) \cup (B_1 \cap B_2)) = 0.36 + 0.16 = 0.52$

ii. Bo will win the first round

The probability that he wins any game is 0.6.

iii. Al will retain his championship.

A: There is a second round.
B: Al wins one of the two matches in the second round.
C: Al wins one match in two rounds.

$P(1 - A) = 0.48$

The probability of Al losing both matches to either Bo or Chi = $0.5^2 + 0.3^2 = 0.34$
$P(C) = (1 - 0.34) = 0.66$


$P(C|A) = \frac{P(C \cap A)}{P(A)} = \frac{P(C) * P(A)}{P(A)} = 0.66$

Oh! I think it matters who wins the first round.

P(Al retains if Bo won the first round) = 0.36*(1 - 0.5^2) = 0.27
P(Al retains if Chi won the first round) = 0.16*(1 - 0.3^2) = 0.1456

P(Al Retains) = 0.27 + 0.1456 + 0.48 = 0.8956

b.

i.
Given that the second round happened, the probability it was Bo is 0.6*0.6 = 0.36. But we know Bo won, so this must
change it somehow right?

It's Bayes' rule right? We see an effect: the second round has happened. Now what's the cause: that Bo won?

P(Bo won | second round) = P(Second round and Bo)/P(second round). 0.36/0.52 = 0.69.

ii.

P(Al retains | second round) = P(Second round and Al retains)/ P(second round) = 0.27 + 0.1456/0.52 = 0.79

c.

Given the second round, given only one game, what's the probability it was Bo who was the challenger.

A: Second round required.

B: Challenger won one game.

C: Bo was the challenger.

$P(C | A \cap B)$ = $P(C | B) = 0.8*0.69/0.8 = 0.69$

P(B) = Al lost once which is he lost to either Bo or Chi 0.5 + 0.3 = 0.8


# Problem Sheet

https://ocw.mit.edu/courses/6-041sc-probabilistic-systems-analysis-and-applied-probability-fall-2013/resources/mit6_041scf13_assn02

## 1.

a. What is the probability that the forecast was rain if it was winter? What about during summer?

It rained, what's the probability it was forecast to do so.

$P(F|R) = P(R|F)*P(F)/P(R) = 0.7*0.8/0.3*0.1+0.7*0.8 = 56/59$

during summer

$P(F|R) = P(R|F)*P(F)/P(R) = 0.2*0.8/0.8*0.1+0.2*0.8 = 0.6$

b.

A: Victor is carrying an umbrella.
B: The forecast is no rain.

Are these independent?

For A, he carries an umbrella when it's forecast rain. P(F) = 0.7. So if he sees the forecast, he's carrying an umbrella
with 0.7 probability in the winter. He also carries an umbrella when he misses the forecast. The probability of this is
0.5.

P(U| He's seen the forecast) = 0.7
P(U| He's missed the forecast) = 0.5
P(missed the forecast and carrying umbrella) = 0.5*0.2 = 0.1.
P(seen the forecast and carrying umbrella) = 0.7*0.8 = 0.56.

P(A) = 0.1 + 0.56 = 0.66

For B, the probability is just 0.3.

The forecast could still be no rain when victor misses it.
P(A|B) = 0.
Independence says that for two events A and B if B > 0 independence is equivalent to the condition

P(A|B) = P(A).

If B has happened, then our beliefs about A are unchanged in this example.

c. Victor is carrying an umbrella and it is not raining. What is the probability he saw the forecast?

MF: Misses the forecast

P(MF'|U \cap R')

If we've established above that P(U) = 0.66.
The total probability of no rain is P(F')P(R') + P(F)P(R') = 0.41 
This depends on season at the moment.

If it's winter

$P(U \cap R'| MF') = 0.41*0.7 = 0.287$
$P(U \cap R') = 0.8*0.41*0.7 + 0.2*0.5*0.41 = 0.2706$
$P(MF'|U \cap R') = 0.287*0.8/0.2706 = 0.848 $

**OK, still didn't get this one right, but sure look**.

2.

a.

A: the total of two rolls is 10.
B: At least one roll resulted in 5.
C: at least one roll resulted in 1.

Each roll is independent of the other.

i. Is event A independent of event B?

Sample space for two rolls has 25 outcomes. In 1 of these outcomes the result is 10.
So P(A) = 1/25.

There are 10 outcomes with a 5 in one of the pairs so P(B) = 10/25.

P(A) = P(A \cap B) = 1/25.

The event's do not meet the definition of independence, they are not independent.

ii. Is event A independent of event C?

P(A) = 1/25.

P(C) = 10/25.

P(A \cap C) = 0.

So once again, not independent.

b.

D: the total of two rolls is 7
E: the difference between the two roll outcomes is exactly 1.
F: the second roll resulted in a higher number than the first roll

i. Are events E and F independent?

For event E

(1, 2)
(2, 1), (2, 3)
(3, 2), (3, 4)
(4, 3), (4, 5)
(5, 4)

In 25 outcomes that's 8/25.

For event F

(1, 2), (1, 3), (1, 4), (1, 5)
(2, 3), (2, 4), (2, 5)
(3, 4), (3, 5)
(4, 5)

In 25 outcomes that's 10/25.

There intersection has 7 outcomes.

P(E)*P(F) = 0.128.
P(F|E) = 4/8 = 0.5 \neq P(F)

So, not independent.

ii. Are events E and F independent of given event D?

For event D

(2, 5)
(3, 4), (4, 3)
(5, 2)

4/25.

$P(E \cap F) = 4/25$
P(E|D) = 1/2.
P(F|D) = 2/4 = 1/2.
$P(E \cap F | D) = 0.25 \eq P(E|D)P(F|D)$

DONT forget about conditional test!

3.

Outcome is that a widget is selected at random.

Events
A:  Is new widget.
A': Is old widget.
C:  Is defective.
C': Is not defective

a. You choose either 2 old or 2 new widgets to order (with a 50/50 probability) what is the probability they're both
defective?

P(A) = 500/2000 = 3/4.
P(A') = 500/2000 = 1/4.

Assume that we've chosen we want two new widgets. What's the probability both of these are defective?

If you got new both times, the probability they're both defective is 
0.05 * 0.05 = 0.0025 because each trial is independent.

If you got old both times, the probability they're both defective is 
0.15 * 0.15 = 0.0.0225 because each trial is independent.

In any experiment getting a defective is 0.5*0.15 + 0.5*0.05 = 0.1.

In any two experiments then its 0.1*0.1 = 0.01


## 4.


A: Dog is lost in Forest A. 0.4.
B: Dog is lost in Forest B. 0.6.
F: Dog is found that day.
F': Dog not found that day.


a.

The goal is to determine to path with the max probability of finding the dog.

P(F|A) = 0.25
P(F|B) = 0.15

P(F \cap A) =  0.25*0.4 = 0.1
P(F \cap B) =  0.15*0.6 = 0.09

So on the first day he should look in A.

b. Given he's looked in forest A but didn't find his dog, whats the probability that the dog is in A?

Is it independent each day as to whether he'll find the dog?

$P(F' \cap A) = P(A)P(F'|A) = 0.4*0.75 = 0.3$

c.

Oscar has found his dog, what is the probability he went to forest A?

P(A) = 0.5
P(B) = 0.5
Bayes theorem

$P(A|F) = P(A)*P(F|A)/P(F)$

P(F) = 0.5*0.25 + 0.5*0.15 = 0.2

$P(A|F) = 0.5*0.25/0.2 = 0.625

FORGOT PRIOR PROBABILITY HERE! for forests.

d. Jesus, if the dog is not found by the Nth day it will die that evening with probability n/n+2.
If he looks in A for the first 2 days, whats the probability he finds a live dog on the second day?

First day he fails to find a dog and it's still alive.

D: The dog is dead. n/n+2.

The dog cannot go from one forest to another, but does it matter that it's in A here? I suppose if it's not he'll not
find it on the second day. You don't have to check it's alive either. It's implied in the second day.

**SOLUTION says conditional independence comes into play here, not too sure how**

Second day, finds a dog and it's alive

$P(F \cap D' \cap A) = 0.4*0.25*(1 - 1/3)*0.75 = 0.05$

Apparently not taking the day 2 dead probability into account.

## 5.

