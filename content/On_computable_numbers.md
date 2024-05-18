# On Computable Numbers with an Application to the Entsheidungsproblem

* "According to my definition, a number is computable if its decimal can be written down
  by a machine"
* Automatic machine: Completely determined by configuration. At any given state it has a
  select amount of options.
* Computing machines are a-machines that print two kinds of symbols 0 and 1. Not too sure
  if here the second kind is a one, or the decimal representation of the binary string.
* A sequence is computable is computable if computed by a circle-free machine ("will
  always write down a finite number of symbols of the first kind").
* "__m-configuration__ is a finite number of conditions"
* The possible behaviour of the machine a any moment is determined by the __m-confguration__


## Applied Turing

* > Using a straight edge and compass to construct geometrical shape is equivalent to solving certain forms of algebraic
  equations. Because pi is not a solution to an algebraic equation, you cannot represent the number in a geometrical
  construction
* Will come back to the end of chapter 2. Finished up after describing the two kinds of infinity.
* Conditional branching is necessary for the most basic turing machine. "It wasn't until computers began storing
  programs in memory (the "stored program computer") that branching became easy and routine"
* Somewhat counter intuitively a circle free machine is one that goes on forever, kind of. If a machine prints 0 then 1
  and stops, it is considered circular. If it prints 0 then 1 then 0's forever, it is considered circle free. This is
  relevant in that a machine is circular if it hits a state that it can't get out of.
* So I got a bit confused by 
    * > A machine will be circular if it reaches a configuration from which there is no possible move, or if it goes on
      moving, and possibly **print symbols of the second kind**, but cannot print any more symbols of the first kind.
    * My understanding here is that symbols of the second kind are the numbers 2-9. The machine is no longer defined
      when it starts printing these symbols. It's not considered part of the computation because the machine was not
      defined to include such symbols
* Confused by the importance of 'marking'. It seems useful in the sense that marks can be used to define a sequence to
  look out for. You could have a different mark square for each pattern you're looking out for. In the first sequence
  the x is marker for the amount of 1's . This is then used to say, always print a number of 1's that is 1+no. of x's found 
* Some of this might become clear if I actual try and compute the sequence and see what I do.
  
# GEB 

## Chapter XIII (13?) 

* Begins with a description of the strength of a formal system. Specifically, this TNT system used throughout the book.
  Can we say that the TNT system is sufficient to cover all lines of reasoning into numbers. Something like the p-q
  system it is said doesn't include enough of the 'core truths' of N to count as number theory
* Proving things with a formal system can be a question of managing searching through strings manipulated by the rules
  of the system without really knowing if you're approaching something useful.
* The chaos element is something we're trying to control, deciding if there is order to some process of theorem hood is a
  matter of determining these unpredictably long searches
    * The example is looking at two sets of numbers; one seems have a fairly identifiable pattern so you can make a
      determined guess to the next number in the sequence. The other seems random, but if we were told its not, this
      would change maybe how we looked at it. How would we be able to determine in general if its pattern is solvable?
    * This also strikes at the core of nature too. We extract information about what nature is doing and create
      explanations for phenomena, verify with tests etc. but can we know that the tools we have could solve an pattern of
      information or data that nature throws at us in this context?
* Primordial steps; addition, multiplication, equality and greater than or less than
* Bloop is a system with control structures so we can use these primordial steps to solve for theorems or properties of
  numbers
* Once an operation has been defined it is considered another primordial step that can be used in other functions
* The Bloop system is complete in with the primitive recursion defined above. That we can trace back to the primordial
  steps we assumed. If a property of a number can be written in bloop program it is represented in the TNT system (?) 
      
# Notes

* Lots of functions that we use turn out to be primitive recursive

## Primitive recursion

* Construct a primitive recursive definition for all well known functions (a base case and a recursive case)
    * I don't fully understand primitive recursion as I haven't attempted to formally define a regular function with it.
      It seems though that with primitive recursion we can also defined partial functions (undefined in some domain) so
      that we can in a sense build up any function
    * If a computer can build up the basics primitives. In theory then it can simulate any function.
    * [Minimisation](https://www.youtube.com/watch?v=bFkU-qV2Ioo)
    * For composition, the output of all the g functions from g to n is used as input to the f function
    * Recursion is different from composition. I dont really understand why it has 3 arguments
* Overview kind of then write out explanation
