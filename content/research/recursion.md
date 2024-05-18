@algorithms
@computation


> At its essence, computer science is the study of problems and their solutions.

# Towers of Hanoi

The idea that you could know the steps to complete a process and not be able to come up with some way of encoding it.

The steps for 3 pegs and 3 rings is fairly easy to see. What is that ultimate jump then that makes it difficult to
visualise as an algorithm?

**Recursion:** Solving a problem, where the solution depends on solutions to smaller instances of the same problem.

What's the smallest instance of the TOH problem? When its just one ring.
Solution is to just move A to B.

If N=2, you need to move A to C, A to B then C to B.

Its only when you have three that you see the need for the 'helper' peg.


