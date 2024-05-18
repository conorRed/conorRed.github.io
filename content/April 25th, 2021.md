- [[physics]] [[calculus]] 07:15
    - A function might not have an absolute min/max if the function is unbounded at one of the endpoints
    - A function must also be finite
    - An interior point on the domain of a function whose derivative is zero is a **critical point **(inflection, max, min, local/absolute)
    - **Rolle's Theorem** if there is a horizontal line touching the graph twice then there is a point in this interval whose derivative is zero
    - Can be used the prove the [[mean value theorem]] 
Suppose $$y = f(x)$$ is continuous over a closed interval $$[a, b]$$ and differentiable on the interval's interior $$(a, b)$$. Then there is at least one point $$c$$ in $$(a, b)$$ at which $$\frac{f(b) - f(a)}{b - a} = f'(c)$$
        - The slope of the line between a and b will be repeated or exist as the derivate at a point c in the interval
        - At some point along the average change between two points the instantaneous change must equal the average change over that interval.
        - Corollary from mean value theorem
If $$f'(x) = g'(x)$$ at each point $$x$$ in an open interval $$(a, b)$$, then there exists a constant $$C$$ such that $$f(x) = g(x) + C$$ for all $$x \in (a, b)$$ that is, $$f - g$$ is a **constant function** on $$(a, b)$$
        - The graphs of functions with identical derivatives on an interval can only differ by a vertical shift. The constant is added to $$f(x)$$ not to the domain (horizontal shift)
        - The interval does not have to be finite
    - [[antiderivative]] [[function]] on an interval $$I$$ where $$F'(x) = f(x)$$ for all $$x$$ in $$I$$
if $$f(x)$$ was the derivative of a function, what would that function be
        - If $$F$$ is an antiderivative of f on an interval I, then the most general antiderivative of $$f$$ on $$I$$ is $$F(X) + C$$
        - The function $$F(x) = x^2$$ is not the only function whose derivative is $$2x$$. The function $$x^2 + 1$$ has the same derivative. Any two antiderivatives differ by a constant. The [[function]]s $$x^2 + C$$ where $$C$$ is an arbitrary constant form all the antiderivatives of $$f(x) = 2x$$ If the derivate is the same they should just differ by a constant
        - How do we get this corollary from the mean value theorem? [[?]]
        - Finding the family of functions gives the general solution to a problem of a differential equation 
$$\frac{dy}{dx} = f(x)$$ 
            - Then we can solve for an initial value where $$y(x_0) = y_0$$ for some initial condition $$x$$
        - $$\int{f(x)dx} $$ the collection of antiderivates of f, or the **indefinite** [[integral]] of $$f$$ wrt $$x$$
    - definite [[integral]] 
        - We say that a number $$J$$ is the definite integral of $$f$$ over $$[a, b]$$ and that $$J$$ is the limit of the [[riemann sum]]s 
$$J = \lim_{|P| \rightarrow 0}\sum_{k = 1}^{n}f(c_k)\Delta{x_k}$$
        - $$J \rightarrow \int_{a}^{b}{f(x)dx}$$
        - [[Leibniz]] envisioned an infitied sum of function values multiplied by infinitesimal subintervals of dx. So $$f(x)$$ represents a continuous selection of function values (as opposed to $$f(c_k)$$). The symbol then for $$J$$ (the definite integral that is approached by the [[riemann sum]]) is 
$$\int_{a}^{b} f(x) \,dx$$
        - [[mean value theorem]] for definite integrals if $$f$$ is continuous on $$[a, b]$$, then at some point c in $$[a, b]$$, 
$$f(c) = \frac{1}{b - a}\int_{a}^{b}{f(x)dx \leq maxf}$$
    - [[fundamental theorem of calculus]] 
        - Part 1
            - $$F'(x) = \frac{d}{dx}\int_{a}^{x}f(t)dt = f(x)$$
            - Proved p.331 
            - Saying the antiderivative is equal to the definite integral
        - Part 2
            - Eliminating the need to calculate the [[riemann sum]]
            - $$\int_{a}^{b}f(x)dx = F(b) - F(a)$$
If $$f$$ is continuous over $$[a, b]$$ and $$F$$ is any antiderivative of $$f$$ over $$[a, b]$$
            - Proved on p.332. Mad how implication can give us these insights, that to me at least, dont make intuitive sense.
        - Also have the net change theorem
- [what is e? ](https://www.youtube.com/watch?v=m2MIpDrF7Es)
Still dont fully understand but know that its an exponential number that is proportional to its own derivative. Its a useful way to represent exponential growth
