---
title: Deriving marginal values
parent: Preliminaries
nav_order: 6
---

# Deriving marginal values
{: .no_toc }

1. TOC 
{:toc}

We often care about marginal things, like marginal cost or marginal utility. Those are concepts that make the most sense as derivatives of some function. Marginal cost is the derivative of the cost function with respect to output. For example, what is the marginal additional cost it takes to produce one more unit of output? 

While we could think about taking derivatives to find marginal values of any kind of general function, for the purposes of this class we can narrow our focus to a particular kind of function, which you might call Cobb-Douglas or log-linear. Those kinds of functions have nice properties that make the marginal values easy to see. 

Let's say GDP is produced using a Cobb-Douglas function like this

$$
Y = K^{\alpha} L^{1-\alpha}. 
$$

What's the marginal product of capital? That is, how much additional output do we get if we increase $K$ by "one". In calculus terms we'd apply the standard rules to get

$$
\frac{\partial Y}{\partial K} = \alpha K^{\alpha-1} L^{1-\alpha}
$$

and if we look at that last part we can see that we could simplify this as

$$
\frac{\partial Y}{\partial K} = \alpha \frac{Y}{K}.
$$

That kind of principle holds true for any Cobb-Douglas-like function. The derivative with respect to one of the arguments is just the exponent times the original function divided by the argument. So the marginal product of labor must be

$$
\frac{\partial Y}{\partial K} = (1-\alpha) \frac{Y}{L}.
$$

What these functions are telling us is that the marginal product is just a fixed fraction ($\alpha$ or $1-\alpha$) of the *average* product, like $Y/K$ or $Y/L$. 

The formula for these marginal values is thus quite easy if the original "thing" is of this Cobb-Douglas form. For example, if utility is

$$
U = C_1^{\beta} C_2^{1-\beta}
$$

then it has to be that the marginal utility of $C_1$ is

$$
MU(C_1) = \frac{\partial U}{\partial C_1} = \beta \frac{U}{C_1}.
$$

