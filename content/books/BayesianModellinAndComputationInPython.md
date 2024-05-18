---
title: Bayesian Modelling and Computation In Python notes
tags: probability maths learning epistemology rationality computations
---

At a high-level we can describe the process of constructing Bayesian modeling in 3 steps.

- Given some data and some assumptions on how this data could have been generated, we design a model
  by combining and transforming random variables.
- We use Bayes’ theorem to condition our models to the available data. We call this process
  inference, and as a result we obtain a posterior distribution. We hope the data reduces the
  uncertainty for possible parameter values, though this is not a guarantee of any Bayesian model.
- We criticize the model by checking whether the model makes sense according to different criteria,
  including the data and our expertise on the domain-knowledge. Because we generally are uncertain
  about the models themselves, we sometimes compare several models.

The goal is to produce a robust model. One that can be updated with new data. It doesn't specifically
require Bayesian inference to make the model. The model can be constructed from some granularity of
linear functions.

There are numerous methods to communicate the architecture of statistical models. These can be, in no particular order:

* Spoken and written language
* Conceptual diagrams (like DAG's).
* Statistical notation.
* Computer Code

> For a modern Bayesian practitioner it is useful to be literate across all these mediums.

**Inference** is associated with obtaining conclusions based on evidence and reasoning.

The posterior distribution is a **central object** in Bayesian statistics.

eq 1.7 on the prior predictive distribution??? How is it different than 1.2?

### Bayesian models as generative

* mantra: "models generate data".
* If this is true, we can create models to explain the data we see.
* Prior predictive distribution is a concrete representation of generated data ??

If we revisit the 3 steps of Bayesian modeling, we can re-frame them as, write a prior predictive
distribution, add data to constrain it, check if the result makes sense. Iterate if necessary.


The prior can be a distribution itself? as well as parameters for a model?

Stuck on the Metropolis hastings algorithm. I think more so stuck with the motivation for a sampler.

We don't know the exact form of p(x) we only know the numerator f(x), we don't have the
computational power to calculate it's normalised form.
