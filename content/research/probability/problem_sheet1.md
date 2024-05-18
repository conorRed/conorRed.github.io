# Problem Sheet 1

1.

To occur is just to be in the set.

a. $A \cup B \cup C$

b. At most one of the events occur: $(A' ∪ (A ∩ B) ∪ (A ∩ C)) \cup (B' ∪ (B ∩ A) ∪ (B ∩ C)) \cup (C' ∪ (C ∩ A) ∪ (C ∩ B))$

c. None of the events occur: $A^c \cap B^c \cap C^c$

d. All three events occur: $A \cap B \cap C$

e. Exactly one event occurs: $(A \cap B^c \cap C^c) \cup (A^c \cap B \cap C^c) \cup (A^c \cap B^c \cap C)$

f. A and B occur, but not C: $A \cap B \cap C^c$

g. Either A occurs or, if not then B also does not occur: $A^c \cap B^c$

Think you need to interpret unions as 'or's' and intersections as 'and's' not to sure how to interpret if's though.

2.

Sequential model.

$\Omega = \{{HHH}, {HHT}, {HTH}, {THH}, {TTT}, {TTH}, {THT}, {HTT}\}$

a. P(\{HHH\}) = 1/8.
b. 1/8.
c. 3/8.
d. 1/2.

3.

Sample space is all the pairs of numbers. 
Each outcome in the sample space is proportional to itself.

$P((x, y)) = C(x, y)*P(x, y)$

If the sum is high, it has a higher probability.
So two 4's has the highest proportional probability. If all pairs are equally likely. Then (4, 4) is 4 times more likely
than (1, 1).

We know what the outcome space is. How do we assign a probability law to it?

* If c is the evenly distributed probability. Then each probability is now scaled by c*(x+y).
* We have 32 possible outcomes. P(1, 1) is 2c, (1, 2) is 3c, (1, 3) is 4c and (1, 4) is 5c.
* P(2, 1) is 3c, (2,2) is 4c then 5c up to 6c. 
* For 3 as the first roll we've 4c up to 7c.
* Fro 4 as the first roll we've 5c up to 8c.
* Can we now assign a probability to all outcomes?
    * There are 8 ways for each number to appear.
    * If one appears
* c would be 1/32 but now it's a function of the sum so P(x,y) = 1/32 * (x+y).
* Sums: 2, 3(2), 4(3), 5(4), 6(3), 7(2), 8.
* P(x + y being even) = 8/21
* If I could write this out it might be easier.

| x | y | + | p          |
|---|---|---|------------|
| 1 | 1 | 2 | 2c         |
| 1 | 2 | 3 | 3c         |
| 1 | 3 | 4 | 4c         |
| 1 | 4 | 5 | 5c         |
| 2 | 1 | 3 | 3c         |
| 2 | 2 | 4 | 4c         |
| 2 | 3 | 5 | 5c         |
| 2 | 4 | 6 | 6c         |
| 3 | 2 | 4 | 4c         |
| 3 | 3 | 5 | 5c         |
| 3 | 4 | 6 | 6c         |
| 3 | 4 | 7 | 7c         |
| 4 | 1 | 5 | 5c         |
| 4 | 2 | 6 | 6c         |
| 4 | 3 | 7 | 7c         |
| 4 | 4 | 8 | 8c         |
|   |   |   | total: 80c |

a. P(All outcomes) = 80 p, so p is 1/80

P(even) is 2p + 4p + 4p + 6p + 4p + 6p + 6p + 8p = 40p = 1/2.

b. P(2 then 3) = 5c + 5c = 10*1/80 = 1/8.

4.
 
Assume probability of event is equal to area.

Alice and Bob choose a number at random between 0 and 2. 

Events:
A: The magnitude of the difference of the two numbers is > 1/3
B: At least one of the numbers is greater than 1/3.
C: The two numbers are equal.
D: Alice's number is greater than 1/3.

Can think of a unit square with Alice on one axis and Bob on the other.

Find P(B)

This would be the area of 1/3*2 + 1/3*2 = 4/3/2 =  0.65.

Find P(C)

Is this not trying to define a point in a continues space?

Find $P(A \cap D)$:

P(D) = ((2 - 0.3)/ 2) = 0.85
* For the difference of a third. When one person gets a number, the square now changes as a sample space.
* The possible values now exist in an area 1/3 either side of the chosen value.
* So 2 - 2*1/3 = 1.4 of the space is free.
* P(A) = 0.7

If Alice picks a number greater than 1/3. Then the next number must +- 1/3 Alice's number. How do we define this space
in our unit square? It's a region drawn either side of what alice picks.
Say, if Alice picked 1/4. Then, The space

Fucking hard to visualise.

5.

a.

If probability is proportional to area.

Board (or sample space) is $100\pi$.

50 points occupies an area of $1\pi$. So 1/100.

b.

$\frac{9\pi - 1\pi}{100\pi} = 0.08$

c.

John's an idiot. More likely to throw in right half of the board, rather than the left half.

How do we assign probabilities to this sample space?

* For any region, given you're in that region, twice as likely to occupy half the area.
* Would it not be the same probabilities?
* After looking at the answer, I'm not too sure what methods are being used to establish this.
* It seems fairly evident that you're not increasing your chances of anything radially because it's symmetric.

6.

$P(A \cap B \cap C) \geq P(A) + P(B) + P(C) - 2$

Assuming A, B and C are disjoint events.

$P(A \cup B \cup C) = P(A \cup B) + P(C) - P((A \cup B) \cap C)$

$P(A \cup B) = P(A) + P(B) - P(A \cap B)$

$P(A \cap B) \geq P(A) + P(B) - 1$

Involves using De Morgan's law (see book).
