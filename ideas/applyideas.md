---
title: Case studies
parent: Ideas and Productivity
nav_order: 7
---

# Case studies
{: .no_toc }

1. TOC 
{:toc}

## A one-time shock to the stock of researchers
Let's think about the consequences of a one-time boost to the stock of researchers, $R_t$, in an economy. If you want some context for this, think of the 1930s and 40s, when a host of German scientists immigrated to the U.S. to escape persecution by the Nazis. [Moser, Voena, and Waldinger](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=1910247) studied the impact of this on patent activity in the chemical industry specifically, finding it had a significant *increase* in patent activity. 

How do we think about this in our model of innovation? First, be careful that this shock means a *one-time* jump in $R_t$, but the growth rate $g_R$ is unchanged once that shock occurs. Yes, the measured growth rate of R would be much higher than $g_R$ in that specific year that the shock occurred, but I'm saying that $g_R$ is the same both before the year of the shock and after the year of the shock.

Next, go back to the GeoGebra figure describing the dynamics of innovation.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="https://www.geogebra.org/m/t4yhvxze"></iframe>

In that figure, what we're doing is just adjusting the R upwards, so that the dashed line moves to the right. If you do that, what happens to the growth rate of productivity? It jumps up. But once R is higher, what do the dynamics tell us? It tells us that R/A starts to fall, and eventually the economy will come back to rest at the same long-run growth rate as before, $g_A^{BGP} = g_R \lambda/(1-\phi)$. 

Does that mean the one-time jump in R had no effect? No. It had a temporary effect on the growth rate of productivity (it was higher for a while) and therefore means there is a *permanent* effect on the *level* of productivity. 

If you go back to the expression for the level of productivity,

$$
\ln A_t^{BGP} = \frac{1}{1-\phi}\ln \theta - \frac{1}{1-\phi} \ln \frac{\lambda}{1-\phi} - \frac{1}{1-\phi}\ln g_R + \frac{\lambda}{1-\phi} \ln R_0 + \frac{\lambda}{1-\phi} g_R t
$$

what we're talking about here is a one-time jump in the value of $R_0$. The extra scientists push up the level of the BGP for productivity. We don't reach that new BGP right away, but take a while to get there, and during this time we've got higher growth in productivity than normal. 

We could use China as an example of this. Recall from the [earlier data](effort.html) that China had a *massive* increase in the number of research workers starting around the early 1990s. If we think of this as a "one-time" shock to research effort that does not change the long-run growth rate of researchers, it should show up in a significant shift up in the level of productivity. 

The figure below plots $\ln A_t$ for China, along with two hypothetical BGP's for productivity. Let me be clear here, I eyeballed the time frames to estimate these BGP's over in order to generate something looking this clean. This does not mean that China's increase in productivity was *solely* the consequence of increased R&D workers.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/113.embed"></iframe>

That caveat aside, there is a distinct shift up in the *level* of productivity in China from the 1960-1990 period (the orange line) to the post-2010 period (the green line). For the time frame from 1990 to 2010, the growth rate of productivity is way above the norm for *both* of those hypothetical BGPs, consistent with the story that a one-time shock to their research effort boosted productivity growth temporarily. But just as our dynamic model predicted, the growth rate of productivity should have slowed down as $A_t$ accumulated, and R&D got harder and harder. Taking my green BGP line seriously, it would look as if China had reached the steady state ratio of $R_t^{\lambda}/A_t^{1-\phi}$ at this point.

## A change in the growth rate of researchers
A different kind of situation arises when we look at a change in the *growth rate* of R&D workers. A very distinct case occurs in Japan. From 1981 to about 1995, the growth rate of R&D workers was about 4% per year, or $g_R = 0.04$. And then it just flatlined, with $g_R = 0$ from 1995 to today.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/115.embed"></iframe>

What does a drop in $g_R$ look like? We know that along the BGP the growth rate of productivity should be $g_A^{BGP} = g_R \lambda/(1-\phi)$, so the drop should have shifted the growth rate of productivity from high to about zero. Now remember, the growth rate of researchers *in Japan* isn't necessarily the most important number if Japan can use ideas from other countries, but in this severe of a case we should see something happen. 

Here's the plot of log $A_t$ for Japan. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/117.embed"></iframe>

Prior to 1995, the growth rate of productivity was about 1.6% per year (the orange line) while after 2000 the growth rate was 0.2% per year (the green line). This conforms to the story of the drop in $g_R$. 

What is happening? Go back up to the GeoGebra figure and lower the rate $g_R$. This lowers the steady state rate of growth of productivity. At the original level of R to A, the growth rate of productivity is now higher than $g_R$, so the ratio of R to A *falls* until the economy reaches the new steady state. 

Returning to the equation for the BGP of productivity,

$$
\ln A_t^{BGP} = \frac{1}{1-\phi}\ln \theta - \frac{1}{1-\phi} \ln \frac{\lambda}{1-\phi} - \frac{1}{1-\phi}\ln g_R + \frac{\lambda}{1-\phi} \ln R_0 + \frac{\lambda}{1-\phi} g_R t
$$

note that there are *two* effects of the drop in $g_R$. First, the slope itself will get lower. That is the growth rate of productivity falling, and you can see the lower slope in the figure above as the green line slope being flatter than the orange line. Second, the intercept depends on $g_R$ as well, negatively. So a lower $g_R$ *raises* the intercept of the line, and again you can see that this holds in the figure above for the green line compared to the orange line. There isn't anything really meaningful about this. It has to work this way to fit the data because while Japan's growth rate of productivity fell, the *level* of productivity didn't fall in 1995, as you can see. It just stopped growing as fast as before.