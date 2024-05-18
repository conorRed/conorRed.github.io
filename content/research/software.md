Software
_dump of stuff for me trying to learn about software_


# Design patterns
https://python-patterns.guide/

**The usefulness of learning UML might be to see programs in this way so that patterns could more easily be identified**

* A class should only have one responsibility. You should prefer composition over inheritance.

Think about _axis_ of design. When you have an initial goal of functionality and that _changes_ most likely a design
decision comes into play.

The example used is a Logger class that outputs to a file. Sub classes of this logger output to other things, like
sockets and syslog (giving the message a certain priority). This is a mutation of initial behaviour but in a manageable
enough sense.

If you introduce a filtered logger which has, crucially, different behaviour than the base logger class, then you get an
explosion of subclasses (filtered socket logger, syslog logger etc.). 

You violate the one purpose per class principle if you go back and add a filtering option to the base class. You'll get
large classes this way I suppose.

Instead of defining sub classes which creates this class explosion for new behaviour we have the initial base classes
take an input of source of logging behaviour. You take the initial logging behaviour you want and combine it with the
destination of that log.

## Adapter

What's does here is that we hide the behaviour of the destination file changing behind it as a regular file. So the
initial Logger wants a file, we provide a 'file' in the form where that file just becomes a socket or syslog or
whatever later on. In Python, this is just a class that offers the right methods because of Duck Typing.

## Bridge Pattern

Allows us to define the method that we want logger to use

> Instead of file output being native to the Logger but non-file output requiring an additional class, a functioning
logger is now always built by composing an abstraction with an implementation.

There is no implementation at all in the base class. For instance, initially the Logger will output to file, by default.

## Composite Pattern

`ls` used as a case study here, the notion that ls applies both to files and directories. It reminded me of the
principle of least surprise that you reduce cognitive load by just allowing it be applied universally to avoid logic in
terms of remembering commands or perform if else statements on the users end.

This is the _symmetry_ between the container and its contents.

> If you study the Tkinter library — which is perhaps the most classic object oriented module in the entire Python
Standard Library — you will find several more instances where a method that could have been limited to a few widgets was
instead made a common operation on them all for the sake of simplicity and for the convenience of all the code that uses
them. This is the Composite Pattern


# Talks

https://www.youtube.com/watch?v=pGq7Cr2ekVM

# Influences

* Ken Thompson.
* Grady Booch.
