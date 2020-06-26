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
In the prior section we established that this equation governs the growth rate of the capital/output ratio, meaning it determines transitional growth,

$$
g_{K/Y} = (1-\alpha)\left[s_I \frac{Y}{K} - \delta - g_A - g_L \right].
$$

We left that section with a figure showing exactly how $g_{K/Y}$ and $K/Y$ were related under a specific set of parameters. What we want to start with here is the fact that the downward sloping relationship between $g_{K/Y}$ and $K/Y$ holds no matter what the parameters ($\alpha$, $s_I$, $g_A$, or $g_L$) are.

Mathematically you can confirm this by taking the derivative of $g_{K/Y}$ with respect to $K/Y$. But even without calculus it should be apparent that the negative relationship of the growth rate and level of K/Y holds regardless of what we set the values of the other parameters to.

The following GeoGebra figure allows you to play around with all the parameters, and see that while they affect the shape of the curve, they don't change that fundamental downward sloping relationship. You can click on the three dots in the upper right to "Open in App" and put this in its own tab of your browser, which may help make it easier to work with.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="https://www.geogebra.org/m/up2w555f"></iframe>

The other thing to notice here is that the line always crosses the x-axis, meaning that there is *always* a case where $g_{K/Y} = 0$. If you really jam up the parameters to some weird numbers that crossing will occur off-screen, but hopefully the action of the curve helps convince you that at *some* point the curve crosses the x-axis no matter what.

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

This is the capital/output ratio at which $g_{K/Y}=0$. This is important enough to warrant a label.

Steady state capital/output ratio
{: .label .label-green }
**The steady state capital/output ratio in the Solow model is $K/Y = s_I/(\delta + g_A + g_L)$.**

The term "steady state" means that once the economy is at this capital/output ratio *it just stays there*, at the same capital/output ratio. The dynamics of capital will not move it away from that steady state. Something exogenous to our model (a war, a pandemic, a technological revolution, a change in savings behavior) would have to happen to cause the $K/Y$ ratio to change again. The steady state is the natural resting place for the economy.

Steady state and balanced growth
{: .label .label-green }
**When the economy is at steady state it is on a balanced growth path. Hence we'll say $(K/Y)^{BGP} = s_I/(\delta + g_A + g_L)$.**

Before flipping to the next sub-section, let's just see that this definition of $(K/Y)^{BGP}$ makes sense. Go back to the figures shown in the last section, with the dots showing how the capital/output ratio evolved. Remember that both economies headed towards a value of 2.5. 

Now take the equation for the steady state of the capital/output ratio, and plug in the parameter values I used to create that figure: $\alpha = 0.3$, $s_I = 0.2$, $g_A = 0.02$, and $g_L = 0.01$.

$$
\left(\frac{K}{Y} \right)^{BGP} = \frac{s_I}{\delta + g_A + g_L} = \frac{.2}{(.05 + .02 + .01)} = 2.5
$$

Both economies have the same steady state value for $K/Y$ because they both have the same parameters. It doesn't matter that A started with a K/Y ratio of 0.5, or that B started with a K/Y ratio of 4. Eventually they both end up with K/Y = 2.5. The dynamics of capital accumulation ensure that.

## Stability and its implications
We've established that the Solow model has a steady state level of capital/output, and that at this steady state capital/output ratio the economy is on a balanced growth path. What was also apparent from the figure showing economies A and B is that the steady state is "stable". No matter where these economies started, they ended up at the steady state. The way that capital accumulation works ensures this stability. Capital accumulation is like a natural regulator for the growth rate. If actual K/Y somehow ends up below $(K/Y)^{BGP}$, then $g_{K/Y}$ gets bigger for a while until the capital/output ratio returns to the BGP level. And just like with economy B, if actual K/Y is above $(K/Y)^{BGP}$, $g_{K/Y}$ becomes negative until the capital/output ratio returns to the BGP level.

The stability of the steady state is why transitional growth is temporary. It is what explains why Japan or Germany or South Korea could grow rapidly for a while (several decades even) but that eventually their transitional growth headed towards zero, and they ended up growing at the same BGP growth rate as the US, $g_A$. It is also why we'd *predict* that the growth rate in China will continue to fall over time. It seems as if China is experiencing transitional growth due to high $g_{K/Y}$, and we know from the analysis so far that this transitional growth with slip towards zero over time.

A more concise way of saying this is that if a country is *off* a BGP, then it always gets pushed back *on* a BGP.

## Capital still grows!
One last thing here. It's very important to note that $g_{K/Y} = 0$ does *not* mean that the capital stock is stuck or unchanging. It is growing even on a BGP. It is just not growing faster or slower than GDP. 

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