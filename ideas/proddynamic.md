---
title: Dynamics of productivity
parent: Ideas and Productivity
has_children: true
nav_order: 3
---

# Dynamics of productivity
{: .no_toc }

1. TOC 
{:toc}

![Meme](meme_dynamics.png)

## Research effort and productivity growth
We want to build a model that explicitly makes productivity growth a function of research and development effort, and that can match the fact that R&D effort has increased but the rate of productivity growth remained roughly stable.  

To do this we will set up an equation for the "accumulation" of productivity, sort of like the accumulation equation we had for capital.

{: .assumption }
>Ideas accumulate according to the following equation:
>$$
>A_{t+1} = A_t +  \theta L_{Rt}^{\lambda} A_t^{\phi},
>$$

or

$$
dA = \theta L_{Rt}^{\lambda} A_t^{\phi}
$$

where $dA = A_{t+1} - A_t$. 

Productivity in period $t+1$ is equal to productivity in period $t$ plus this collection of terms (with the $\theta$) that represents the additional productivity gained in that period. Unlike capital, we don't have an explicit depreciation term for productivity, although we could do that (imagine old technologies becoming obsolete) at the cost of some more algebra. 

The important element here is the term $\theta L_{Rt}^{\lambda} A_t^{\phi}$, which tells us the additional productivity that innovative activity produces. The $\theta$ term is just there as a scaling parameter. You can think of it as translating the number of innovations into the actual effect of productivity (remember the stupid patents). 

$L_{Rt}$ measures the amount of R&D effort done. We could measure that either with total spending or with the number of R&D workers. We'll tend to use the number of R&D workers to keep things concrete, so $L_{Rt}$ is the number of R&D workers. 

The exponent $\lambda$ is assumed to be $0 < \lambda \leq 1$. It tells us the elasticity of new productivity to the number of R&D workers. If $\lambda = 1$, then a 10% increase in R&D workers will increase the flow of new productivity by 10% (careful, it doesn't raise *productivity* by 10%, it raises the amount of new productivity being added by 10%). But R&D workers could interfere with one another, or duplicate efforts, so it is plausible that $\lambda<1$, so that a 10% increase in R&D workers may only increase the flow of new productivity by 3% or 6% or 8%. 

The $A_t^{\phi}$ term is the current productivity level, and it is assumed that this impacts the flow of new productivity. The value of $\phi$ could be anything, but we'll see below that the date are going to indicate that $\phi<1$. If $0<\phi<1$, so that $\phi$ is positive, then having a higher productivity level *increases* the flow of new productivity in the economy. This is sometimes called the "standing on shoulders" effect, for researchers being able to see new opportunities because of past innovation. 

If you feel like nerding out a little, check out the [history](https://en.wikipedia.org/wiki/Standing_on_the_shoulders_of_giants) of the phrase "standing on the shoulders of giants", which is kind of fun. 

It is also possible that $\phi<0$, which is sometimes called the "low-hanging fruit" effect. If $\phi$ is negative, then the higher is productivity, the *smaller* is the flow of new productivity. This might happen because prior researchers already found all the relatively easy ideas (fire, wheels, algebra) and what we're left with are harder problems (AI, genetic engineering). 

Regardless of the values, the term $\theta L_{Rt}^{\lambda} A_t^{\phi}$ tells us how much extra or new productivity we add in period $t$. We can re-arrange the original expression to figure out the growth rate of productivity. All we need to do for that is divide both sides by $A$, so the left-hand side is $dA/A$, which is just the growth rate of productivity,

$$
g_{A} = \theta L_{Rt}^{\lambda} A_t^{\phi-1} = \theta \frac{L_{Rt}^{\lambda}}{A_t^{1-\phi}}.
$$

Last thing we need. We know that not everyone does R&D. Let the ratio $s_R$ be the fraction of workers doing R&D. Then

$$
L_{Rt} = s_R L_t
$$

assuming $s_R$ stays constant. In other words, the number of R&D workers is just proportional to the number of people.


{: .important }
>The growth rate of productivity can be written as
>$$
>g_A = \theta s_R^{\lambda} \frac{L_{t}^{\lambda}}{A_t^{1-\phi}}.
>$$

## Dynamics of productivity growth
The last equation describes how the growth rate of productivity changes over time. It depends on the interaction of the number of researchers, $s_R L_t$, and the size of current productivity, $A_t$. Just like we did with the capital/output ratio, let's take a look at a simulation first to see how the growth rate of productivity changes as $L$ and $A$ change. 

For this simulation, I set the value of $\theta = 1$ and the value of $s_R = .01$, or about 1% of people do R&D. Remember, this just translates the growth in ideas produced by researchers into productivity terms. Set $\lambda = 1$, and $\phi = 0$. This makes the growth rate equation simple, $g_A = .01 \times sL_{t}/A_t$. Finally, let the growth rate of the number of population be $g_{L} = 0.02$, so the number of researchers grows by 2% per year. The initial population is $L_0 = 10$. 

Just like with capital/output, the simulation is set up with two separate economies, A and B. In economy A, initial productivity is $A_0^A = 2$, so the ratio of $L_{0}/A_0^A = 5$. Economy has higher initial productivity, $A_0^B = 10$, and a ratio of $L_{0}/A_0^B = 1$. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="../plotly/me-gA-dynamics.html"></iframe>

We know that because economy A has a higher ratio of researchers to productivity it will start with a higher growth rate of $g_A = .01 \times 5 = .05$ or 5%. But the next period, productivity will be higher by 5%, and the number of researchers will only grow by 2%, so the ratio of L/A in economy A will *fall*, which will lower the productivity growth rate. 

In economy B, the initial growth rate of productivity is $g_A = 0.01 \times 1 = .01$, or only 1%. Because $L_R$ grows at 2%, and productivity only grows at 1% in economy B, the L/A ratio for economy B will *rise*, and this will increase the productivity growth rate. 

When you play the simulation you see that both economies collapse towards a ratio of population/productivity of 2, and a common growth rate of productivity of 0.02, or 2%. This growth rate is identical to the growth rate of population, and that, it turns out, is not an accident. 

## Implications
The simulation showed that both economies have a common growth rate of productivity. Let's solve more generally for what that common growth rate is, given any set of parameters or starting values for $L_{0}$ and $A_0$. 

What we are after here is a value for $g_A$ such that $g_A$ no longer changes. In the Solow model, we found a steady state for the K/Y ratio, and at that ratio $g_{K/Y} = 0$. We're doing something similar here, looking for a steady state. But here the steady state will involve a ratio of L to A such that $g_A$ is *constant* (but not necessarily zero like with the capital/output ratio). This is an important point for us because we know from the data that along a BGP the growth rate of productivity is roughly constant. 

Intuitively, from the equation for $g_A$ we know that it will stay the same if $L_{t}^{\lambda}$ grows at the same rate as $A_t^{1-\phi}$, so that their ratio stays the same. 

What's the growth rate of $L_{t}^{\lambda}$? Mechanically, we know that this is

$$
\lambda g_{L}.
$$

What's the growth rate of $A_t^{1-\phi}$? Mechanically, we know that this is

$$
(1-\phi)g_A.
$$

So for the ratio $L_{t}^{\lambda}/A_t^{1-\phi}$ to stay constant (so that the growth rate of productivity stays constant) it must be that

$$
(1-\phi)g_A = \lambda g_{L}
$$

We can just flip this around to find that

$$
g_A^{BGP} = \frac{\lambda}{1-\phi} g_L.
$$

I labelled this $g_A^{BGP}$ because this is the growth rate of productivity along a balanced growth path, when it is at steady state. Let's just confirm that our simulation is working the way we want. With $\lambda = 1$ and $\phi = 0$, and $g_L = 0.02$, then it must be that $g_A^{BGP} = 1/(1-0) \times .02 = .02$. Yes, the simulation delivers the result we expect. Or, the equation matches what we saw in the simulation.

This gives us a pretty clean result in determining the productivity growth rate.

{: .important }
Along a BGP the growth rate of productivity depends on the growth rate of the number of population according to $g_A^{BGP} = \frac{\lambda}{1-\phi} g_L$. It does not depend on the absolute number of researchers or the absolute size of productivity.

More researchers means more ideas, and that pushes up the growth rate of productivity. But recall that higher productivity tends to push down $g_A$, so those two forces are fighting against one another. The economy can sustain a higher growth rate of $g_A$ along the BGP if it has a faster growth rate of researchers to keep overcoming the drag from the higher *level* of productivity. But simply having more researchers does not, by itself, lead to faster growth in productivity. 

And this is crucial in matching what we saw in the data. Recall the prior section said that while the absolute effort on R&D rose over time, the growth rate on productivity did not, across a number of countries. We can make this more tangible by plotting the growth rate of productivity against the log of R&D workers for several countries.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="../plotly/pwt-oecd-rd-tfp.html"></iframe>

Yes, there is some sense that in China there are both a lot of researchers *and* a relatively high productivity growth rate, but across most of this data there is no clear relationship. The US and Japan have substantially more R&D workers than Korea, Germany, or Great Britain, but their productivity growth is not higher. 

On the other hand, if we plot the growth rate of productivity against the *growth rate* of the number of researchers, we get a more robust picture. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="../plotly/pwt-oecd-rd-gtfp.html"></iframe>

Here, there is a tendency to see higher productivity growth when R&D workers grow faster (which is tied to population growth in part) is higher. This doesn't prove the theory is right. First, this is just a handful of countries, and a simple correlation in the data is not the same thing as a causal relationship. Second, the theory was *designed* to produce this result. We were trying to come up with something that can mimic this relationship, and we did.

