---
title: Notes on Computation
tags: computation
---

For the past several years I've been frustrated with broad statements that the universe is a computer, by 'fact'. I've
also found it frustrating to try and define the ultimate limitations of what one can code, or program. This follows when
you think about why we have the instruction set, or tools that we do when we code. The notions of conditionals, loops
etc. why are they considered so universal? Whats so special about them.

This also followed from my researching category theory and types. Was there some deep underlying structure to the notion
of types, of this constraints on our programming languages?

I've always found myself approaching it with pre conceived notions of what it should be, rather than what it is. That's
why I'm going to try and approach it from a more practical sense this time around. In this sense, the aim of just aiming
for a machine that is Turing complete, not really knowing what that means is understandable. You have a 'Turing
Complete' machine, can it display a number on a screen, well there's no mathematical theory that will tell you exactly
that but lets find out if we actually can physically.

My current thinking is that nothing is particularly special about them. Or, at least, they are the constraints we're
given based on the theory of computation.

My main motivations for this is to:
* Be able to explain at an abstract level, how we can go from numbers and their basic operations, to images on a screen.
* Describe the Church-Turing thesis and why it is true.
* Determine why there is a set of function (primitive recursive) that can cover all possible functions.
* Stephen Wolframs thinking on the notion that the universe is computational. Also, his thoughts that maybe those
  constraints on our programming languages don't need to be there.
* Complete the selfie book, at some point.
    * That or try and make a compiler.

# The Theory of Computation

* When we say something is computable, it might seem like some fuzzy notion, which it kind of is. Because Church and
  Turing came up with two formally equivalent systems for computability, indepenedentely, you get the Church-Turing
  thesis, which is kind of circular but says that anything that something is "computable" if it can be done by a Turing
  machines.
* Computation is a formalism of the world in which things take the form of concrete steps.
* Each step updates some state which approaches some desired state over the computers life time or operation.

# Church-Turing Thesis

* > Statements that there is an effective method for achieving such-and-such a result are commonly expressed by saying
    that there is an effective method for obtaining the values of such-and-such a mathematical function.

    For example, that there is an effective method for determining whether or not any given formula of the propositional
    calculus is a tautology (such as the truth table method) is expressed in function-speak by saying that there is an
    effective method for obtaining the values of a function, call it T, whose domain is the set of formulae of the
    propositional calculus and whose value for any given formula x, written T(x) , is 1 or 0 according to whether x is, or
    is not, a tautology.

