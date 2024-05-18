# Computation

## MIT Theory of computation videos

### Models of computation and finite state machines

* A finite state machine is mathematical model. It has a formally defined "parameter" list. It's output is classified
  into whether for the parameters, it finishes, or does not finish. Accept or reject on the inputs. 
* The output could be said to be the list of states for the passed in string.
* The aim of a mathematical model of computation is to describe how an output of a mathematical function is computed
  for a given input
* The aim then of a FSM is to formally describe how a certain function might "act" on a given input (string in this
  case). 
* Describing functions for inputs and their outputs. 
* Whether a finite state machine accepts a given input parameter then becomes, can we create (formally defined each step
  of) a function that accepts the input parameter, or is the input in the domain of the function.
* The models of computation are just different ways of describing algorithms

* Language is some set of strings that determinate (or hit the accept state) of a finite automata.
* A regular language is one where a finite automata can be created for it, or recognises it.
* Regular expressions are formal representation of languages with operations
* Closure: Collection of objects is closed under some operation. Applying that operation to those objects leaves you
  in the same class of objects. E.g. addition.
* For regular languages if you apply a defined operation, you should get back a regular language
* Non-deterministic finite automata. Has the ability to have multiple transitions for a particular character of the
  language
* The DFA (deterministic finite automata) has a different state (unique) for each possibility 

* Proving the equivalence of automata to regular expressions.
    * I think here its more saying that regularity is maintained through operations
    * It just might be worded poorly
    
Non determinism

* If we wanted to concatenate FA using the union proof does not work because. Each input string is now a completely new
  string. We have no way of knowing which string was accepted on which machine. We can't then check the final states of
  each one as the string might be accepted if split accordingly.
* Non determinism as a computer splitting up into copies of itself based on the next states for the current input. If
  any of the trees is in the accept state at the end of the input, the machine accepts the string.
* In a DFA, the transition function takes a state and an input symbol and produces the next state. In an NFA, the
  transition function takes a state and input symbol or the empty string and produces the set of next possible states.
