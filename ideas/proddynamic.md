---
title: Dynamics of productivity
parent: Ideas and Productivity
nav_order: 3
---

# Dynamics of productivity
{: .no_toc }

1. TOC 
{:toc}

## Research effort and productivity growth
We want to build a model that explicitly makes productivity growth a function of research and development effort, and that can match the fact that R&D effort has increased but the rate of productivity growth remained roughly stable.  

To do this we will set up an equation for the "accumulation" of productivity, sort of like the accumulation equation we had for capital. Here's how we'll set this up,

$$
A_{t+1} = A_t + \theta R_{t}^{\lambda} A_t^{\phi}.
$$

Productivity in period $t+1$ is equal to productivity in period $t$ plus this collection of terms (with the $\theta$) that represents the additional productivity gained in that period. Unlike capital, we don't have an explicit depreciation term for productivity, although we could do that (imagine old technologies becoming obsolete) at the cost of some more algebra. 

The important element here is the term $\theta R_{t}^{\lambda} A_t^{\phi}$, which tells us the additional productivity that innovative activity produces. The $\theta$ term is just there as a scaling parameters. You can think of it as translating the number of innovations into the actual effect of productivity (remember the stupid patents). 

$R_t$ measures the amount of R&D effort done. We could measure that either with total spending or with the number of R&D workers. We'll tend to use the number of R&D workers to keep things concrete. The exponent $\lambda$ is assumed to be $0 < \lambda \leq 1$. It tells us the elasticity of new productivity to the number of R&D workers. If $\lambda = 1$, then a 10% increase in R&D workers will increase the flow of new productivity by 10% (careful, it doesn't raise *productivity* by 10%, it raises the amount of new productivity being added by 10%). But R&D workers could interfere with one another, or duplicate efforts, so it is plausible that $\lambda<1$, so that a 10% increase in R&D workers may only increase the flow of new productivity by 3% or 6% or 8%. 

The $A_t^{\phi}$ term is the current productivity level, and it is assumed that this impacts the flow of new productivity. The value of $\phi$ could be anything, but we'll see below that the date are going to indicate that $\phi<1$. If $0<\phi<1$, so that $\phi$ is positive, then having a higher productivity level *increases* the flow of new productivity in the economy. This is sometimes called the "standing on shoulders" effect, for researchers being able to see new opportunities because of past innovation. 

If you feel like nerding out a little, check out the [history](https://en.wikipedia.org/wiki/Standing_on_the_shoulders_of_giants) of the phrase "standing on the shoulders of giants", which is kind of fun. 

It is also possible that $\phi<0$, which is sometimes called the "low-hanging fruit" effect. If $\phi$ is negative, then the higher is productivity, the *smaller* is the flow of new productivity. This might happen because prior researchers already found all the relatively easy ideas (fire, wheels, algebra) and what we're left with are harder problems (AI, genetic engineering). 

Regardless of the values, the term $\theta R_{t}^{\lambda} A_t^{\phi}$ tells us how much extra or new productivity we add in period $t$. We can re-arrange the original expression to figure out the growth rate of productivity. 

Subtract $A_t$ from both sides, and then divide by $A_t$,

$$
\frac{A_{t+1} - A_t}{A_t} = \theta R_{t}^{\lambda} A_t^{\phi-1}
$$

and note what is on the left-hand side, the growth rate of productivity. We called this $g_A$, but here let's be clear that this growth rate *could* be changing over time,

$$
g_{A} = \theta R_{t}^{\lambda} A_t^{\phi-1} = \theta \frac{R_{t}^{\lambda}}{A_t^{1-\phi}}.
$$

## Dynamics of productivity growth
The last equation describes how the growth rate of productivity changes over time. It depends on the interaction of the number of researchers, $R_t$, and the size of current productivity, $A_t$. Just like we did with the capital/output ratio, let's take a look at a simulation first to see how the growth rate of productivity changes as $R$ and $A$ change. 

For this simulation, I set the value of $\theta = 0.01$. Remember, this just translates the growth in ideas produced by researchers into productivity terms. Set $\lambda = 1$, and $\phi = 0$. This makes the growth rate equation simple, $g_A = .01 \times R_t/A_t$. Finally, let $g_R = 0.02$, or the number of researchers grows by 2% per year. The initial number of researchers is $R_0 = 10$. 

Just like with capital/output, the simulation is set up with two separate economies, A and B. In economy A, initial productivity is $A_0^A = 2$, so the ratio of $R_0/A_0^A = 5$. Economy has higher initial productivity, $A_0^B = 10$, and a ratio of $R_0/A_0^B = 1$. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/103.embed"></iframe>

We know that because economy A has a higher ratio of researchers to productivity it will start with a higher growth rate of $g_A = .01 \times 5 = .05$ or 5%. But the next period, productivity will be higher by 5%, and the number of researchers will only grow by 2%, so the ratio of R/A in economy A will *fall*, which will lower the productivity growth rate. 

In economy B, the initial growth rate of productivity is $g_A = 0.01 \times 1 = .01$, or only 1%. Because R grows at 2%, and productivity only grows at 1% in economy B, the R/A ratio for economy B will *rise*, and this will increase the productivity growth rate. 

When you play the simulation you see that both economies collapse towards a ratio of researchers/productivity of 2, and a common growth rate of productivity of 0.02, or 2%. This growth rate is identical to the growth rate of researchers, and that, it turns out, is not an accident. 

## Implications
The simulation showed that both economies have a common growth rate of productivity. Let's solve more generally for what that common growth rate is, given any set of parameters or starting values for $R_0$ and $A_0$. 

What we are after here is a value for $g_A$ such that $g_A$ no longer changes. In the Solow model, we found a steady state for the K/Y ratio, and at that ratio $g_{K/Y} = 0$. We're doing something similar here, looking for a steady state. But here the steady state will involve a ratio of R to A such that $g_A$ is *constant* (but not necessarily zero like with the capital/output ratio). This is an important point for us because we know from the data that along a BGP the growth rate of productivity is roughly constant. 

Intuitively, from the equation for $g_A$ we know that it will stay the same if $R_t^{\lambda}$ grows at the same rate as $A_t^{1-\phi}$, so that their ratio stays the same. 

To see in math what we're doing, we're going to find the *growth rate of the growth rate*. In other words, by what percent does $g_A$ itself change each period. We know how to do that. Take logs,

$$
\ln g_{A} = \ln \theta + \lambda \ln R_{t} - (1-\phi) \ln A_t.
$$

Then take the derivative of this with respect to time, or

$$
g_{g_A} = \lambda g_R - (1-\phi) g_A.
$$

That funky thing on the left is the growth rate ($g$) of the growth rate of productivity ($g_A$). It depends on how fast researchers grow ($g_R$) relative to how fast productivity is growing ($g_A$) at that moment. 

We're after the steady state point where the growth rate of productivity stops changing (remember the simulation), or where $g_{g_A} = 0$. Set that to zero and solve for

$$
g_A^{BGP} = \frac{\lambda}{1-\phi} g_R.
$$

I labelled this $g_A^{BGP}$ because this is the growth rate of productivity along a balanced growth path, when it is at steady state. Let's just confirm that our simulation is working the way we want. With $\lambda = 1$ and $\phi = 0$, and $g_R = 0.02$, then it must be that $g_A^{BGP} = 1/(1-0) \times .02 = .02$. Yes, the simulation delivers the result we expect. Or, the equation matches what we saw in the simulation.

This gives us a pretty clean result in determining the productivity growth rate.

Productivity growth and researcher growth
{: .label .label-green }
**Along a BGP the growth rate of productivity depends on the growth rate of the number of researchers according to $g_A^{BGP} = \frac{\lambda}{1-\phi} g_R$. It does not depend on the absolute number of researchers or the absolute size of productivity.**

More researchers means more ideas, and that pushes up the growth rate of productivity. But recall that higher productivity tends to push down $g_A$, so those two forces are fighting against one another. The economy can sustain a higher growth rate of $g_A$ along the BGP if it has a faster growth rate of researchers to keep overcoming the drag from the higher *level* of productivity. But simply having more researchers does not, by itself, lead to faster growth in productivity. 

And this is crucial in matching what we saw in the data. Recall the prior section said that while the absolute effort on R&D rose over time, the growth rate on productivity did not, across a number of countries. We can make this more tangible by plotting the growth rate of productivity against the log of R&D workers for several countries.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/105.embed"></iframe>

Yes, there is some sense that in China there are both a lot of researchers *and* a relatively high productivity growth rate, but across most of this data there is no clear relationship. The US and Japan have substantially more R&D workers than Korea, Germany, or Great Britain, but their productivity growth is not higher. 

On the other hand, if we plot the growth rate of productivity against the *growth rate* of the number of researchers, we get a more robust picture. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/107.embed"></iframe>

Here, there is a tendency to see higher productivity growth when $g_R$ is higher. This doesn't prove the theory is right. First, this is just a handful of countries, and a simple correlation in the data is not the same thing as a causal relationship. Second, the theory was *designed* to produce this result. We were trying to come up with something that can mimic this relationship, and we did.

## Stability
The prior sub-section describes the productivity growth rate along the BGP. But just as with the Solow model and the K/Y ratio, we want to know if that is a *stable* outcome. If the economy starts out with a $g_A$ above or below the BGP growth rate, does it have a tendency to return to $g_A^{BGP}$? The simulation suggests that yes, it does. But why is that? 

Go back to the expression for $g_A$

$$
g_{A} = \theta \frac{R_{t}^{\lambda}}{A_t^{1-\phi}}.
$$

Take a look at a dynamic figure representing this relationship. Here we have to be careful, because that ratio of $R_t^{\lambda}/A_t^{1-\phi}$ is tricky. In the figure below, I'm just using $x = R_t^{\lambda}/A_t^{1-\phi}$. "x" captures the stock of researchers to the stock of productivity (which depends in part on those parameter values). The "f(x)" function shows the growth rate of productivity, $g_A$, in the green line. In a not surprising outcome, the growth rate $g_A$ is increasing in "x", the ratio of researchers to productivity. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="https://www.geogebra.org/m/t4yhvxze"></iframe>

What else is in this figure? The growth rate of researchers, modified in our case by the fraction $\lambda/(1-\phi)$. So the "g(x)" function is $g_R \times \lambda/(1-\phi)$. We know that this is the BGP growth rate of productivity, and we know that it doesn't depend on the *size* of x. That is why it is a flat line. 

Finally, we've got the vertical black dashed line, which is meant to capture the *actual* stock of $R^{\lambda}/A^{1-\phi}$ at one given point in time. If you start out with the values of R and A that I give in the figure, then the dashed line is to the right of where the blue and green lines intersect. What does that mean? It means that $g_A$ (green) is higher than the modified $g_R$ (blue). Which in turn means that A grows fast enough to overcome the growth in R, and the stock of $R^{\lambda}/A^{1-\phi}$ *falls*. 

You can mechanically work out what happens next by adjusting R up by a little, but A up by a lot. This will shift the dashed line to the *left*. And that will mean the growth rate $g_A$ falls a little, but still remains large enough to push A up more than R, and the dashed line moves left *again*. And so on until the dashed line (the actual ratio of $R^{\lambda}/A^{1-\phi}$) comes to the point where the blue and green lines cross.

No matter where you start, the system pushes you back to the point where the two lines cross, and where $g_A = g_R \times \lambda/(1-\phi)$, which is the BGP growth rate of productivity. This says that the productivity growth rate is *stable*. 

There are a lot of parameters involved here, but the most important one for this result turns out the be $\phi$. Using the GeoGebra screen, try pushing the value of $\phi$ all the way to one. What happens? The horizontal line for $g_R \times \lambda/(1-\phi)$ disappears. Why? Because the denominator ($1-\phi$) goes to zero, meaning the whole term blows up to infinity. In other words, if $\phi$ goes to one (or was higher than one) then the BGP growth rate of productivity would be...infinity. Needless to say, this doesn't make a whole lot of sense.

Stable productivity growth
{: .label .label-green }
**The growth rate of productivity along a BGP is stable at $g_A^{BGP} = g_R \lambda/(1-\phi)$ if the value of $\phi<1$.**

$\phi<1$ essentially says that the growth rate of productivity must fall as productivity rises. It means that getting more productive cannot lead to an acceleration of productivity growth. The data suggest that this must be true. We do not see that productivity growth accelerates as productivity rises.
