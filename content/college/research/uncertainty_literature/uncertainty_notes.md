---
title: Notes on Uncertainty Reading
bibliography: uncertainty_notes_refs.bib
Last Modified: 2023 Jun 21
---

# Notes on [@standardDoc]

Uncertainty reflects the lack of knowledge of the value of the _measurand_.

It can be expressed with a range of statistical parameters like standard deviation.

Measurement: set of operations with the object of determining the value of a quantity.
Measurand: particular quantity subject to measurement.
The result of measurement is always an approximation of the real quantity value.

It talks about the expected value of error being zero?

Standard uncertainty is just another word for the uncertainty parameter as a standard deviation.

## Type A vs Type B

Type A seems to derive the uncertainty from a distribution based on repeated observations whereas Type B uses an assumed
distribution based on degree of belief an event will occur. It seems more a matter of interpretation of probability.

Didn't quite get 4.2.4 - 4.2.8.

In most cases the best estimated value of a variable is the arithmetic mean.

## Type B

We need to assign some degree of belief that the input lies in some interval. You can assume a normal distribution from
there and look at parameters for that distribution. This would model your beliefs about the input.

## Annex D

When the term _measurand_ is used my mind goes to the energy in kJ of the filtration process.

> In principle a measurand can not be completely described without infinite information.

Typically the measurand specifies conditions that would influence it theoretically. The example used is

>  The velocity of sound in dry air of composition (mole fraction) N 2 = 0,780 8, O2 = 0,209 5, Ar = 0,009 35,
and CO2 = 0,000 35 at the temperature T = 273,15 K and pressure p = 101 325 Pa.

### The measured quantity is an approximation of the measurand. 

The resulting _quantity realized from measurement_ is an approximation of the measurand.

In the example above, all the conditions are approximated. 

---

Annex H contains examples. Could be useful.

A measurand is a quantity to be measured, a value we want to know. The measurement is taken under conditions,
some of which we try to quantify. The conditions we try to fix and quantify are also variable. 

* Fidelity of condition measurements (the device used to measure temperature for instance).
* Incomplete knowledge of physical phenomena (we might not have ultimate detail on all the variations that could affect
  the measurand).

### Example :TODO

Measurand: the _mass_ of linoelic acid in 100kg of sunflower oil (measurable quantity).

How is the measurement obtained? A mass of sunflower oil is obtained that is compared to a standard (the kilogram). The
vapor pressure of the oil would affect the linoleic content.

We would like to _realize_ this quantity for measurement. To satisfy the conditions of the measurand in this case, just
one condition (100kg of it). This alone can cause issues. How do we verify we have 100kg?

## Definitions

(measurable) quantity:
> attribute of a phenomenon, body or substance that may be distinguished qualitatively and determined quantitatively

Random error:
> result of a measurement minus the mean that would result from an infinite number of measurements of the same measurand
carried out under repeatability conditions

Systematic error:
> mean that would result from an infinite number of measurements of the same measurand carried out under repeatability
conditions minus a true value of the measurand


## What is stochastic modelling for uncertainty propagation?
