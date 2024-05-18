# LCA
_My understanding of what a Lifecycle Assessment is_
_From main textbook by Hauschild_

# Goal

Defining a goal generally contains 6 aspects:

* Intended applications of LCA study results.
    * Examples: Comparing environmental impacts of good or service (or processes that develop that good or service),
      developing labelling criteria, exploring what if scenarios.
* Limitations of study.
    * Limitations related to the goal and scope of the study, that the results should only be used within the bounds
      defined in these stages (for example, steel might be more carbon intensive to produce than ingot but you shouldn't
      deduce that one is more environmental sound a material to, say, build a car because density variations come into
      play).
* Reasons for carrying out the study.
    * Should be clearly connected with the applications of the result (step 1).
    * Theres magnitudes of scale to the outcome of decisions here, if the LCA is being used for a decision. Its a matter
      of how many systems are being affected.
* Target audience (reporting/communication).
* Comparative studies to be disclosed (reporting/communication).
* Statement of influential actors (reporting/communication).

# Scope

What product systems are to be assessed and how that assessment should take place.

Unit processes have inputs and outputs in the form of flows (I'm thinking of this in the Meadows sense of stocks and
flows).

What makes _resource flows_ different from material and energy is that they are not a product of another flow. It has
not come from a natural process. In the same vein, output flows of emissions and waste are elementary because they are
not 'consumed' by another unit process.

**Elementary flows**: A single substance or energy entering the system being studied that has been drawn from the
ecosphere without previous human transformation,  or single substance or energy leaving the system being studied that is
released into the ecosphere without subsequent human transformation”.

* LCA divides the world into a technosphere and an ecosphere, The technosphere can be understood as
  everything that is intentionally “man-made” and also includes processes that are natural in origin, but manipulated by
  humans, such as photosynthesis when part of an agricultural system. 
* All unit processes of an LCI model belong to the technosphere. 
* The **ecosphere** is sometimes referred to as “the environment” or “nature” in layman’s terms and can be understood as
  everything which is not intentionally “man-made”.

## Functional Unit

The functional unit of the product should answer the following questions about its function:
* What? (qualitative)
* How much? (quantitative)
* How many times/how long? (quantitative)
* Where? (qualitative)
* How well? (often quantitative)

A **reference flow** is the amount of product needed to meet the function of the functional unit. Flow in this sense is
just considered a steady-state input, not a complete pathway through the model.

# LCI

The output of a Lifecycle inventory analysis is an inventory of elementary flows used as the basis for the subsequent
life cycle impact assessment phase.

(@hauschild2018) identifies 6 phases:

1. Identifying the processes of the system to model.
2. Planning and collecting data.
3. Constructing and quality checking (?) unit processes.
4. Constructing model and calculating results.
5. Preparing base for uncertainty analysis.
6. Reporting.

# Uncertainty 

* Starts off chapter 11 with the example of uncertainty around two point estimates. If the distribution of values that
  the point estimates can occupy overlap then different conclusions can be drawn. Where in the initial case a point
  estimate may be larger or smaller than another if its uncertainty is large enough it might be the opposite to the
  other in _most_ cases.
* Uncertainty is a _measure_ (primarily numerically) of the degree to which you're off from the truth.
* Truths are hard to come by so reference measurements are often used. For instance, you might estimate the SAF yield
  based on a wide array of those produced but it's 'overridden' by some calculated value of Ryanair's actual fuel SAF
  yield. This reference measure has its own uncertainty associated with it through variability.
* Variability often occurs in natural phenomenon, for example a normal distribution where in any set of height
  measurements you'll have variability its just a matter of getting closer and closer to the actual variability.
* _Accuracy_ describes the closeness of a measurement or variable to its 'true' or reference value.
* _Precision_ is a quality of repeated measurement or experimentation giving a similar result every time or a wide
   spread of results every time.
* From the example in the book, accuracy refers to how closely the unit or measure captures what it is we actually care
  about. Fro instance GWP over 100 years is much more accurate at representing total effects of GHG on the population
  but because as time moves forward the patterns used become less deterministic this value is not as precise. Its
  something we want to make precise though.

![Accuracy vs precision](img/accuracyvprecision.png)

* The _parsimony principle_ as a leitmotif for LCA models.
* It is better to be "vaguely right than exactly wrong". 
* There are three general uncertainty types: parameter, model and scenario. The beginning of section 11.3 breaks down the
  sub classes of these.

Parametric uncertainty is probably the most popular studied but it doesn't mean it has a large weighting in the
uncertainty of the model or most contributing or important uncertainty in what is being analysed.

From section 11.4.2 I'm confused as to what is referred to a _correlated parameters_ and how that affects uncertainty.
I think its something like, if you've two pdfds that represent the distribution of your impact score for two scenarios
that possibly share input parameters (with associated uncertainty).
