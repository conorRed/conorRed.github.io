# Problem Sheet 2 (Recitation 2)

1.

Outcomes = {H, T}, {H, H}, {T, T}, {T, H}

Alice is saying that the conditional probability is the same as the Bayes probability?

In the first case, what's the probability we get a head based on the fact that the first toss is a head, which is 1/2.

Then, what's the probability we got a head on either toss given we got a head on the second toss.

Going to have to get guided through reasoning for this one!

In set notation:

A: event representing first head.
B: event representing second head

* $P(A \cap B | A)$ the probability of the events A and B happening given that event A has happened. 
* $P(A \cap B | A \cup B)$ the probability of the events A and B happening given that event A has happened. 
* That's interesting how we can generalise. Alice is saying that the first quantity is no smaller than the second
  quantity.

Might come back to this.


3.

a.

P(W) = P(W | 1) + P(W | 2) + P(W | 3)

P(Play against type 1) = 0.5
P(Play against type 2) = 0.25
P(Play against type 3) = 0.25
P(W | Given play against type 1) = 0.3
P(W | Given play against type 2) = 0.4
P(W | Given play against type 3) = 0.5


What is the P(W).

P(W & type 1) = P(play against type 1)* P(W| given play against type 1) = 0.5*0.3
P(W & type 2) = P(play against type 1)* P(W| given play against type 2) = 0.25*0.4
P(W & type 3) = P(play against type 1)* P(W| given play against type 3) = 0.25*0.5

Sum them up and you get a 3/8 probability.

b, 

Bayes Rule Given that you won whats the probability it was a player type 1.
Think of it like the book explains. The events player is 1, 2 or 3 is all the events Ai that form a partition of the
sample space, Probability must happen in one of these events.

P(W) = P(W against 1) + P(W against 2) + P(W against 3).

Bayes rule P(against 1 | W) = P(W against 1)*P(play against 1)/P(W) = 2/5.

4.

I know from reading the book that this is worked out in assigning likelihood of finding the 'prize' to strategies. So in
that case, the sample space is strategies.

Strategy 1
Without anyone opening doors, you've a 1/3 chance of picking the correct one.
This is strategy one: 1/3.

Strategy 2
You change your choice when your friend opens the door. You've a 1/3 chance of getting it right and then a 1/2 chance.
So overall you've a 1/2 chance.

Does switching mean you 'actualise' the probability in some sense?

After watching solution video:

If you're initial pick is wrong, switching after door is opened will always win for you.
The probability your initial pick is wrong is 2/3.
So the switching strategy has a two thirds chance of winning.

So the probability of winning if you stay is 1/3, and the probability of winning if you switch is 2/3.

There's no notion of 'actualising'.

* So by staying you're betting on your first choice being correct, that is, 1/3. 
* By switching your actually betting on your first choice being wrong, which is more likely!
* The 'actualising' I was referring to early seems to kind of refer to this notion that you're betting on the fact that
  you were wrong initially.
* Think about justifying your answer intuitively.
* Make assumptions really clear.


