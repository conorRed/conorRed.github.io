# Notes on Model thinking course
#model-thinking

Goals
- Gain practical knowledge and experience building models.
- Construct document to explore this space, to create an argument for it.

## How models make you more intelligent (Reason better)

Models are the new 'lingua franca'. They tie us to a mast. You can't have contradiction. Proverbs
for instance often have this contradiction. When to know which one to use. Two heads are better than
one is direct contradiction of too many cooks spoil the broth. Models operate within a formal
system. Two theorems that disagree on the optimal action, make different predictions, or offer
distinct explanations must make different assumptions
- Tying ourselves to the 'mast of logic'.
- Uses Tetlocks book, the only people who are better than chances at predicting the future are many
  model thinkers, specifically formal models.

Models help us find the conditions under which each proverb is true.

## Models help us communicate.

## Understand and use data.

- Understand patterns.
- Predict points of data.
- retrodiction


Peer effect is powerful. Moderate thresholds can cause a runaway effect on high thresholds for
action. Collective action will happen with lower thresholds but also if theres more variation in
thresholds.

## Agent-Based model

- Agents.
- Behaviour.
- Aggregation.

## Aggregation

Thinking of all these agents with their own strategies or behaviour, can we make predictions about
the aggregate?

The Central Limit Theorem says that a random variable of the aggregate behaviour will be normal
provided the individual behaviours are i.i.d ?

# Human Actors

## Rational Actor

- You have some goal. This model assumes that you take the action that gets you closest to that
  goal.
- Rationality does not assume selfishness.

## Behaviour

When modelling we might choose to incorporate things like loss aversion and hyperbolic discounting.

## Rule based behaviour


- Fixed: Decision only depends on me.
- Adapted: depends on other people or on what happens.

# Linear Models
#statistics

In a linear relationship the amount of change in one variables **does not** depend on the amount of
change in the value of a second variable.

- A linear regression model finds a line that minimises the distance to data points.
- The closer the regression line is to the data, the more data the model explains.
- Often an error term is added in the regression model to account for confounders.
- To choose the best linear model you take the error between a general line $y = mx + b$ and each
  data point. Create a big massive equation by adding each error and solve for m and b
- Linear regression tells us the sign, significance and magnitude of the coefficients of the
  independent variable.

## Big coefficient thinking

Page highlights that while its useful to take evidence based approaches, to pull levers based on
larger coefficients. It can create a false sense of what is good. For instance, creating larger
buses vs building out train infrastructure. Big coefficients are dependent on the data you already
have so they will more than likely reinforce its structure.

>  Policies based on big coefficients guarantee improvements but rule out new realities that involve
>  more fundamental changes.

# Central Limit Theorem

Uses a confusing example of a small school vs regular sized schools. That the lower the sample the
higher the standard deviation will be due to the *square root rule*. This means that the highest and
lowest scores are more likely to be seen in small schools.
- If students scores in the population are drawn from a general distribution with mean 60 and standard deviation 20.
- If small schools have 100 students and large schools have 600.
The square root rule says that the standard deviation of the mean of N independent random variables
each with standard deviation $\sigma$ is
$$\sigma_{\mu} = \frac{\sigma}{\sqrt{N}}$$
- For small schools, the standard deviation is 2.
- For large schools, its ~0.8.
- If we would consider a school with a mean of 65 to be high performing. This is ~3 standard
  deviations for the small schools
- This is almost totally impossible to see in large schools though.(> 6 standard deviations).

## Log-Normal Distributions

If you multiply a set of 20 random variables selected from a uniform distribution between 1 and 10,
you'd see something like the following

![](pasted_img_20240407080125.png)

There are many outcomes near zero but not so many higher valued outcomes.

> The length of the tail in a lognormal distribution depends on the variance of the random variables
> multiplied together. If they have low variance, the tail will be short. If they have high
> variance, the tail can be quite long


