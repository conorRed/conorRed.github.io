---
title: Probability Notes but more Formally
author: Conor Redington
tags: probability maths learning
abstract: |
    Interpretations of probability come into play when its mechanics (measure theory) are used to model real situations.
    The goal of this document is to present probability as formally as I can.

    * [Probability theory for engineers](https://betanalpha.github.io/assets/case_studies/probability_theory.html#2_mathematical_logistics)
    * Probability and Measure (Billingsey).
Last Modified: 2023 Jul 08
---

> Once the philosophy has been stripped away, probability theory is simply the study of an object, a probability
> distribution that assigns values to sets, and the transformations of that object.

Probability is a positive conserved quantity that we can distribute across a space. This is that more formal notion of
spreading 'cream cheese'.

A measure space is a mathematical object that is defined by a triple:
$$(X, A, \mu)$$ where $X$ is a set, $A$ is a $\sigma$-algebra on the set and $\mu$ is a measure. A _measure_ is a
particular kind of function that maps from the $A$ space to the real number line.

Measure theory aims to abstract the notion of 'size' [^1].

The measure function assigns a size to each element in A. It is the function $$\mu : A \rightarrow \Re $$

Intuitively each element of the $\sigma$-algebra is a part of a larger whole. So that if we add up each individual
element we get some 'whole' (countable additivity). It's a particular set of subsets of X.

We define a _measurable space_ as $(X, A)$ the initial set and $\sigma$-algebra, the subsets that can be measured. The
$\sigma$-algebra set is often the power set of X.

## Measurable function (probability)

A function P is a probability measure for the probability space $(\Omega, F)$ if it satisfies:

* $0 \leq P(A) \leq 1$ for $A \in F$.
* $P(\emptyset) = 0, P(\Omega) = 1$
* $A_1, ... A_n$ is a disjoint sequence of F sets, then $P(\cap_{k =1}^{\infty} A_k) = \sum^{\infty}_{k = 1} P(A_k)$.

# Basics

Here we start measuring the 'size' of uncertainty.

Define $\Omega$ as the unit interval (0, 1]. The length of the unit interval $I$ is $$|I| = b - a$$,
$$A = \cup^n_{i = 1} I_i$$

The set $\Omega$ can represent all future possible worlds.

Provided A is disjoint and finite and lies in $\Omega$ then we assign a measure of probability 

$$P(A) = \sum^n_{i=1} (b_i - a_i)$$

A is a set of subsets that is a $\sigma$-algebra.

## Functions/Transforms

A probability distribution is a mapping of the form $$\pi : X \rightarrow [0, 1]$$ for each atomic element in X.

## Expectation

A distribution as defined allows us to summarise the distribution function with numbers.

Reduction of functions of the form $f: X \rightarrow R$ to a single number. 

If $C$ is the space with all functions of the form $f: X \rightarrow R$ then expectation is a map $$f $$

# Definitions

A space is usually denoted by its set and structure $(X, s)$. An example here might be the ordering of the set with some
ordering rule (like in decision theory).

The indicator, or indicator function, of a set A is the function on $\Omega$ that assumes the value 1 on A and 0 on $A^C$
it is denoted $I_A$.


[^1]: https://mbernste.github.io/posts/measure_theory_1/
