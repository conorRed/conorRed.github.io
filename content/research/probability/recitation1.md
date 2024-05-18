# Recitation 1

1. Prove $P((A \cap B^c) \cup (A^c \cap B)) = P(A) + P(B) - 2P(A \cap B)$

$P((A \cup B^c) \cup (A^c \cap B)) =  P(A \cup B^c) + P(A^c \cap B)$

$P(B) = P(A^c \cap B) + P(B \cap A)$

$P(A) = P(B^c \cap A) + P(B \cap A)$

$P(A \cup B^c) + P(A^c \cap B) = P(B) -  P(B \cap A) + P(A) - P(B \cap A)$

$= P(B) + P(A) - 2P(A \cap B)$

2. 

$P(G) = 0.6, P(C) = 0.7, P(G \cap C) = 0.4; P(G^c \cap C^c) = ?$

$1 - P(G \cup C) = P(G^c \cap C^c) = 1 - 1.3 - 0.4 = 0.1$

3.

Could think of it as the 'cream cheese' model. If we uniformly split up the area but have more cream cheese on the even
faces.

Probabilistic model: Specifying a probability law on a defined sample space.

* We've to construct the sample space and using the probability axioms assign numerical values.
* We have a single roll.
* $\Omega = {1, 2, 3, 4, 5, 6}$
* We have a definite mass to spread around the sample space. If a fair die has 1/6 for each outcome. We now have 1/12
  for any of {1}, {3}, {5} and 1/4 for {2}, {4}, {6}.
* The disjoint of all the probabilities adds to 1.
* P({1}) = 1/12, P({2}) = 1/4 and the P({3}) = 1/12, through addition P({1, 2, 3}) = 5/12.

Interesting, the answer seems to take a different approach but is very close. 

* It says that c is the probability of an odd face. Then we have 3 c's and 3 2c's. So we've a total 9c = 1. Therefore c =
  1/9. 
* P({1, 2, 3}) = c + 2c + c = 4/9 which is close to what I had.
* 1/4 is not twice 1/12. So what I did was take it evenly spread (1/6) and then take half of 1/6 of each of the odd
  numbers and give it to the even.
* Yeah, this way is better. If we think of the mass units as blocks. Give you to each outcome, then give an extra to
  half the outcomes. You then have 6 + 3 blocks given out and you can consider that a discrete distribution so each
  block is 1/n probability.

4.

* The sample space is a pair of delays between 0 and 1.
* First to arrive waits 15 min.
* If we consider each delay equally likely. There is a 1/n probability of a given delay.
* Given one of them receives some delay. What's the chances the other receives a delay within 15 minutes of that.
* A point can't have positive probability.
* Must operate on an interval.
* Possible outcomes: [0, 1].
* It doesn't really matter if the first person to arrive is delayed.
* Given the first person arrives. Then the next person must arrive in less that 15 min. What's the probability of this.
* 
