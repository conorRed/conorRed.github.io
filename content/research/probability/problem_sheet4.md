# Problem Sheet 4

_Looking at Discrete Random Variables_


# Recitation 5

1.

a.

$E[X] = \sum_xxp_X(x)$

2.

A marksman takes 10 shots at a target and has probability 0.2 of hitting the target with each
shot, independently of all other shots. Let X be the number of hits

a. pmf is p(x) = 0.2^{x}
b. (0.8)^10
c. P(X>5) = summation (on pmf) of greater than 5 hits.
e. Pays 3 dollars to enter. Gets 2 dollar for each shot. You would take the difference between 3 and the expected value
from d (which I didn't do). This would give you Y, whose expected value is Y. The variance is 0? No not zero.
f. This is the standard deviation.


4. 

4 buses, 148 students, 4 bus drivers, 40, 33, 25, 50 students on each of the 4 buses.
X: no. of students on the bus carrying randomly selected student. 
Y: no. of students on the bus carrying randomly selected drive. 

a.

I would assume X is larger although it's only on a scale of 1-4 so probably not by much.
b.

what is the pmf of each random variable?

There are 4 possible values x that X can take on.

You would expect that if you kept selecting students, you would have a proportional relationship between the number on
each bus and the value x.

There's 40/148 for bus 1 (addition of probabilities for outcome x = 1)
There's 33/148 for bus 2
There's 25/148 for bus 3
There's 50/148 for bus 4

E[X] = 1*40/148 + 2*33/148 + 3*25/148 + 4*50/148 = 2.57.

The pmf for Y is 1/4 for each y.

E[Y] = 1*0.25 + 2*0.25 + 3*0.25 + 4*0.25 = 2.5.

# Problem Set 3

1.

The hats of n persons are thrown into a box. The persons then pick up their hats at random.
What is the probability that 

a. Every person gets his or her hat back


We have k trials but each trial is not independent. The probability of finding your hat is a function of hats in the
box, which reduces over the number of trials. 

The probability for the first person is 1/n
For the second it's 1/n-1
For the third 1/n-2 and so on.

1/n*1/n-1... = 1/n!.

b.

What does the sample space look like for this?
Is it a big tree like thing?

Anyways,
So for the first m people we've a probability 1/n*1/n-1*1/n-2 ... n-m
After m people we don't care. So its (n-m)!/n!

c. everyone among the first m persons to pick up the hats gets back a hat belonging to one of
the last m persons to pick up the hats? 

How many ways can this happen?
Out of n choose n-m ways that the first m could pick up someone elses hat outside of the first m people.

Choose one of these way's so 1/ n choose n-m

d. Now assume, in addition, that every hat thrown into the box has probability p of getting dirty
(independently of what happens to the other hats or who has dropped or picked it up). What is
the probability that the first m persons will pick up clean hats.

(1 - p)^m

e. Exactly m people will pick up clean hats.

**I dont understand the solution to this one**

## 2.

Alice randomly chooses 4 cards out of a 52-card
Then Bob randomly chooses 8 cards out of the same deck. (cards replaced)

Alice wins if Bob’s cards include all cards selected by her. What is the
probability of this happening? 

For each selection by Bob, he's 1/52 chance of picking one of Alice's cards.

If we focus purely on Bob's selection. There are 4 cards in the 52 card outcome space that are considered a 'success'.

Bob has 52 choose 8 ways of choosing his 8 cards.

If we take the subset of this space where he has chosen all 4 of Alice's cards. It doesn't matter what order he picks
them up in, so there's one way he can pick her 4 cards. Then 48 choose 4 to pick up the rest. 

It seems like this is a reasonable probability but it's basically zero percent.

## 4.

Two fair three-sided dice are rolled simultaneously. Let X be the difference of the two rolls.

a.

There are 9 total outcomes. 

(1, 1) x = 0, (1, 2) x = 1, (1, 3) x = 2
(2, 1) x = 1, (2, 2) x = 0, (2, 3) x = 1
(3, 1) x = 2, (3, 2) x = 1, (3, 3) x = 0

X is a function mapping each pair to the number line by |x - y|.

p_X(0) = 3 * 1/9 = 1/3
p_X(1) = 4 * 1/9 = 4/9 
p_X(2) = 2 * 1/9 = 2/9

E[X] = 4/9 + 4/9 = 0.8 Var(X) = E[X - E[X^2]]

Var(X) = (0 - 0.8)1/3 + (1 - 0.8)4/9 + (2 - 0.8)2/9 = 


# Tutorial 3

2.

X is the number of papers for a grade to come up for the first time.
X is a geometric random variable.

$p_X(k) = (1 - p)^{k - 1}p$

Expected value is apparently 1/p

p = 1/6. Expected value 6 for each grade so you'd expect 36 papers for all grades


3.

The $\sum_yp_Y = 1$ and $\sum_yp_X|Y = 1 = \sum_x\frac{X=x \cap Y=y}{P(Y=y)}$



for y = 3 $\sum_x\frac{4c}{}$
for y = 2 $\sum_yp_X = 6c$
for y = 1 $\sum_yp_X = 10c$
c = 1/20 because one of these value's must be the case.

b.

6/20.

I got lazy here and looked at the solutions. Hopefully, if I take a quiz I can see where my weak points are.
Conditioning of Random variables is confusing.
