# Statistics

[Statistical Rethinking](Statistical_Rethinking)

* Probability, as has been mentioned before is just counting. 
* It represents uncertainty numerically. Not so much that in x percent of the worlds this happens and 1-x percent the
  other outcome happens. It's a matter of what could happen. I think it's fundamentally unintuitive but it's made seem
  like it should be.
* I ran into a weird one where I was counting outcomes on a tree, all paths are considered equally likely though so if
  that changes how does that fit into the ultimate outcomes count?
* Outcomes are weighted
* Conjecture what might be the case

# Probability theory

* The _sample space_ is the set of all possible worlds; they are mutually exclusive only one of them can 'be the case'
* Random variables are a way to get subsets of the sample space

## Notes

### 20/12/21 11:02:57

Probabilities are degrees of belief, even in a frequentist view, if only more moderately. When I had the issue of the
garden of forking paths where all possible worlds (outcomes) in the sample spaces are not equally likely I tried to map
it onto both the frequentist and subjectivist views. Eventually you end up defining hypothetical trials which is just an
extrapolation from your belief. What I'm saying is that it might not make sense to try and intuitively understand it in
the garden of forking paths.

In the garden of forking paths if we have two outcomes A and B. If the Pr(A) is 0.4 and that of B is 0.6 how do we
visualise this? A frequentist approach is that ten trials might end up with <A, A, A, A, B, B, B, B, B, B> whereas the
subjectivist says that its an internal representation of knowledge on the next trial. My issue was how can we determine
joint probabilities with this. If another forking path is added then the Pr(A, A) is 0.4*0.4 and Pr(B) is 0.6*0.6

Can look at it as ropes. Where are finally set of paths are weighted ropes. The more weight to a rope the more likely it
is to happen. If all the paths are equally likely all the ends of the ropes we're holding weigh the same amount so we're
indifferent (weight being our indicator). If one path is weighted less than another we can factor that into the paths
when counting them up. The weight is distributed the more forked paths we have (longer ropes) so that our belief of 1 is
diluted by the amount of paths. 

Why is a joint probability multiplication?

From reading the excellent 'Artificial Intelligence a Modern Approach' 

### 22/12/21 13:33:14

From the above why multiply with joint probability.
Conditional probability is 
$$ P(a|b) = \frac{P(a \wedge b)}{P(b)} $$

$$ P(a \wedge b) = P(a|b)*P(b) $$

So in the sample space where b is the case and then further get the proportion of the sample space where a is the case
given b. You are left with the proportion of the sample space where both and b are the case.

If a and b are independent then the P(a|b) is the P(a). 

$$ P( a \wedge b) = P(a)\times(b) $$

Because they are independent, we use each as a proportion of the whole. So the chances of a being withing the set
refined by the chances of b is the same as the chances of it being in the whole set. When they are dependent the chance
of it being in this refined by set is different that just being in the whole set (different how?)


## 03/02/22 11:50:59

Gaussian or normal distribution. The result of some sum 
Difference of heads or tails determines where you are in the field. For N tosses the amount of ways you could end up
with an 'outcome' of zero (that is, when heads, say, is positive and tails negative in counting terms) Many tosses
converge on half tails and half heads so to more tosses the more general outcomes will focus on zero

Arises out of some flunctuations. That tend to converge towards a mean. So for any set of observations they generally
converge over a number of trials

 
