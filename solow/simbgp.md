---
title: The balanced growth path
parent: Solow and Balanced Growth
nav_order: 4
---

# The balanced growth path
{: .no_toc }

1. TOC 
{:toc}

## Simulating a BGP
The simulations in the prior section showed that the two economies A and B seemed to be heading to common outcomes. Their capital/output ratios were headed to 2.5, and their growth rates were both headed to 2%. Recall as well that the production function elasticities were assumed to be constant, $\alpha = 0.3$ and there fore $1-\alpha = 0.7$. And finally, we assumed that the ratio of capital good formation to GDP, $s_I = 0.2$, was constant and identical in both. 

Go back and look at the definition of a [BGP](http://growthecon.com/StudyGuide/facts/bgp.html). Our simulated economies appear to have all the characteristics of a balanced growth path. Or rather, they both arrive very close to the characteristics of a BGP as time goes on. Despite starting out in very different positions given their capital/output ratios, A and B end up with a similar BGP. 

This worked for this specific simulation. The question for this section is whether that tendency to approach a BGP is true for any set of parameters we choose, and any initial value of the capital/output ratio. The answer is yes, but we are going to need to do a little math to see that.

## Finding a steady state
To see that the model we've set up implies that *all* economies end up on a balanced growth path, let's go back to the equation governing how the capital/output ratio grows. 

$$
g_{K/Y} = (1-\alpha)\left[s_I \frac{Y_t}{K_t} - \delta - g_A - g_L \right].
$$

A key thing we noted, and saw in action with economies A and B, was that the growth rate of capital/output *fell* as the capital/output ratio *rose*. To see that this is a general feature of this equation, go ahead and play around with the following GeoGebra figure, which lets you adjust the parameters (e.g. $\alpha$, $s_I$, etc..) in the equation. In this figure, note that "x" is the capital/output ratio, and "f(x)" is the growth rate of the capital/output ratio.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="https://www.geogebra.org/m/up2w555f"></iframe>

Not only does the line slope down no matter what. But the line always crosses the x-axis, meaning there is *always* a capital/output ratio we can find such that $g_{K/Y} = 0$. If you really jam up the parameters to some weird numbers that crossing will occur off-screen, but hopefully the action of the curve helps convince you that at *some* point the curve crosses the x-axis no matter what.

<iframe height="1200" width="100%" frameborder="no" src="https://dietzvollrath.shinyapps.io/JustKAL/"> </iframe>

The combination of the downward slope and the crossing of the x-axis means that the capital/output ratio has a "stable steady state". No matter what capital/output ratio you start with, this figure implies that you will *always* end up at the capital/output ratio where the line crosses the x-axis and $g_{K/Y}=0$. 

We can be more precise about the level of the capital/output ratio where $g_{K/Y}=0$. Go back to the equation above, and let's set the growth rate to zero and solve for the what $K/Y$ ratio is associated with no growth in the capital/output ratio.

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
**The steady state capital/output ratio in the Solow model is $(K/Y)^{ss} = s_I/(\delta + g_A + g_L)$.**

Let's make sure this equation makes sense. Plug in the parameter values I used to create that figure for economies A and B: $\alpha = 0.3$, $s_I = 0.2$, $g_A = 0.02$, and $g_L = 0.01$.

$$
\left(\frac{K}{Y} \right)^{ss} = \frac{s_I}{\delta + g_A + g_L} = \frac{.2}{(.05 + .02 + .01)} = 2.5
$$

That's exactly the value we saw them head towards in the figure. Both economies have the same steady state value for $K/Y$ because they both have the same parameters. It doesn't matter that A started with a K/Y ratio of 0.5, or that B started with a K/Y ratio of 4. Eventually they both end up with K/Y = 2.5. The dynamics of capital accumulation ensure that.

## Balanced growth and transitional growth
Now that we know that the capital/output ratio has a stable steady/state, we can go back and reconsider the definition of a balanced growth path, and what the combination of the data and theory imply. Here are the four characteristics of a BGP again:

1. The growth rate of GDP per capita ($g_y$) is stable
2. The ratio of gross capital formation to GDP ($I/Y$) is stable
3. Labor's share of *costs* ($\phi_L$) is stable
4. The capital/output ratio ($K/Y$) is stable

Two of these we can deal with easily, because we assume them a part of our model. We assumed that $s_I = I_t/Y_t$ was stable, matching the facts behind part 2 of the definition. We also assumed that the cost shares were stable when we decided to use the Cobb-Douglas production function, matching the facts behind part 3 of the definition. We could expand the model to try and explain *why* those things are stable, but for the moment we take them as given. 

Taking 2 and 3 as given, then, we're really after explaining what is behind parts 1 and 4. Remember, the data tell us that both 1 and 4 are (roughly) true. So we want the Solow model we just developed to match those facts, *and* to allow us to make some additional conclusions. 

Well, the Solow model tells us that any economy that accumulates capital in the way we described, and where production works the way we described, will end up with a steady state capital/output ratio. In other words, that the K/Y ratio will end up stable. So the Solow model tells us *why* part 4 of the definition of BGP holds. Even better, the Solow model tells us what that steady state level of the capital/output ratio *is*, $(K/Y)^{ss} = s_I/(\delta + g_A + g_L)$. So now it isn't just a stylized fact, we have some explanation for it. More important, we have some explanation for why it might be *different* across countries.

That leaves us with part 1 of the definition. Go back and recall that the growth rate of GDP per capita can be explained as

$$
g_y = \frac{\alpha}{1-\alpha} g_{K/Y} + g_A.
$$

We know that on a BGP $g_{K/Y}=0$, just from the data, so on a BGP it must be that

$$
g_y = g_A.
$$

This is such an important conclusion that we'll set it off with a label.

Growth on a BGP
{: .label .label-green }
**The growth rate of GDP per capita on a balanced growth path, $g_y^{BGP}$, depends only on the growth rate of productivity, $g_A$, or $g_y^{BGP} = g_A$.**

The growth rate in all the countries that were on a balanced growth path (e.g. the US, UK, Australia, Canada, probably Mexico, probably Germany and Japan in the last few decades) is equal to the growth rate of productivity *only*. Productivity growth is the origin of the long-run growth in GDP per capita. This makes understanding the growth rate of productivity one of the most important things we can study. The whole next topic of the study guide is dedicated to thinking about why and how productivity grows, for that reason. 

By the way, I used the terminology $g_y^{BGP}$ just to be clear that this is the growth rate "on the BGP", and doesn't mean that the growth rate is *always* equal to $g_A$.

We can even be a little more specific. The data tell us that the growth rate of GDP per capita is stable, and we said it was roughly equal to 1.8% per year for most developed countries. That means:

Growth in productivity
{: .label .label-green }
**The growth rate of productivity is stable and equal to about 1.8% per year in most developed countries, or $g_A \approx 0.018$.**

This stark finding on the importance of productivity growth for long-run growth in GDP per capita doesn't mean that $g_{K/Y}$ is irrelevant. It helps explain why growth rates might differ between countries, and why those growth rate differences are likely to be temporary. In fact we're going to give $g_{K/Y}$ a particular name.

Transitional growth
{: .label .label-green }
**The growth due to changes in the capital/output ratio, $g_{K/Y}$, is called transitional growth.**

Let's be clear about what this means when we compare countries to one another. 

Source of growth differences
{: .label .label-green }
**Given that $g_A$ is similar across countries, any observed differences in growth rates across countries are due to differences in transitional growth, $g_{K/Y}$.**

Moreover, the Solow model tells us how to explain transitional growth and tells us that because capital/output has a steady state that transitional growth eventually disappears, leading to this conclusion.

Temporary growth differences
{: .label .label-green }
**Observed differences in growth rates across countries due to differences in transitional growth, $g_{K/Y}$, are temporary.**

Thus the Solow model helps us understand *why* places like Germany, South Korea, or Japan could have very high growth rates for a while (transitional growth) but that eventually their growth rates fell until they were equal to a similar growth rate as countries like the US (productivity growth). The Solow model tells us that transitional growth is temporary, because the process of capital accumulation cannot keep up with the growth in output.
