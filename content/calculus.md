---
title: Calculus Notes
subtitle: Here I go again
documentclass: tufte-handout
date: \today
colorlinks: true
graphics: true
header-includes:
- \graphicspath{ {img/} }
---

A way to describe functions. To analyse relationships.

# Derivative

The derivative of the function $f(x)$ with respect to the variable x is the function $f'$ whose value at
$x$ is

\marginnote{The domain of $f'$ is the set of points in the domain of $f$ for which the limit exists.}

$$f'(x) = \lim_{h \rightarrow 0}\frac{f(x + h) - f(x)}{h}$$

## What does it mean for a function to be differentiable?

If $f'$ exists at a particular $x$, we say that $f$ **is differentiable** (has a derivative) at $x$. If $f'$
exists at every point in the domain of $f$, we call $f$ differentiable.

## Continuity

A function $f(x)$ is **continuous at a point** $x = c$ iff it meets the following three
conditions [^1].

1. $f(c)$ exists (c lies in the domain of f).
2. $\lim{x \rightarrow c}f(x)$ exists (f has a limit as x tends towards c).
3. $\lim{x \rightarrow c}f(x)= f(c)$ (the limit equals the function value).

[^1]: We define a continuous function as one that is continuous at every point in its domain.

# Chain Rule

[^2]: Composition occurs when the output of one function is used as the input to another function.

If $f(u)$ is differentiable at the point $u = g(x)$ and $g(x)$ is differentiable at $x$ then the
composite function [^2] $(f \circ g)(x) = f(g(x))$ is differentiable at $x$ and

$$(f\circ g)'(x) = f'(g(x)) \cdot g'(x)$$

# Implicit Differentiation

1. Differentiate both sides of the equation with respect to $x$, treating $y$ as a differentiable function of $x$.
2. Collect the terms with $\frac{dy}{dx}$ on one side of the equation and solve for $\frac{dy}{dx}$.

An implicit curve arises when two values are related to eachother in a non-standard geometrical
form, not a singular independent and dependent plot.

# Derivative of Inverse functions
p.178

If $f$ has an interval $I$ as domain and $f'(x)$ exists and is never zero on $I$, then $f^{-1}$ is
differentiable at every point in its domain (the range of $f$). The value of $(f^{-1})'$ at a point b in
the domain of $f^{-1}$ is the reciprocal of the value of $f'$ at the point.

# Related rates problem example

The problem of finding a rate of change of a variable from other known rates of change is called a
related rates problem.

* We know the volume of the cone as $V = \frac{1}{3} \pi r^2h$.

The problem is to find $\frac{dh}{dt}$.


[^3]: You might think that we could just do the product rule on $r^2h$ but this implies that r and h
  are known functions. You actually get $$r^2\frac{dh}{dt} + h\frac{dr}{dt}$$ when you do this,
  which doesn't help matters.

* We **assume that each function r, h and V are differentiable at a given t**. [^3]

The goal is to **not keep track of multiple variables** so we need a relationship between $h$ and $r$ to
stop tracking about $r$. This relationship turns out to be $r = \frac{h}{2}$.

# Linearization

If $f$ is differentiable at $x = a$, then $L(x)$ is an approximating function called the
**linearization** of $f$ at $a$ defined as:

$$L(x) = f(a) + f'(a)(x - a)$$

A quadratic approximation adds more accuracy by determining the slope of the slope of the initially
linear approximation.

$$f(x) = f(a) + f(a)(x - a) + \frac{f''(a)}{2}(x - a)^2$$

# Differentials

Let $y = f(x)$ be a differentiable function, $dx$ be an independent variable, the
differential $dy$ is

\marginnote{$y$ is always the dependent variable. In this case it depends on $dx$ and $x$.}
\marginnote{Geometrically, this is a linear approximation of $f$ around a.}

$$dy = f'(x)dx$$

# Determining the shape of a function

Let f be a function with domain $D$. $f$ has an **absolute max value** on the domain $D$ at point $c$ if
$$f(x) \leq f(c)$$ and an **absolute min value** on $D$ at point $c$ if $$f(x) \geq f(c)$$

\marginnote{Local extreme values can be found by setting the derivative to zero.}

A **Criticial point** An interior point of the domain of a function $f$ where $f'$ is zero or undefined.

The absolute extrema for f are the largest and smallest of these critical points for the function f.

\begin{figure}
  \includegraphics{pasted_img_20240421073632.png}
\caption{We test if a function is concave up/down by getting its second derivative. If this is greater than
    zero over an interval then its concave up.}
\end{figure}

# Inverse functions

_Useful when flipping axis_

# Even and Odd functions
\label{sec:even-odd}

A function is **even** if $f(x) = f(-x)$ for every $x \in X$ its domain e.g. $x^2$.
\marginnote{A polynomial with an even exponent is an even function. One with an odd exponent is
odd.}
A function is **odd** if $f(-x) = -f(x)$ for every $x \in X$ its domain e.g. $x^3$.
\marginnote{The product of an even and odd function is odd.}

# Mean Value Theorem (weak point)

\marginnote{This is just the slope of the secant line joining a to b.}
$$\frac{f(b) - f(a)}{b - a} = f'(c)$$

\marginnote{Especially because its continuous, this makes sense. At some point your function must take the
average value.}

\begin{figure}[h]
    \includegraphics[width=\linewidth]{pasted_img_20240421073116.png}
\end{figure}


If $f$ is continuous on $[a, b]$, then at some point $c$ in $[a, b]$:

$$f(c) =  \frac{1}{b - a}\int^b_af(x)dx$$

There are 3 corrolaries to the mean value theorem:

1. **Only constant functions have zero derivates**. If $f'(c)$ is zero for all $x$ in the interval
   $[a, b]$ then $f(b)$ is equal to $f(a)$.
2. **Matching curvatures** if $f'(x) = g'(x)$ for all $x \in [a, b]$ then there exists a constant
   $C$ for all $x \in [a, b]$. $f - g$ is a constant function on the interval.


A function that is increasing/decreasing on an interval is said to be **monotonic** on that interval [^4].

[^4]:
    If $f'(x) > 0$ at each point in the interval $[a, b]$ where $x$ is in this interval then $f$ is increasing
    over that interval.

# Newtons method (weak point)

Use tangent lines of the graph $f(x)$ to approximate a solution for $f(x) = 0$.

\marginnote{You're trying to guess the root of a function. Each new 'guess' should bring you closer
to the root.}

If we look at the linearization of a line at point $x_n$,

$$y = f(x_n) + f'(x_n)(x - x_n)$$
.

Provided $f'(x_n)$ is not equal to zero, rearranging gets us

$$x = x_n - \frac{f(x_n)}{f'(x_n)}$$

This is finding the intercept of the tangent line to a point $(x_n, f(x_n))$.

# Antiderivative

A function $F$ is an antiderivative of $f$ on an interval if $F'(x) = f(x)$ where $x \in I$.

The process of recovering the function F from its derivative is called _antidifferentiation_.

Finding an antiderivative for a function $f(x)$ is the same problem as finding a solution to the
equation

$$\frac{dy}{dx} = f(x)$$

This is a differential equation because we have an **unknown y that is being differentiated.**
In this case, $y$ is the antiderivative of $f$.

# Indefinite integrals

The **collection of all antiderivatives of a function $f$** is called the indefinite integral with
respect to $x$ denoted

\marginnote{the function $f$ is called the integrand and $dx$ the variable of integration.}
$$\int f(x)dx$$

[^6]: $a = x_0 \le x_1 \le x_2 \le ... \le x_n = b$.

If $P= (x_0, x_1, ... , x_n)$ is a partition[^6] of some interval $[a, b]$
A **Riemann sum** $S$ of $f$ over $[a, b]$ with partition $P$ is defined as
$$S = \sum^n_{i = 1}f(c) \Delta x_i$$
where $\Delta x_i = x_i - x_{i - 1}$ and $c \in [x_i - x_{i - 1}]$.

## Definite Integral

If $J$ is the limit of the Riemann sum for $f$. The definite
integral is
$$J = \lim_{||P|| \rightarrow 0} \sum_{k = 1}^n f(c_k) \Delta{x_k}$$
where $||P||$ is the largest of all the sub interval widths.
We rewrite $J$ as
$$\int_a^b f(x)dx$$

# What makes a function integrable?

If a function $f$ is continuous over the interval $[a, b]$, or if $f$ has at most finitely many jump
discontinuities there, then the definite integral exists. $f$ is integrable over $[a, b]$.

![](pasted_img_20240421105633.png)

# Mean of integrable function

The average value of the integral of a function $f$ on $[a, b]$ is

$$av(f) = \frac{1}{b - a}\int^b_af(x)dx$$

# Fundamental Theorem of Calculus (weak enough)

> On one hand, we have a way to determine the slope of a tangent line at a point in the derivative.
> On the other hand, we've a way to determine the area under a line (or between it and the x-axis)
> with the definite integral. The fundamental theorem relates these two concepts.

\newthought{Think about} a function $g(x)$ that we define as the [definite integral](#definite-integral) from $a$
to $x$ for some $x$:

$$g(x) = \int^x_a f(t)dt$$

\marginnote{$t$ is a dummy variable to calculate the integral (so maybe the partition in the Riemann sum).}

What is $g'(x)$?

$$g'(x) = \lim_{h \rightarrow 0} \frac{g(x + h) f(x)}{h}$$
$$g'(x) = \lim_{h \rightarrow 0} \frac{\int^{x + h}_a f(t)dt - \int^x_a f(t)dt}{h}$$

Analysing the numerator geometrically, it can be approximated as $f(x)h$ as $h$ gets smaller and
smaller. Therefore

$$g'(x) = \lim_{h \rightarrow 0} \frac{\int_a^{x + h} f(t)dt - \int^x_a f(t)dt}{h} = f(x)$$

If $f$ is continuous on $[a, b]$, then we define a function $g(x) = \int^x_a f(t)dt$ that is also
continuous on $[a, b]$ and differentiable on $[a, b]$. Its derivative is $f(x)$ [^5]

$$g'(x) = \frac{d}{dx}\int^x_a f(t)dt = f(x)$$

[^5]: Can think of the function $f(x)$ as implicit something we're 'circling' around. Jumping
  between derivatives and integrals to find it.

\marginnote{$g'(x) = f(x)$ therefore $g(x)$ is an antiderivative of $f(x)$.}

# Part 2

\marginnote{The following theorem allows us to solve definite integrals more easily than computing
Riemann sums.}

If $f$ is continuous over $[a, b]$ and $F$ is any antiderivative of $f$ on $[a, b]$, then

$$\int_a^b f(x)dx = F(b) - F(a)$$

# Net Change Theorem

$$F(b) - F(a) = \int^b_a F'(x)$$

# Substitution method (subtler than you think)

Evaluating

$$\int f(g(x)) g'(x) dx $$

\marginnote{That is, we assume that $f$ is some product of using the chain rule.}

1. Substitute $u = g(x)$ and $du = \frac{du}{dx}dx = g'(x)dx$ to obtain $\int f(u) du$.
2. Integrate with respect to u.
3. Replace u by g(x).

# Chapter 6 (Applications of Integration)
\begin{marginfigure}
\includegraphics{pasted_img_20240424061437.png}
\caption{ If we revolve the curve $y = \sqrt{x}, 0 \leq x \leq 4$ around the x-axis its volume would
be the sum of disks define as $$V = \int_a^b \pi (\sqrt{x})^2 $$ }
\end{marginfigure}


> The solid generated by rotating (or revolving) a plane region about an axis in its plane is called
a solid of revolution.

\newthought{The goal} is to define $A(x)$ as some **integrable cross sectional area of the function**.

# The Disk Method

If we're rotating around the x-axis, we can use the volume by disks approach. The Area function is
defined as the area of a disk. This is dependent on the radius at a given $x$.

$$V = \int^b_a A(x)dx = \int_a^b \pi[R(x)]^2$$

\begin{figure}
\includegraphics{pasted_img_20240424062057.png}
\caption{\textbf{Washer Method} If the region to be revolved around an axis does not border that axis then there is a
volume of space between it and the axis of revolution to be accounted for.
$$V = \int^b_a A(x)dx = \int_a^b \pi([R(x)]^2 - [r(x)]^2)$$
}
\end{figure}

# The Shell method

The volume of the solid generated by revolving the region between the x-axis and the graph of
$y = f(x) \geq 0, L \leq a \leq x \leq b$ about x = L is[^7]
$$V = \int_a^b 2 \pi (x - L) f(x) dx$$

[^7]: Where $x - L$ is the shell radius and $f(x)$ the shell height.

\begin{marginfigure}
\includegraphics{pasted_img_20240507082621.png}
\caption{The Washer method fails in the case of an offset parabola. Calculating the inner and
outer radius is non-trivial: $x^2 = 3x - y$.}
\label{fig:shell}
\end{marginfigure}

In figure \ref{fig:shell} we take a partition $P$ of $[a, b]$ and attempt to revolve this partition about the line $L$. We
define a cylindrical volume for the $k$th partition
$$\Delta V_k = 2\pi ( 1 + x_k) (2x_k - x_k^2) \Delta x_k$$

We approximate the volume of the whole region rotated by summing these smaller volumes.[^8]

$$V \approx \sum_{k = 1}^n \Delta V_k$$

[^8]: The limit of this Riemann sum becomes the definite integral.

# Integration by parts

Simplifying integrals of the from

$$\int f(x)g(x)dx$$

Integration by parts says that

$$\int udv = uv - \int vdu$$

Where $u = f(x)$ and v = $g(x)$.

\marginnote{For definite integrals the formula is $$\int_a^b f(x)g'(x) = f(x)g(x)\Big|_a^b =
\int_a^bf'(x)g(x)dx$$}

# Evaluating Integrals

The aim is to simplify to find integrals that are _easy to work with_.

Look out for symmetric intervals. Then determining whether the resulting integrand is [even or
odd](#even-odd) can simplify evaluation.

In relation to integration, what is trigonometric substitution?

\newpage

\begin{figure*}[h]
    \includegraphics[width=\linewidth]{pasted_img_20240507085510.png}
\end{figure*}
