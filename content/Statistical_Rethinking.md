# Statistical Rethinking
## Interpretation of probability (intuitive understanding)

### Frequentist (Objectivist)

Assign numbers to describe some objective state of the world. Most common version of this being freqentist approach.
which claims that the probability of a random event denotes the relative frequency of occurrence of an experiment's
outcome when the experiment is repeated indefinitely. Another example is propensity probability.

### Subjectivist

Assigns numbers as a degree of belief.
 
## Frequentist

* Focuses on repeated sampling

## Bayesian

* subjective probability read in term so subjective uncertainty
* Updating prior intuitions with information from our sample


[How Bayes Theorem Works](https://www.youtube.com/watch?v=5NMxiOGL39M&t=243s)

* Pot with one cup of coffee in it. You can choose how that cup is distributed between cups on front of you. Its a
  distribution of your beliefs
* Belief about how some individual is distributed before you actually measure them
* Think of belief as a distribution, so you're fairly sure its x but must allow for the other possibilities


## Chapter 1 

* I struggled with the example about neutral theory of evolution as a hypothesis
* It seems that he's arguing against the falsifying of null hypotheses and for creating multiple non-null models of the
  natural phenomena. This is like creating explanations that can be falsified (Deutsch?)
* > In order to challenge these process models with evidence, they have to be made into statistical models. This usually
  means deriving the expected frequency distribution of some quantity-a "statistic"- in the model
* Change your explanation to fit the process models and the statistic models they produce in accordance with the
  observed data
* > Bayesian inference is no more than counting the number of ways things can happen, according to our assumptions.
  Things that can happen more ways are more plausible
* Frequentist approach struggles when there is no sampling invariance. The example used is Galileo looking at a blurred
  Saturn with its rings, no amount of re sampling will resolve the uncertainty present in the technology. The
  uncertainty is not a function of the repeated measurements
* With the Bayesian method this uncertainty in the information can be modelled. 
* > Bayesian golems treat "randomness" as a property of information, not of the world
* Nothing in the real world is actually random it just lacks information (hmmm?)
* > We just use randomness to describe our uncertainty in the face of incomplete knowledge

## Chapter 2

* Small world vs large world. The example of Behaim's globe is used (it doesn't have the Americas in it). While the
  small world model is internally consistent is doesn't represent reality fully. It's this interplay between your small
  world (model) and reality thats important. 
* Follows on here from the Bayesian inference explanation above. Looking at the garden of forking paths in which
  alternative events are cultivated as we learn what did happen some of these alternatives are pruned. In the end what
  remains, is what is logically consistent with our knowledge
* Counting the possible paths then becomes a multiplication of the possible paths on each ring (in the example)
* Marble example (I think p here is just a way of numerically describing the no. of blue marbles)
    * A conjectured proportion of blue marbles __p__  is usually called the __parameter__ value. It's just a way of
      indexing possible explanations of the data.
    * The relative number of ways that a value __p__ can produce the data is usually called the __likelihood__. It is
      derived by enumerating all the possible data sequences that could have happened and then eliminating those
      sequences inconsistent with the data
    * The prior plausibility of any specific __p__ is the __prior probability__
    * The new, updated plausibility of any specific __p__ is the __posterior probability__

2.2 Building the model

* Creating a data story. A narrative of why we are getting the observations. Viewed as important as it makes you think
  of the variables you really need to consider, get a bit more exact about chain of events (creating something hard to
  vary?)
* walks through Bayesian updating, the amount of evidence we have is embodied in the plausibility (straight line at the
  start vs complex curve at the end). The final figure is normally shown but its important to know that it is just an
  iterative development from the first figure.
* Some tips given for evaluation, they seem rather abstract at the moment though with my current knowledge
* Now we look at mapping some of the concepts from the previous section to build up the model

### Likelihood function (1) the number of ways each conjecture could produce an observation

* Because both outcomes (W and L) are equally likely, and independent we look at all the ways our sample size of 9 (n)
  could appear to us.
* The binomial distribution calculates the relative no. of ways to get six W's with 9 tosses holding p at 0.5
* Looking at the parameters to the binomial function p, n and w they can each represent different conjectures once we
  can tell the likelihood and what has been observed
* In the sciences, the prior is considered part of the model, there is no reason not to interrogate it like other
  assumptions.
* Bayesian estimate is always a distribution over the parameters
* Posterior is proportional to the product of the prior and the likelihood
    * Count up all the ways you could see the data and multiply by the priors (look at table for marbles)
* Grid approximation builds up from the marble example. With just 3 possible values for water (0, 0.5 and 1) 0.5 wins
  out with in 3 tosses. If we bump up the possible values to 20 though we get a more accurate display of possible values
  (posteriors)

### Summary

#### 15/12/21 15:22:11

Models operate on a small, internally consistent world. It's important to recognise this when describing the large world
with it and making predictions about the large world

The garden of forking paths sets up the abstract model for probability as just counting. I'm still kind of struggling
with this, how each branched path has an implicit or explicit probability assigned and how that contributes to the
general likelihood of some observation or conjecture in the garden of forking paths.

Another area I'm trying to wrap my head around is the basic logic for a distribution. For something like the globe toss
where you don't know the parameter (in this case, the proportion of the Earths surface water covers) you can generate a
distribution on what it could be based on observations. In the example if the globe is tossed 9 times with 6 W's and 3
L's you can generate a binomial distribution with the binomial function where x goes from 0 -> 1. This function requires
the amount of times the observation comes up in n trials. This becomes our likelihood function, based on how many W's
we've seen in our trials the output of this functions assigns different plausibilities to different values of p.

* The function says, based on a probability how likely is it that we end up with the supplied W's and n? 
* I'm still trying to wrap my head around the counting aspect of the binomial distribution. But when probability is
  merely considered as just uncertainty, it does not say if this trial was performed x amount of times the probability
  assigned would appear in p% of the trials (although this might happen) its just a numerical value on uncertainty

## Chapter 3

* Whenever the condition of interest is very rare, having a test that fins all the true cases is still no guarantee that a
  positive result carries much information at all.
* > randomness is always a property of information, never of the real world
* Why sampling of model output, should apply to every model in the book ?
    * > It is often easier and more intuitive to work with smaples from the posterior, than to work with probabilities and
      integrals directly
    * Where getting integrals is computationally expensive?
* Interesting note box here. Why statistics can't save bad science. Suppose the probability of a positive finding and a
  false positive rate thats very low. If the probability of the prior, that is the probability of any hypotheses you
  posit in general being true is low, the best you could probably do is 0.5 (in terms of the posterior that the finding
  indicates the hypothesis is true). The lesson here being that no amount of accurate instrumentation can account for
  bad hypothesis (or explanations)
* > These posterior intervals report two parameter values that contain between them a specified amount of posterior
  probability, a **probability mass**
    * parameter value being something on the spectrum of the parameter value (in this case 0 -> 1 the proportion of water)
* > 95% is a small world number.. true in the model's logical world
    * On interpreting confidence intervals
* Loss function. If you were to make a bet on what the correct parameter value is. Where to cost is proportional to your
  distance from the 'correct' answer
* > Given a realized observation, the likelihood function says how plausible the observation is. And given only the
  parameters, the likelihood defines a distribution of possible observations that we can sample from, to simulate
  observation
* Posterior predictive distribution
    * The top graph is the posterior distribution, for each parameter we are running is through a binomial distribution
      of 9 tosses as if the correct proportion p is that chosen parameter (so set p to 0.1 and run a simulation with p
      as 0.1 and see what posterior distribution you get as a result from 9 tosses). The initial posteriors are
      multiplied then by each sampling distribution and the final predictive distribution is shown
    * Passing the uncertainty of all parameters down is important so that the model does not appear more confident than
      it in the prediction
* Highlights different ways to analysis the model through alternative ways of a predictive distribution looking to see
  if the globe could be bias by the amount of times its switched, as an example

### Summary

#### 15/12/21 15:13:26 

Sampling is introduced as a way to get the general gist of a posterior distribution without having to run a large
integral computation (to get some area under the graph). Will need to see more examples of this before I fully
understand it's benefits

Simulations done with your model with Posterior predictive distributions. Run a sample of your model with each value of
your sample of the posterior distribution. Multiply each of the mini distribution values by its initial posterior value.
Because the posterior is incorporated all the way along it's operates as a posterior predictor

## Chapter 4

* Linear Regression is the geocentric model of applied statistics. A family of simple statistical golems that attempt to
  learn about the mean and variance of some measurement, using an additive combination of other measurements (compared
  to a fourier series)
* Useful in a lot of cases, and foundational. Not universal though (obviously)
* Any process that adds together random values from the same distribution converges to a normal.
    * The more terms the more likely values get cancelled out, so large deviations from the center by other large (or
      lots of small) deviations the other way. 
    * Interacting deviations for growth (multiplications) as long as they are sufficiently small converge to a Gaussian
      distribution
    * The flip of a coin and go right or left is a good example. The further away you get from the midline the less
      likely you are to go further away (as the coin is fair). Any distribution of people doing this is more likely to
      end up around the midline.
* Justifications for Gaussian
    * ontological: Measurement errors, variations in growth, and the velocities of molecules all tend towards Gaussian
      distributions. They do this because they all add together fluctuations. The Gaussian distribution is a member of
      the exponential family of distributions.
    * Epistemological: It represents a particular state of ignorance. When all we know about a series of measurements is
      there mean and variance, this distribution arises. If we produced any other distribution it assumes we have some
      other particular knowledge about measurements we are taking. Or something that the Golem should know about.
* Probability distributions with only discrete outcomes, like the binomial are usually called probability mass
  functions. Continuous ones like the Gaussian are called probability density functions. Probability densities can be
  greater than 1
* p.77 the language for describing models (can I translate this to the chpt 2 example?)
    * A set of outcome variables that we hope to predict or understand. It's an outcome in both sense whether measured
      or predicted.
    * For each of these outcome variables we define a likelihood distribution that defines the plausibility of
      individual observations
    * We have predictor variables that we hopefully use to understand or predict the outcome
    * **Fundamentally, these models define the ways values of some variables can arise, given values of other variables**
* tilda used for stochastic. It marks a relationship between a parameter or variable onto a distribution. For instance,
  where we don't know the true proportion p of water.
 
 
## 06/02/23 15:29:24
@daily

* I'm interested to see if there is a heuristic to use, to notice patterns in the world for applying Bayesian Inference.
* "When we don't know what caused the data, potential causes that may produce the data in more possible ways are more
  plausible".
* The garden of forking paths starts out with trying to determine the composition of a bag of marbles based on some draw
  of the bag of marbles.
* We count the paths to the draw we got in the sample space of the bag having all its possible compositions of marbles.
* The conjecture, is what we think the composition of the bag is.
* How to relate counts to multiplications. It works here because we are starting from square on each path fork.
    * Statement on this at the end of chapter 2.
* https://www.youtube.com/watch?v=R1vcdhPBlXA&list=PLDcUM9US4XdPz-KxHM4XHt7uUVGWWVSus&index=2
* Bayesian data analysis
    * For each possible explanation of the sample.
    * Count all the ways the sample could happen.
    * The explanations with more ways to produce the sample will be more 'plausible'.
* Many possible stories (datasets) that can arise depending upon what happens in the process of sampling.
* All the things that could have happened, relative plausibility (no. of ways) of the things that actually happened.
* Builds up this forking terminology, to basic probability.
* If we think of it in the sense of Absence of Evidence, evidence of absence. It's not clear how common alien life is.
  How likely our life is as a prior times the number of planets. Here, the bag of marbles is the state of the world, or
  what is the case. We might conjecture that they exist, but for each sample we get, the plausibility isn't increasing
  dramatically (that is, the sample could exist in many possible worlds than our own).
* In @david-kipping lecture, he talks about how we can't judge whether life is common, because we exist. There are many
  possible worlds in which that is the case but life is uncommon.
* The notion of evidence being linked to probability is engaging, that we can quantify, in some sense belief. Or at
  least acknowledge unknowns.
* Also, it's interesting when you try and make statements about abiogenesis. There's a repeatability issue. We might see
  earth like planets but how do we know they had a similar collision with a Mars sized planet to create the moon? This
  has to influence our belief because in the long time scale, there are a lot of factors that come into play. If total
  replication is needed for establishing life, there's just a vast array of other possible ways it could have gone,
  although, if the amount of earth like planets was massive this could be tempered slightly.
