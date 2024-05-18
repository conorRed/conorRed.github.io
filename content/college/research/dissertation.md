---
title: Dissertation
author: Conor Redington
bibliography: dissertation.bib
Last Modified: 2023 Jul 27
abstract: |
    > we may observe, in every art or profession, even those which most concern life or action, that a spirit of accuracy,
    > however acquired, carries all of them nearer their perfection, and renders them more subservient to the interests of
    > society. 
---



<!--
# Structure

* Introduction (set up the problem)
    * (situation) TCD LCA, what it is and highlight that it aims to address transparency.
    * (problem) how do we add to this goal, how to contribute.
    * (response) uncertainty analysis
    * How this paper chooses to analyse uncertainty in LCA
        * (situation) LCA as a decision support model .
        * (problem) Requires as accurate an approach as possible.
        * (response) literature on uncertainty classification for modelling.
    * Representation of uncertainty
        * (situation) uncertainties can be intepreted in very different ways effecting decisions
        * (problem) how to deal with misinterpretation
        * (response) How we might represent this for max impact.
* Literature review concerned with understanding LCA uncertainty analysis
    * (situation) There is a wide range of ideas of uncertainty and uncertainty in LCA's.
    * (problem) linguistic formulations or qualitative uncertainty might not give us much information.
    * (response) characterise the different types of uncertainty and formalise what can be formalised.
    * LCA uncertainty literature and environmental modelling uncertainty literature overview.
    * Common approaches to dealing with uncertainty in LCA's
    * (problem) how to choose the relevant interpretation
    * (solution) An LCI as a template decision making model.
            * What is an LCI, how does this LCA fit the LCI description.
            * Develop idea of computation representation of LCA terms (like unit processes).
        * Uncertainty classified within a model normally parameteric.
        * Classified using LCA as decision support tool (@walker2003).
            * Identify with diagrams particular uncertainty being addressed and its relation to LCI.
        * Limitation of models and how that relates to the model created.
    * Representation of uncertainties.
        * How interpretations vary based on presentation.
        * The value of information in decision making how this misinterpretation can effect decision.
* Methodology 
    * What given approach was, why it was chosen.
        * Hope was to have a longer lifecyle
        * Create a shared language.
        * Dynamic
        * Idempotent.
    * Discussion on input distributions.
* Results
    * Hopefully a defined analysis for some unit processes. At least sensitivity analysis.
    * A sensitivity analysis for all modelled unit processes. Heuristic for better data.
    * A propagation of the feedstock mass through all the unit process. Gives us a range.
    * A propagation of inputs through random sampling of one unit process through the others.
    * All unit processses random sampling.
* Consider correlations between input parameters.
-->

# Introduction

The International Civil Aviation Organisation forecasts aviation demand to grow by 4% per year from 2015 to 2045.
Currently, aviation accounts for 2% of global $CO_2$ emissions. This growth rate implies a doubling of current air
travel demand in the next 20 years. 

Aviation is unique in its ability to decarbonise. Unlike road vehicles, current battery technology is not feasible for
electric commercial aircraft due to the substantial weight it would add. Aviation is a very highly regulated industry;
any alternative fuels must undergo strict and extensive testing before they can be certified for use.

Sustainable Aviation Fuels (SAFs) are a form of aviation fuel that have lower lifecycle $CO_2eq$ emissions than fossil
fuel generated aviation fuel. SAFs are produced to meet the same physical and chemical requirements as fossil fuel
generated fuels.

An Life-cycle Assessment (LCA) is a process to determine the environmental impacts and resource use of a product throughout
its lifetime. The ISO 14040 specification guides an LCA through specifications of a template to be applied for the
particular product scenario. 

There is a growing interest from airline companies in SAF to be their fuel of choice in a portion of their flights.
LCA's provide a ranking of options according to some criteria (CO2eq).

The TCD LCA is concerned with the lifecycle of SAF production through the HEFA conversion process. It aims to be
comprehensive in its model development being aware of transparency of replicability which is currently lacking in the
field (p.28 Arons report). The following uncertainty analysis hopes to contribute toward that effort providing as high fidelity and output
for the model as possible.

In an LCA context, uncertainty is an expression, in terms of probability of everything we do not know. This includes
random and systematic errors in measurement as well as epistemic uncertainty (@hauschild2018).

In the following paper, an LCA is considered a deterministic decision support model @uusitalo2015. It's output should inform decisions
by providing a realistic picture of outcomes. 

# Literature Review

The idea of uncertainty is core to the foundations of fields like probability and statistics. The two broad classes of
what we do not know are aleatory and epistemic uncertainty (O'Hagan). Aleatory refers to random variability where no
amount of information will increase or certainty. Epistemic is uncertainty due to lack of knowledge. In theory,
epistemic uncertainty can be reduced with more information (no matter how hard or infeasible such information is to be
obtained). In more informal terms, aleatory is the unknowable while epistemic is the unknown. These two classes offer a
useful paradigm to start exploring uncertainty as the help us determine irreducible vs reducible sources of uncertainty.

The task then is to determine the sources of uncertainty and classify them according to the reducibility.

The standard defined by the Bureue... is centers its uncertainty analysis around experimental measurements and their
deviations. Uncertainty in an LCA takes on a more
qualitative form and identification of sources of uncertainty can become difficult without some method to classify the
assumptions being made at all points in the assessment. Uncertainty analysis are rarely done in LCA's and a further
point is made regarding the importance of uncertainty analysis in LCA's due to the nature of their use in decision
making. The life cycle inventory phase is of particular interest in this report. This phase is where a model is
developed, based on the LCA practitioners knowledge, to output results in the functional unit that are used in the next
phase of the LCA, the life cycle impact assessment.

## Uncertainty in LCA
_the qualitative fuzzy notions and how they get narrowed down to what can be quantized which is parametric uncertainty_

Any LCA has a large amount of assumptions that need to be made at all stages, from goal and scope to impact assessment.
All these assumptions have some element of uncertainty attached to them. The first task in an uncertainty analysis is to
evaluate the sources of uncertainty in an LCA.

There is no generally agreed upon classification of uncertainty in an LCA. Hujibergs 98 defines a class of
uncertainties:
* Temporal variability (seasons).
* Spatial variability (geography, population density).
* Parameter uncertainty (inputs to representation calculations)
* Model uncertainty (algorithmic representation of process).
* Uncertainty due to choices (in goal and scope, functional unit, system boundaries).

Bjork added 

* Epistemological uncertainty (relating to lack of knowledge of physical phenomena).
* Mistakes.

@hauschild2018 added a further relevance uncertainty relating to whether the associated impact actually maps the area of
concern.

These uncertainties appear in different measures at different point in the LCA. Relevance uncertainty is related to the
application of the LCA results and whether the goal and scope is accurate to its intended application. Variability,
spatial and temporal can have statistical properties or be completely unknown. These general categories highlight the
qualitative aspects to LCA uncertainty and the use of language in further clarifying or confusing the sources of
uncertainty.

The most widely used categories are: parametric, model and scenario. Parametric uncertainty relates to
variability and uncertainty of the inputs to the model. Model uncertainty relates to lack of knowledge about accuracy of
the equations and concepts used to the 'real world' causal mechanism. Scenario uncertainty concerns variability in the
state of the world for different use cases of the model results.

Parametric uncertainty analysis is the most common form of analysis done in LCA's. This does not imply that it is the
source of the most uncertainty. @lloyd2008 that more assumptions and value judgements are present in scenario uncertainty
compared to inventory analysis related uncertainty. The uncertainty and variability associated with the model and
parameters is completely concerned with deviation from a model result. It says nothing about the uncertainty attached to
how these results are used or interpreted in decision making.

Parametric variability normally refers to a statistical pattern being present in the input parameter, in this case its
information that can be used to define its distribution. Input uncertainty refers to an actual lack of knowledge about
the value an input takes on.

## TCD LCI -> Model
<!-- Defining the scope of uncertainty to be analysed (within the model complex) -->

An LCA is considered a deterministic decision support tool, the impact assessment generated by an LCA is dependent on
model calculations that can have uncertainties along with the initial uncertainties of input data assumptions and
sources. There is more qualitative uncertainty in the impact assessment stage as value judgements may play a larger
role (@lloyd2008).

During the life cycle inventory (LCI) analysis phase of an LCA the collection of data and the modelling of the flows to,
from and within the product system(s) is done.

@hauschild2018 details 6 steps for LCI analysis implementation:

1. Identifying the processes of the system to model.
2. Planning and collecting data.
3. Constructing and quality checking (?) unit processes.
4. Constructing model and calculating results.
5. Preparing base for uncertainty analysis.
6. Reporting.

Figure showing unit processes in fuel production. Each unit process can be considered a function taking input flows and
producing output flows.

This paper deals with steps 4 and 5. The rest of the implementation in performed in Liam Mannion and Aron Bells work.
The calculation of an LCI is dependent on the representation of the model. Due to the checks and balances nature of the
LCI phase a common format is to construct the model using Excel. This offers limitation (as detailed below).
(@heijungs2002) details the use of matrix inversion to calculate elemental flows when the unit processes are represented
in a matrix.

Flows are considered in an LCA as products, materials or energies that have a time dimension. An input flow is considered
a product, material or energy flow that enters a unit process with an output flow a product, material or energy flow
that leaves a unit process. Elementary flows are considered a single substance or energy entering the system being
studied that has been drawn from the ecosphere without previous human transformation,  or single substance or energy
leaving the system being studied that is released into the ecosphere without subsequent human transformation
@hauschild2018.

The output of the LCI is an account of element flows for a set of processes. Elemental flows are flows that leave the
system boundary. The scope of uncertainty analysis ed relates to model uncertainty. Uncertainty in use of the
information is not examined here.

The output of the TCD LCA is gCO_2/RPK. The scenario chosen is a particular route and emissions for this route represent
the functional unit.


## Uncertainty in Representation/Modelling 
<!-- Defining the 'model context' and what uncertainty within this will be analysed. -->
<!-- Using the diagram as a framework to swap models, say if doing more than just fuel production --->

Models are by definition a description of reality in some language. Computer models are algorithmic representations of
reality. While there is great power in the reach of algorithmic representations some element of abstraction of the
natural system is always present. This is known as the complexity at the heart of software (Evans) in the Software
Engineering domain and is a well studied property of environmental models. (@warmink2010) provides a framework based on
Walker for evaluating uncertainty in models that form the based of decision making.

The broad categories defined above of parametric, model and scenario have parallels in decision support tool modelling.

@walker2003 identifies the three dimensions of uncertainty as 

* Location: where the uncertainty manifests itself within the model complex (diagram).
* Level: can the unceratinty be modelled statistically or through counterfactuals or is completely qualitative.
* Nature: whether to uncerainty is ontic or epistemic (i.e. if further information will decrease it).

@warmink2010 provides a decision tree for categorisation of identified model uncertainty. 

## Approaches

ISO 14044 requires an uncertainty analysis for public comparative studies. Despite this, a recent study by @bamber2020
shows that only 20% of LCA studies, for a period between 2014-2018 published an uncertainty analysis with their LCA. The
number of LCA's published grew in that time period with a corresponding decline in uncertainty analysis published.

The most common uncertainty classification that is analysed is parametric or quantity uncertainty. Context and model uncertainties
are linked to linguistic formulations as we have seen and are therefore not as easily determined as quantity uncertainty
(@igos2019).

LCA practitioners aim to specify quantity uncertainty with a range of plausible values for the quantity. This range aims
to capture the variability (deviations due to random processes) and uncertainty (accuracy and representativeness
epistemic uncertainty). Probability distributions are most commonly used to provide a measure of belief across the range
however fuzzy sets have been used and argued to capture expert belief and supposedly simpler to implement (Tan). 

Current LCA software uses probability distributions to capture uncertainty.

Current LCA software has sampling capabilities with all providing Monte Carlo sampling methods. 
Igos contains a comparison functionalities in terms of uncertainty representations.

## Representation of Uncertainties

LCA's can be used directly in policy decisions to determine the likelihood value of outcomes. In representing and
presenting uncertainties its important to be aware of the target audience, predicting how results will be perceived and
a clear idea of what is to be communicated @hauschild2018. 

An audience has a tendency to interpret their own story from data and emotions can play a large role in the message that
uncertainty information conveys.

Uncertainty is a vague term with intuitive interpretations for everyone. It's important to make an effort to see beyond
ones own interpretation to others' interpretation.

# Methodology

Abstraction and assumptions made increases the closer the modelling comes to software.

## Sensitivity Analysis

A simulation of how the ouputs of a modelled 'system' is influenced by its inputs. The LCI represents a mathematical
model of the natural system that governs the product flow. Factors, or inputs of interest, can include boundary conditions and
input parameters. An SA is considered good practice as it allows the exploration of causalities in the system,
dimensionality reduction so only the important factors become relevant and a heuristic for more efficient data
collection (@razavi2021). It's also considered a recommended practice based on a joint manifesto from a large number of
researchers (Saltelli).

# Results
Analysis of one unit process should give us a template of the rest. 

# References
