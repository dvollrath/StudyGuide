---
title: Steady state and the BGP
parent: Solow and Balanced Growth
nav_order: 4
---

# Steady states and the BGP
{: .no_toc }

1. TOC 
{:toc}

## Theoretical dynamics of capital/output
In the prior section we established that this equation governs the growth rate of the capital/output ratio, and hence describes transitional growth,

$$
g_{K/Y} = (1-\alpha)\left[s_I \frac{Y}{K} - \delta - g_A - g_L \right].
$$

We left that section with a figure showing exactly how $g_{K/Y}$ and $K/Y$ were related under a specific set of parameters. What we want to start with here is the fact that the downward sloping relationship between $g_{K/Y}$ and $K/Y$ holds no matter what the parameters are.

Mathematically you can confirm this by taking the derivative of $g_{K/Y}$ with respect to $K/Y$. But even without the calculus it should be apparent that the negative relationship of the growth rate and level of K/Y holds regardless of what we set the values of the other parameters to.

The following GeoGebra figure allows you to play around with all the parameters, and see that while they affect the shape of the curve, they don't change that fundamental downward sloping relationship. Remember, you can click on the three dots in the upper right to "Open in App" and put this in its own tab of your browser, which may help make it easier to work with.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="https://www.geogebra.org/m/up2w555f"></iframe>

The other thing to notice here is that the line always crosses the x-axis, meaning that there is always a case where $g_{K/Y} = 0$. If you really jam up the parameters to some weird numbers that crossing will occur off-screen, but hopefully the action of the curve helps convince you that at *some* point the curve crosses the x-axis no matter what.

## Steady state capital/output ratio
The point where the curve crosses the x-axis is important because it means that $g_{K/Y}=0$. And recall from the definition that a BGP is a situation where $g_{K/Y}=0$. So that crossing represents a point where the economy is "on" a balanced growth path. 

We can be more explicit about what the level of the capital/output ratio is when $g_{K/Y}=0$. Go back to the equation above, and let's set the growth rate to zero and solve for the K/Y ratio. 

$$
0 = (1-\alpha)\left[s_I \frac{Y}{K} - \delta - g_A - g_L \right].
$$

Divide both sides by $(1-\alpha)$, then re-arrange what you're left with to

$$
\delta + g_A + g_L = s_I \frac{Y}{K}.
$$

Now, notice that on the right we have the $Y/K$ ratio, not $K/Y$. So multiply both sides by $K/Y$, and re-arrange some more to get

$$
\frac{K}{Y} = \frac{s_I}{\delta + g_A + g_L}.
$$

This is the capital/output ratio at which $g_{K/Y}=0$. This is impoirtant enough to warrant a label.

Steady state capital/output ratio
{: .label .label-green }
**The steady state capital/output ratio in the Solow model is $K/Y = s_I/(\delta + g_A + g_L)$.**

The term "steady state" means that once the economy is at this capital/output ratio *it just stays there*, at the same capital/output ratio. The dynamics of capital will not move it away from that steady state. Something exogenous to our model (a war, a pandemic, a technological revolution, a change in savings behavior) would have to happen to cause the $K/Y$ ratio to change again. The steady state is the natural resting place for the economy.

Steady state and balanced growth
{: .label .label-green }
**When the economy is at steady state it is on a balanced growth path. Hence we'll say $(K/Y)^{BGP} = s_I/(\delta + g_A + g_L)$.**

When an economy has a capital/output ratio of $(K/Y)^{BGP}$, then we know that $g_{K/Y} = 0$, which is one of the conditions defining a BGP. We've already assumed that the other conditions are holding: cost shares defined $\alpha$, the capital formation ratio ($s_I$), productivity growth is constant ($g_A$).

Before flipping to the next sub-section, let's just see that this definition of $(K/Y)^{BGP}$ makes sense. Go back to the figures shown in the last section, with the dots showing how the capital/output ratio evolved. Remember that both economies headed towards a value of 2.5. 

Now take the equation for the steady state of the capital/output ratio, and plug in the parameter values I used to create that figure: $\alpha = 0.3$, $s_I = 0.2$, $g_A = 0.02$, and $g_L = 0.01$.

$$
\left(\frac{K}{Y} \right)^{BGP} = \frac{s_I}{\delta + g_A + g_L} = \frac{.2}{(.05 + .02 + .01)} = 2.5

Don't get too excited that the equation gave the same answer as the equation. It had to, and I'd be pretty terrible at teaching this stuff if I couldn't get them to work out. The point is that without building that whole dynamic figure (which was kind of fun) you can work out what the K/Y ratio will be on the balanced growth path. It depends only on the ratio of capital formation to GDP, depreciation, productivity growth, and labor force growth.

## Stability and its implications
We've established that the Solow model has a steady state level of capital/output, and that at this steady state capital/output ratio the economy is on a balanced growth path. The question now is about when the economy is *not* at steady state. Is the economy stable, meaning that if it is not at steady state - and therefore is "off" a balanced growth path - does it have a tendency to head towards a BGP? Or is there a tendency for economies to spiral out of control? From the facts I showed you it sure looks as if countries tend towards a BGP, and our model will replicate that.

The reason that the Solow model has a stable steady state is the negative relationship of $g_{K/Y}$ and $K/Y$. Recall economies A and B from the dynamic plots in the last section. They started out on either side of the steady state capital/output ratio of 2.5. But for both, the dyanmics pushed them towards the steady state. When the actual capital output ratio is less than the steady state capital output ratio, $K/Y < (K/Y)^{BGP}$, then we know from our figures that $g_{K/Y}>0$. Which means that the actual K/Y will get pushed closer to $(K/Y)^{BGP}$. Similarly, when actual K/Y is more than the steady state, $K/Y > (K/Y)^{BGP}$, we know that $g_{K/Y}<0$, and again the economy's actual K/Y ratio gets pushed towards $(K/Y)^{BGP}$.

Stable steady states and balanced growth
{: .label .label-green }
**Given our assumptions about how capital accumulation works, economies are stable, meaning that they have a natural tendency to return to a balanced growth path. Transitional growth is temporary.**

This is the reason that we referred to $g_{K/Y}$ as "transitional growth". Growth in the capital/output ratio is what generates the transition of an economy that is "off" a BGP back "on" a BGP. If you look back at the facts of South Korea, Japan, or Germany, then you see this transitional growth in the 20th century. But transitional growth is temporary, and once countries reach a balanced growth path, transitional growth goes back to zero. Transitional growth is temporary. 

Let's recap a little about *why* transitional growth is temporary. This has to do with the nature of capital accumulation. It's possible to generate high growth for a while by accumulating capital (remember the green dot) but as the capital stock gets bigger, you can't generate big *percent* increases in the capital stock any more. Depreciation of the existing stock keeps occurring, and you are fighting just to replace what is breaking down. Further, productivity and labor force growth are increasing output, meaning capital is having a hard time growing as fast as output, and so the growth rate of $K/Y$ falls.

## Capital still grows!
It's very important to note that $g_{K/Y} = 0$ does *not* mean that the capital stock is stuck or unchanging. It is growing even on a BGP. It is just not growing faster or slower than GDP. 

Let's reach back to the prior section, and recall that the growth rate of capital by itself was

$$
g_K = s_I \frac{Y}{K} - \delta.
$$

Now, what is this growth rate on a balanced growth path? Well, we know that on a BGP $(K/Y)^{BGP} = s_I/(\delta + g_A + g_L)$, so let's plug that in and see what we get. Just note that in the equation for capital growth, the K/Y ratio is inverted

$$
g_K^{BGP} = s_I \frac{\delta + g_A + g_L}{s_I} - \delta = g_A + g_L.
$$

So, along a BGP the capital stock grows at a rate that combines productivity and labor growth. Capital grows even though the $K/Y$ ratio does not. Which implies, by the way, that

$$
g_Y^{BGP} = g_A + g_L
$$

as well. The growth rate of aggregate GDP (not per capita) along the BGP is productivity growth *plus* the growth rate of the population.