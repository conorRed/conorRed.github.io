* It's always tricky to know the sample or outcome space in the real world. 
* Am I totally clear on the outcome space and clear about the assumptions in the probabilities assigned. 
* I wish I could fucking write.

# Quiz 1

Stephen drives and thus is at the mercy of traffic lights. When all traffic lights on his route are
green, the entire trip takes 18 minutes. Stephen’s route includes 5 traffic lights, each of which is red
with probability 1/3, independent of every other light. Each red traffic light that he encounters adds
1 minute to his commute (for slowing, stopping, and returning to speed).

1.

X is stephen's commute length

When all lights are green it takes him 18 minutes. Stephen’s route includes 5 traffic lights each of  which is red with
probability 1/3. Each red light adds 1 min to his commute.

The shortest is 18 min.
The longest is 23 min.
p = 1/3


We hit a light n times, we get a red with probability p and a tail with probability 1- p. Let X be the number of red
lights in an n sequence. 

This is a binomial random variable.

$p_X(x) = nCxp^x(1 - p)^{n-x}$
P(X = 0) = 0.17
P(X = 1) = 0.36
P(X = 2) = 0.3
P(X = 3) = 0.13 
P(X = 4) = 0.02
P(X = 5) = 0.002

E[X] = 1.44
Var(x) = 1

Variance is that he hits 1 red light around the mean, so there's a variance of 1 min around the mean.

2.

Stephen's route took 19 min what is the expected number of red lights he encountered.

E[X|A] = 1

3.

Given the last red light encountered was the fourth light, what is the conditional variance of the total number of red
lights encountered.

Y is the last light encountered.
If success is the last light is y.
p = 1/5 each light is equally likely to be last.
P(last light is 4 | X <= 4) = 0.196


P(X = 0 | X <= 4) = 0.17
P(X = 1) = 0.36
P(X = 2) = 0.3
P(X = 3) = 0.13 
P(X = 4) = 0.02
Var(X <= 4) = $E[X|A^2] (E[X|A])^2$
Probably very close to 1 again.

4.

Outcome space now contains 5C3 elements.


# Quiz 1

https://ocw.mit.edu/courses/6-041sc-probabilistic-systems-analysis-and-applied-probability-fall-2013/dd524390df7bb78133d1bff2fc5d13ae_MIT6_041SCF13_quiz01_s09.pdf

a. iii

b. each urn has a probability of 1/m of getting a ball. After n balls for an urn to be empty woyld need (1 - 1/m)^n
probability.
i

c.

P(A \cap B) = 1/2*1/2 = 0.25  
P(C) = 0.25 + 0.25 = 0.5
P(A|C) = 1/2

P(A \cap B | C) = 1/2*1/2 = 0.25  
iii.

d.

p = 1/3. 
h: no. of heads in 5 independent coin tosses.

P(h = 1) = 5C1*p(1 - p)^4
P(h = 5) = $5C5*p^5(1 - p)^0$

Binomial random variable.

P(first toss is a head) = 1/3
P(h = 1| h = 5) = P(h = 1) + P(h = 5)
P(first toss is a head \cap h = 1 | h = 5) = 1/3 Only 2 ways this can happen. 2/2^5
P(first toss is a head| P(h = 1| h = 5)) = 2/2^5/P(h = 1| h = 5)

**Why is 2/2^5 not equal to 1/3^5 + 1/32/3^4??**

iii.

e.

All the possible 'hands' you could have is 52C26.
Out of those hands, what ones have 4 particular cards?
It's the same as getting any 4 cards right?
so 48C22/52C26?
i

f.
ii.

g.
ii.

h.
 
 They can't be independent ever because if their pmf is zero for some pairs that both have non negative probability
 individually then their intersection is 0 not the multiplication of the two.
 
i.

ii.


j.


Xs is the sum.
$P(X = 1 | Xs = 2) = $
$p_{X}(x) = $

$E[X|A] = \sum_xp_{X|A}(x)$


