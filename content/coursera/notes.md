_notes for Coursera course on programming languages_

> A good programming language is an interface
>
You can use the constructs, definitions etc. as just one big interface. Understanding its precise meaning is the key to
using the interface effectively.

There's generally no holistic principles that unify all programming languages. Each language has _features_ that the
developers have chosen to make available. Always building on the idea of abstraction, we can build up most of anything
we want on top of the basic instruction set of a computer. All PL's have the same power but its the exploration of the
ideas a language can bring to the table to solve challenges that you face.

Getting comfortable with mixing philosophical notions of what information structures are with what is useful for
tackling the algorithmic problem presented.

Using multiple programming languages you can see the universality that can pop up with some concepts.
One thing that's becoming clear to me is that style and features revolve around the _problem_ you're trying to solve.
This has probably been told to me a thousand times but its striking me at the moment. When I look at this course, that I
initially tried to do two years ago I'm disappointed in myself. I think the missing link here is the backdrop. Before
these things (formal constructs etc.) existed in a ether and I just couldn't really figure out some satisfactory answer
(still cant really) but apart from that I was unmotivated. Now, I feel I can see the problem first and now,
specifically, scientific problems, questions worth asking. Becoming more effective at _this_ task.

So, even when I'm frustrated with my shitty code, try and take the problem first, really understand it. Then, the skill
is in using the right and stylistic language features to solve it.

# The Pieces of a Programming Language

Essential “pieces” necessary for defining and learning any programming language:
* **Syntax**: How do you write the various parts of the language?
* **Semantics**: What do the various language features/constructs mean to the compiler/interpreter? For example, how are expressions evaluated?
* **Idioms**: What are the common approaches to using the language features to express computations?
* **Libraries**: What has already been written for you? How do you do things you could not do without library support
   (like access files)?
• **Tools**: What is available for manipulating programs in the language (compilers, read-eval-print loops, debuggers, ...)

For every kind of expression ask yourself.
What is the syntax?
What are the type checking rules. What would cause it to fail type check.
Evaluation rules, provided the previous type check has passed. Does it produce a value. How does it perform its
computation to produce a value.

# ML

An ML program is a sequence of _bindings_. Each binding is _type checked_ and then _evaluated_. The type is dependent on
the static environment, its value is based on the list of bindings up to that point, or the dynamic environment.

```sml
val x = e;
```

Is a _kind_ of binding. The static environment (sequence of bindings) is used to type check. The types of the bindings
are looked up. The static environment is updated then with the type of e.

The same happens for the dynamic environment after uses the bindings in this environment, x has the _value_ that evaluates to.

> A value is an expression that , "has no more computation to do" i.e., there is no way to simplify it.

Once a binding is created for a variable in the environment, it can't be changed.

Computation consists of the evaluation of expressions.

Pattern Matching

Is this the step that determines how the binding added? Whats the difference between this and type checking?

### Functions

When a function is defined, the binding is just the function name, with arguments and its expression. It is not
evaluated until called.

Adds a binding to the environment: `x0 : (t1 * ... * tn) -> t`

Where `(t1 * .. * tn) -> t ` is the function type.

A function is a value? If they're the same why does 'val' not allow recursive calls in the expression while fun does?

How is a function binding different from a variable binding? The evaluation of the expression is delayed until
calling.

### Function call

A function call is a special type of _expression_.
Syntax: `e0 (e1...en)`.
Type checking: e0 should have type `t1*...*tn -> t` for all matching e's.
Evaluation: Assuming e0 is a function now (because of type checking) evaluate the functions body with an extension of
the function environment with all arguments set from current environment.

### Pairs

Syntax: (e1, e2)
Type: t1*t2
Evaluation: e1 is evaluated to v1 and e2 to v2 to make the pair of values (v1, v2)

### Lists

Less flexible in that all values must be of the same type but more flexible in that in can have an 'infinite' or unknown
length.

Lists are just built in datatypes. They can be pattern matched like any type you might create.

I don't really understand the benefits of immutability as explained here.

In imperative programming, programs are considered a sequence of commands that modify computer memory.

## Data Types

Having an idea of what your data, the relationships within it is part of program design. Dan defines the three basic
_composed_ data types: _each-of_ (AND), _one-of_ (OR) and _self-recursion_.

With these three notions you can build any type in ML. It's similar to the set of instructions that can define all
algorithms (although don't think there's a proof for it).

In computing, we often put structure on the information manipulated. As Sean Carroll says, spaces are just sets with
some structure on it. So if we've a collection of numbers we define relationships between elements of that collection.

ML allows the creation of our own datatype. There is base information set of numbers, strings and bools but all on top
of that is a composite using three rules of composition:

**Syntactic sugar**: tuples are just a different way of writing records. Can describe the same semantics to simplify
understanding and implementation. Is this not just like abstraction? Are all programming languages not syntactic sugar.

You can structure langugae features around these fundamental notions of data types. For instance, ML has the notion of
OPTIONS, that represent one-of types. Pattern matching is also a cool tool to access the components of a type.


# Journal

## 02/06/23 12:54:00

* `let` expressions are a bit like Hoftstadters fancy rules, that only exist in the nested contest.
* The usefulness of `let` expressions is style (example?).
    * The notion of private helper functions, define is just for the scope of the function.
    * Can be useful for storing the value of a computation. Say, if its used in an if statement, you don't need to keep
      repeating the computation.
* The general pattern here is the idea of _scope_, that bindings are defined in a transient nature.
* Options are used for the case where you want to notify if something is 'found'. Rather than returning 0 if not found
  and some number in a function. You would return SOME or NONE. This is a more precise description. If you passed an
  empty list to a function count it would return 0. But what you really want to signify is that no set of numbers were passed.
* Tuples, list and option types are compound types because they are some aggregation of another type.
* Mutability of data means you've to concern yourself with aliasing?

### Datatype

To make one of types we use **datatype** binding.

```
datatype mytype = TwoInts of int*int
| Str of string
| Pizza
```

Pizza, Str and TwoInts are _constructors_, they're a way to create a mytype whose value is of type mytype, for Pizza its
not a function but the value, mytype. Str is a function to component type string of mytype  and int*int for TwoInts.
mytype is a one of composite type whos component type is one of a selection of types.

* ML gives you the `case` expression which 'unpacks' the data type, or checks its composite type.
* It's an if else for the underlying data type, the evaluated expression on that case branch becomes the function
    expression.
* Lists and options are just 'built in' data types.

* Understand what kind of data you want, how you're going to model that in your program and then use the right compound
  types to capture things. I had a situation where I look up value in an inventory, if its present (searching by name)
  then return a certain type, if its not present return another type. The type return from this function should be
  'one-of'.

You can really concisely reprent trees with datatype
```
datatype expr = Constant of int
| Negate of expr
| Add of expr * expr
| Multiply of expr * expr
```

Any type `expr` is a 'tree' structure, e.g. Add(Multiply(Constant(2), Constant(4)), Constant(9)) and you can call a
function that operates _over_ this structure.

```
fun eval e =
    case e of
        Constant i => i
      | Negate e2 =>
      | Add(e1, e2) =>
      | Multiply(e1, e2) =>
```
## 03/06/23 06:59:14

#### Summary

ML then provides a pattern matching mechanism that allows logic to be done based on the composition of some data type.

Constructors are used to create composite data types, pattern matching matches a _constructor_ not the composite
elements of the datatype. It's kind of like saying "if you're history was created in this way then I know what you're
composed of".

The recursive nature of definition types is a pretty cool way to create tree types as noted in `eval` example yesterday.

Recursion is a bastard but being forced to not store the value along the way is an interesting exercise. More about
collecting solutions to sub problems.

* Pattern matching has so far been used of _one-of_ types. It can be used for _each-of_ types also.
* For single case matches, the `val` keyword can be used with a pattern. This also works with function parameter lists?
* There's combinatorial aspect to pattern matches, if else statements to account for any scenario. That's why the `_`
  can be useful as a catch all.

```
fun zip3 list_triple =
  case list_triple of
    ([], [], []) => [] (* A tuple with 3 patterns for a list inside them, will match a triple of three empty lists *)
  | (hd1::...
  | _ => raise ...
```

You account for the cases you want and send the rest to an exception.

Type inference is pretty interesting, there is parsing of the code structure. For instance I have

```
fun officiate(x, y, z) =
...
    helper([], y, z)
```
where y is some dataype with constructors.

This causes an issue where it does not resolve y to the general datatype, but ask you to start resolving the
constructor. I assume its because on the second call here its actually a pattern match, its expecting be to unpack the
constructor.

Nope, it's because I did not use the constructor, I passed in the constructor. If I used it it would return the
datatype. Thanks ChatGPT.

There's a bit of laziness to my code. Submitting for peer review is a good incentive to get off my ass and try and make
it look nice.

Drawing out the elegant was to perform task or algorithm based on language. Because of CT thesis technically every PL is
the same.

## 04/06/23 13:33:13

Without the notion of general types, a function as a first class citizen wouldn't be a useful. You'd have to specify the
return type of the function. In ML it's set to `'a` so any type can be returned by the function.

Anon functions work well as a specification of a really niche use of a function, or a refined scope for the function.
Passing in a function definition as a parameter wont work because its a _binding_, using `let` is an _expression_
something thats evaluated. I think `fn` expressions are just _syntactic sugar_ for the above use of let.

Interestingly, this means that you're function is not bound to anything so it cant be recursively called.

Functional style can be useful when you have a variation of possible computations over the traversal of a data structure.

The example used is the expression datatype from before. If we wanted to have a function that evaluates on all the
constants in our equation (say, check they're even). We can defined a higher order function that applies the function to
the constants in the expression tree and then define that function to be anything we want.

_Lexical scope_ is the idea that the scope, or what bindings a function has defined for it is determined by its
definition environment, _not_ the environment its called in.

These old environments have to be kept around by the compiler etc.

A _closure_ is the _pair_ returned by a function call, the environment it was defined in and the body of the function.

I wonder, is this something ML specifically has introduced? Other possibility is apparently _dynamic scope_. Says he'll
go through the 'why' of these things.

Advantages of lexical scope is that you can understand it just by its definition and environment.

* You can have local variables, the function can name them whatever they want it's not dependent on what environment its
  called in.
* Type checking can take place at function definition.
* Closures can store the data they need. A function like `map` or `filter` dont have to care about what function you're
  passing in and define variables for it. Because a function is independent of the call environment, higher order
  functions like this are more flexible.

An exception is kind of an example of _dynamic scope_, you're hoping that the environment its thrown in has something to
handle it.

Functional programming kind of enforces to use the values you're defining. In other words, why use anything you're not
returning.

Having _iterators_ like that of _fold, map_ and _filter_ allow a nice separation of concerns between the algorithm to
traverse the underlying data structure and the function to be run on each 'node' of that structure.

## 05/06/23 07:13:03

### Currying

Rather than take both inputs to a function as the one parameter, _currying_ allows you to split up the inputs, you put
one in which returns a single valued function, then put the other in. For example

```
fun add(x, y) = y + x
val add = fn x => fn y => y + x
```

The function `add` is the regular function definition. `val add` returns a function, that when call with an input x
returns another input y, that when called with a y return y + x.

Rather than taking the parameter a n pieces of a single tuple take one argument that returns a function that takes
another etc.

Its almost like piecing together the function, I think it should still be read from left to right.

Not to hype it too much but its interesting how persistence can even out a lot of the misunderstanding of concepts, given
that on Friday I was struggling to handle removing an item from a list with recursion and it slowly got better,
hopefully the same happens now with currying.

### Trying to implement pattern matching

For hw3, its making me question if I even understand it at all.

A value is passed with a pattern. The result should be a list of bindings if it matches and none if it doesnt. The list
of bindings can be empty if its not a variable.


## 06/06/23 17:37:21

What are the limitations to pattern matching? Is the whole set of symbols after the fun keyword pattern matchable?

_Currying_ a multiple parameter can also be viewed as a single parameter function that has definite values defined (by
the other parameters)

## 10/06/23 08:59:19
:typetheory:

On to week 5.

I always saw type inference as something the programmer doesn't really do, just waits for the compiler to say something
about it. Probably useful to have this as part of reasoning.

ML is _statically typed_ meaning that at compile time all bindings are type checked.

Systematically go through bindings and constrain their types by the operations being performed on them. Should try
writing out the comments as Dan does to logically infer the types.

**Type inference problem**: Is it possible to give every binding in a program a type such that type checking succeeds.
Infer all the types such that the program would type check.??

Namespacing when you think of it in regards to bindings seems like a more coherent view.


Its funny if I had stuck with the course initially I might have had some of my category theory questions answered
reaching this point.

The same way that utility function can be derived from your preferences, the types of expressions can be determined from
the control structures used in your program. Maybe not a great analogy.

Started watching this talk on type inference: https://www.youtube.com/watch?v=il3gD7XMdmA
- To say, t1 = t2 in the mathematician context is to say that you can _replace_ t1 and t2 in any statement and it will
  still be true.
- The programmer says, this is an _action_ to be performed. Write to t1, the value of t2.

## 12/06/23 18:50:55

How ML type inference works.

* Determine types of bindings infering it from earlier bindings
* It anaylses the binding to determine the facts about it, for instance the operators it uses.
* Assign type variables for undetermined types

Structure defines a module.

Signature enforces types on a module. Module won't type check unless it abides signature.

Abstract types, know the type exists but not its implementation.

## 31/07/23 07:07:00

Parenthesis are used to group things more so than specific syntax. Racket evolved out of Scheme.

## 01/08/23 07:19:59

Each let expression has different semantics, so we can use the most convenient for our use case. It also forces
understanding of evaluation rules.

* Let expressions are evaluated in the environment _before_ the let expression.
* Let* works like ML let, we would have to nest our previous let expression to get this functionality otherwise.
* Letrec evaluates in the environment with _all_ the bindings.

A list is a recursive set of cons pairs or tuples.

Functions are only evaluated when called. This is useful in if statements, that the expressions are considered zero
argument functions and only called if previous 'branches' fail. This is _delayed evaluation_ put your expression in a
function.

* *e* is evaluated.
* *(lambda () e)* returns a procedure, that when called evaluates *e*.
* *(e)* evaluate e to a zero argument function (thunk) and call it.

## 02/08/23 06:48:28

* In Racket and ML, for a function call, arguments are _eager_ evaluated, they are evaluated before the call starts.
* Conditionals are not eagerly evaluated. This is essential to recursive calls. Evaluation of the base case would not
  'stop' the recursive calls.
* Lazy languages are languages where the evaluation of computation are _remembered_.
    * This is the 'best of both worlds'. Where we don't want to compute it unless we need it, but if we do compute it, most
      likely we'll have to compute it more than once so we want to store the answer.
* Implementation of force and delay is cool. Its creating a 'one-of' type. My-delay creates the one of type with NONE,
  as in, just the thunk. Then force comes along and calls it if it needs to be called giving it a value.
* Streams represent infinitely sized things.
* Memoization keeps a table of values for function calls.
