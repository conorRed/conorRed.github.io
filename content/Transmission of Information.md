#information-theory
- #Author Hartly
- Hartley introduces the idea of conveying meaning through communication
- __In any given communication the sender mentally selects a particular symbol and by some bodily
  motion, as of his vocal mechanism, causes the attention of the receiver to be directed to that
  particular symbol. By successive selections a sequence of symbols is brought to the listener's
  attention. At each selection there are eliminated all of the other symbols which might have been
  chosen.__
- __Inasmuch as the precision of the information depends upon what other symbol sequences might have
  been chosen it would seem reasonable to hope to find in the number of these sequences the desired
  quantitative measure of information.__
- So, here information is a quantity we define that converges on the idea of meaning in
  communication
    - __As the selections proceed more and more possible symbol sequences are eliminated, and we say
      that the information becomes more precise.__
- Information has a correlation with the amount of possible paths to go down, in symbol terms
- We dont really have a cap on this quantity though. Does it converge towards anything?
- We should ignore any psychological or human bias in the communication in terms of personality,
  style etc. and focus on the probability of the occurrence of the next symbol based on the previous
  symbol provided on the receivers end. A metric of intelligibility on the message on the receiver
  side?
    - __Hence in estimating the capacity of the physical system to transmit information we should
      ignore the question of interpretation, make each selection perfectly arbitrary, and **base our
      result on the possibility of the receiver's distinguishing the result of selecting any one
      symbol from that of selecting any other**. By this means the psychological factors and their
      variations are eliminated and it becomes possible to set up a definite quantitative measure of
      information based on physical considerations alone.__
- Ok, so if we send a message with a given alphabet $$s$$ of size $$n_1$$ then at each selection
  stage we have $$s^{n_1}$$ choices. So for example, to send a 5 letter word in english we have
  $$26^5$$ choices or combinations that are possible
- Then each each character is defined by $$n_2$$ __primary selections__ as oppposed to the
  __secondary symbols __ which are the intelligible characters the number of possible sequences is
  $$s^{n_1n_2}$$
- If $$s$$ is fixed $$n$$ ($$n_1*n_2$$) is constantly increasing. This would mean there would be an
  exponential increase in our current information measure and each new symbol would increase the
  $$n$$ by a factor of $$s$$. This isn't very realistic unless every communication built up to some
  revelation right?
- In order for processing on a communication line also, transmission work shouldn't increase.
  Therefore our information measure should be proportional to the increase in transmitted symbols
- Based on the underlying symbology, on each new selection what is the actual increase in
  information ($$K$$). As opposed to whats the new measure of information at the new selection.
- More intuitve to use log as opposed to number of possible sequences
-
