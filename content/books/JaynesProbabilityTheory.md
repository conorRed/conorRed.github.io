# Probability Theory: The Logic of Science
_notes on the above book_

@probability @book
## 12/02/23 08:27:03

* The object of the book, to determine the mathematical theory underlying the common sense of the policeman, or
  plausibility (rather than deductive) reasoning. 
* In 1.3, Jaynes talks about how thinking about this as developing a machine that does this helps as it's an attempt at
  a finite resolution description of the process of 'common sense'.  
    > But in our study of common sense we shall be led to some very explicit ideas about
    the mechanism of thinking. Every time we can construct a mathematical model which
    reproduces a part of common sense by prescribing a definite set of operations, this shows
    us how to ‘build a machine’, (i.e. write a computer program) which operates on incomplete
    information and, by applying quantitative versions of the above weak syllogisms, does
    plausible reasoning instead of deductive reasoning.
    Indeed, the development of such computer software for certain specialized problems of
* The analogy, then, is to define a robot according to definite rules. These rules will be deduced from desiderata that
  appear to us as desirable in human brains when we think of a rational person.
* The robot will produce 'Aristotelian' propositions (of true or false nature).
* Logical equivalent propositions have the same truth value (not numerical value).
* So two propositions with the same truth value are equally plausible.
* Notes the 'tricky point' of logical implication.

---

* 1.6, With 4 basic operations of boolean logic, the question is asked, 'how far can this take us' how large is the
  class of new propositions that can be generated? 
* If we view operations and their use as acting like a function, what is the minimum number of operations to map the
  whole space of values A and B could take on. Is this set still adequate with n propositions.
* If a 'logic function' is some function with a unique input and output.
* Concerned with the set off functions that map onto a discrete space of 2^n points, where n is the number of
  propositions. The number of unique functions is much larger because you need to map for each unique input and output.
  So it's
* For an _expression_ $B = f(A_1, ..., A_n)$ with n propositions, there are $M = 2^n$ points in the sample space. There are
  $2^M$ functions. (?) not totally confident but it works out im sure. 
* Now, it's a matter of grouping functions, or determining equality between aggregation of functions on some function.
* > the three operations conjunction, disjunction and negation suffice to generate all possible logic functions;.. they
  form an adequate set.

----

### Desiderata 

* Degrees of plausibility are represented by real numbers.
    * The plausibility our robot assigns to a proposition with normally be based on whether some other proposition is
      true. Denoted by $A|B$.
    * Conditional plausibility.
    * A greater plausibility is represented by a greater number.
* Qualitative correspondence with common sense
* Reason consistently.

Maybe come back to  last two sections 

## Chapter 2

Might just try building up the product rule and skim the others.

### Product Rule

We're trying to quantify the relationship between the plausibility of the logical probability of the product AB to the
plausibilities of A and B separately. This plausibility (AB) is derived from another proposition C. So AB|C is what
we're after.

* Deciding that AB is true can be broken down into, 
    * decide B is true. 
    * Having accepted B as true, decide A is true. B and A are interchangeable here.
* Plausibility for each step: decide B is true (B|C). Then B is true, decide about A (A|BC).
* If the robot has B|C and A|BC it doesn't need A|B because we don't need to know the truth of A if B isn't true and it
  tells us no more information about making the determination.
* We do not need to take into account absence of information C (so, A|B or B|A). Because judgements in the absence of C
  are not relevant to judgements knowing C is the case. Like if you were to look at cosmology through the lens that the
  Earth is round but also accounting for if the Earth isn't round.
* With all these we can state that AB|C will be some function of B|C and A|BC.
    * I think there's some subtlety to 2.1 and 2.2. You might think that we can reason about AB|C from A's relation to C and
      B's relation to C. But the plausibility of A and B does not seems contigent on this.
    * I'm not too convinced by the example but I think it's something like. 
    * (Left eye blue and right eye brown | next person you see) = Some mapping (left eye blue | next person you see,
      right eye brown | next person you see).
    * We can't say anything about the collision of the two from their individual cases.
* Using an 'exhaustive search' it's established that (AB|C) = F([B|C, A|BC]) and (AB|C) = F([B|AC, A|C]) are the only
  forms that make qualitative common sense desiderata II.


* If C becomes more plausible, then B|C has to become more plausible, which means 

