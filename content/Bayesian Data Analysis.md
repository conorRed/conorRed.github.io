From Gelman

The process of Bayesian data analysis can be idealized by dividing it into the following three steps:

1. Setting up a full probability model—a joint probability distribution for all observable and
   unobservable quantities in a problem. The model should be consistent with knowledge about the
   underlying scientific problem and the data collection process.
2. Conditioning on observed data: calculating and interpreting the appropriate posterior
   distribution—the conditional probability distribution of the unobserved quantities of ultimate
   interest, given the observed data.
3. Evaluating the fit of the model and the implications of the resulting posterior distribution: how
   well does the model fit the data, are the substantive conclusions reasonable, and how sensitive
   are the results to the modeling assumptions in step 1? Inresponse,one can alter or expand the
   model and repeat the three steps.

And from Bayesian computing

At a high-level we can describe the process of constructing Bayesian modeling in 3 steps.

- Given some data and some assumptions on how this data could have been generated, we design a model
  by combining and transforming random variables.
- We use Bayes’ theorem to condition our models to the available data. We call this process
  inference, and as a result we obtain a posterior distribution. We hope the data reduces the
  uncertainty for possible parameter values, though this is not a guarantee of any Bayesian model.
- We criticize the model by checking whether the model makes sense according to different criteria,
  including the data and our expertise on the domain-knowledge. Because we generally are uncertain
  about the models themselves, we sometimes compare several models.

The goal is to produce a robust model. One that can be update with new data. It doesn't specifically
require Bayesian inference to make the model. The model can be constructed from some granularity of
linear functions.

"Statistical inference is concerned with drawing conclusions, from numerical data, about quantities that are not observed."

### Estimands

Unobservable quantities for which statistical inferences are made. Two general classes:

- potentially observable quantities, like future observations of a process.
- unobservable quantities, like parameters that govern this process.


[^1]: BDA
[^2]: https://bayesiancomputationbook.com

