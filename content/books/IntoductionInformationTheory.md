---
title: Introduction to Information Theory
author: John R. Pierce
tags: book information-theory computers probability
---


Q: What is a stationary source?

If we assume source to mean some 'producer of a sequence of characters' or, a _stochastic process_ then a stationary
source says that there is some statistical properties to the sequence of characters produced

Q: What's an example of a stationary but not ergodic source?

If we had a sequence that changes based on a starting character. So for a source that produces 

ABABABABAB or
BCBCBCBCBC

If we got a string of the first kind we could not reason about the strings that the source will produce from it. 

A more intuitive example, given in the book is if we have an American generating messages, there is some statistical
properties to the messages he is writing, the same for a French person writing messages.

Bot have individual statistical processes but if we considered a source as messages sent by an American or a French
person then that source would not be ergodic.

Q: What is ergodicity?

It says that we can define the statistical properties of the source (stochastic process) from _one_ sequence of characters.

More formally, if the time average for each character is the same as the ensemble average for each character, the source
is considered ergodic.

Q: What is the _time average_ of a particular set of characters?

For a sequence of characters, a _time average_ is an average over a particular sequence. And _ensemble_ average is an
average an index of all the possible sequences. 

Time average: $A_1, A_2 ... A_n$ an average over this set of symbols.
Ensemble average: $A_1, A_2 ... A_n$, $B_1, B_2 ... B_n$, $C_1, C_2 ... C_n$ an average of $A_1, B_, C_1 .. A_n, B_n, C_n$

Q: How might speech and writing vary from ergodicity?

If I'm the source, I might suddenly speak in a funny voice, or write in a strange manner. Ergodicity is this notion that
as a source, you will always produce a sequence in a way that has the same statistical properties as before. The 'free
will' of me as a source can throw a wrench in this.


> If man is a finite-state machine, the number of states must be fantastic annd beyond any detailed mathematical
treatment. But, so are the configurations of the molecules in a gas, and yet we can explain much of the significant
behavior of a gas in terms of pressure and temperature. 

> Speech and writing as ergodic sources are not quite true to the real world, but they are far truer than is the
economic man. They are true enough to be useful.

## Encoding

Q: What does it mean to say that something is _encoded_ ?

There is a set (the range of codomain) that has a corresponding element for all elements in the domain. This can often
be inefficient if the codomain is not the range.

Q: What does it mean to say that something is _encoded_ for transmission?

If we take a source (stochastic process) the goal of communication is to successful transmit all its symbols from one
'destination' to another. An encoding is some representation of the symbols produced by a source that enables this.

Sampling and quantizing helps us convert the problem of coding a continuous signal, into a simpler problem of coding a
sequence of discrete characters.

