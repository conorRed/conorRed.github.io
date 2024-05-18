---
title: Presentation Notes
author: Conor Redington
bibliography: first_draft_refs.bib
Last Modified: 
---

What is the intent of this communicaiton?

Is it to persuade?
To inform? To inform.

Bundling primary and secondary information. For instance, heuristic towards better data collection, give example.

Fully intent on listening during q and a. Not worried.

Four building blocks of effective communicaton

* People
* Message
* Listening
* Context

# Structure

Goal is to convey what I've been working on and why.

Should state clearly

* About project, objectives and motivation.
    * Heuristic towards better data collection.
        * Sensitivity analysis.
    * Transparency in data collection.
        * How might the model do this.
    * One of my own goals of doing something useful.
        * Value of information.
* Methods and work plan.
    * Construction of Python version of the model.
* Results to date.
    * Perturbation analysis.

---

## About the Project

The overall goal of my project is to do an _uncertainty analysis_ on a Life-cycle assessment model developed by Liam and Aron. 

The output of an uncertainty analysis on any model is to assign a numerical value that represents the range of values
that can credibly be attributed to the output of the model.

An uncertainty analysis can offer an insight into the 'quality' of the model output as well as offering a heuristic for
model developers towards use of efficient time and resources in data collection (shown later with sensitivity analysis).

## Work plan so far

Narrowing the focus slightly, from reading Aron and Liam's reports, an issue highlighted in the current LCA literature
is the lack of transparency in models used.

The guy's LCA model hopes to:

>  aims to increase the specificity of SAF LCA results based on the feedstock used, production process and geographical location.
p.19 of Arons report.

>  it was observed in much of the literature that data was withheld or ignored in the reporting stage

An uncertainty analysis in general hopes to put a stamp of quality on to the results obtained from a model. The work of
the last month focused on challenges associated with knowledge representation and repeatability of simulations. At
the end however, I will show that it still offers use in the ultimate goal of analysis ING the quality of data
collection.

My 'miniproposal' stated that I would take an iterative approach to 'modelling the model'. This involved taking as
small a chunk of the model and attempting to replicate it in code. This allows that portion of the model to be run as
many times as we want and with flexibility (varying of inputs and anything we else might be a parameter).

Call what could vary from run to run, a parameter.
Define a model, make it unambiguous. I see it as a function that is run.

## Why would I want to do this?

1. The model is detailed, the fidelity to which I could and should understand it is limited. My background is in
   software development, one of the best ways to understand a concept is to see if you can program it.
2. The model in its explicit form is a excel document. This has a rigidity to it. If we look at the feedstock
   composition for example, changing the composition involves manually changing values in the Excel sheet and looking at
   how that propogates through the complex web of calculations that are written into the sheet. This is technically a
   simulation but very inflexible. My hope was to write scripts that did all the calculations but allowed a more dynamic
   way to interact with changing values in the model and looking at the output.

Focused on the fuel production aspect of the model. The thinking was to take an iterative approach. In Software, there
is a notion of an MVP, something that works, then you iterate. The main idea being that you always have something that
works. Taking that thinking, 

The first few weeks, I tried to make a basic version of aspects of the model. This means that wrote some python scripts
that replicate the calculations described in the TCD model. 

The goal however, was not to recreate Excel. What the scripts do is ultimately an embodiement of my knowledge about the
model. Having the model as a Python 'program' allowed it to be run with different parameters.

## Going Forward

The hope is also to develop intuitions about assumptions, so that at any level of granulairty of running the model, a
user can see the assumptions made.

Development of a formal model to propagate uncertainty.

## Sensitivity Analysis

To show the use of the scripts created, a simple pertubation analysis was done on the 'filtration' process, a particular
step in the fuel production process. This process should be technically no different to any other as defined in the
code, so there is no reason this same analysis can not be done for any process that is coded.

A sensitivity analysis acts as a first step heuristic towards better data collection.
