---
title: Case studies
parent: Ideas and Productivity
has_children: true
nav_order: 9
---

# Case studies
{: .no_toc }

1. TOC 
{:toc}

![Meme](meme_case.png)

## A one-time shock to the stock of researchers
Let's think about the consequences of a one-time boost to the stock of researchers, in an economy. If you want some context for this, think of the 1930s and 40s, when a host of German scientists immigrated to the U.S. to escape persecution by the Nazis. [Moser, Voena, and Waldinger](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=1910247) studied the impact of this on patent activity in the chemical industry specifically, finding it had a significant *increase* in patent activity. 

How do we think about this in our model of innovation? First, be careful that this shock is like a *one-time* jump in $L_t$, but the growth rate of population $g_L$ is unchanged once that shock occurs, and hence the growth rate of researchers is unchanged in the long run. Yes, the measured growth rate of R&D effort would be much higher than $g_L$ in that specific year that the shock occurred, but I'm saying that $g_L$ is the same both before the year of the shock and after the year of the shock.

Next, go back to the interactive figure describing the dynamics of innovation, <a href="basic-romer.html" target="_blank">using this link</a> or play with it right here:

<iframe height="600" width="100%" frameborder="no" src="basic-romer.html"> </iframe>

Adjust the value of $L_0$ upwards, so the ratio of researchers to productivity goes up. We're faking the increase in research here by pretending it is an increase in population (which is also was). Once L is higher, what do the dynamics tell us? It tells us that L/A starts to fall, and eventually the economy will come back to rest at the same long-run growth rate as before, $g_A^{BGP} = g_L \lambda/(1-\phi)$. 

Does that mean the one-time jump in researchers had no effect? No. It had a temporary effect on the growth rate of productivity (it was higher for a while) and therefore means there is a *permanent* effect on the *level* of productivity. Go back and look at the other tabs for the level and growth rate of productivity. You'll see a temporary spike in the growth rate of productivity and that the level of productivity is becoming permanently higher. The extra scientists push up the level of the BGP for productivity. We don't reach that new BGP right away, but take a while to get there, and during this time we've got higher growth in productivity than normal. 

We could use China as an example of this. Recall from the [earlier data](effort.html) that China had a *massive* increase in the number of research workers starting around the early 1990s. If we think of this as a "one-time" shock to research effort that does not change the long-run growth rate of researchers, it should show up in a significant shift up in the level of productivity. 

The figure below plots $\ln A_t$ for China, along with two hypothetical BGP's for productivity. Let me be clear here, I eyeballed the time frames to estimate these BGP's over in order to generate something looking this clean. This does not mean that China's increase in productivity was *solely* the consequence of increased R&D workers.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="../plotly/pwt-apply-gtfp-chn.html"></iframe>

That caveat aside, there is a distinct shift up in the *level* of productivity in China from the 1960-1990 period (the orange line) to the post-2010 period (the green line). For the time frame from 1990 to 2010, the growth rate of productivity is way above the norm for *both* of those hypothetical BGPs, consistent with the story that a one-time shock to their research effort boosted productivity growth temporarily. But just as our dynamic model predicted, the growth rate of productivity should have slowed down as $A_t$ accumulated, and R&D got harder and harder. 

Note that there isn't any distinct tendency for *growth* in TFP in either case. For the early period it would probably be easiest to explain this in (wayyy overly simplistic) terms of a political and economic structure that simply did not have any incentives for innovation, and a situation where it made sense that $s_R$ was about zero. In the latter period, from the perspective of our model this would be consistent with the fact that population growth in China is zero and possibly negative. Whether you take that seriously or not, the indication from the figure is that most of what we saw in China's rapid productivity growth was a level shift, and not a fundamental change in the growth rate of TFP.

## A change in the growth rate of researchers
A different kind of situation arises when we look at a change in the *growth rate* of R&D workers. A very distinct case occurs in Japan. From 1981 to about 1995, the growth rate of R&D workers was about 4% per year. And then it just flatlined, becoming about zero from 1995 to today. We know that Japan's share of R&D workers didn't drop a lot, and so this is mainly a reflection of a fall in the population growth rate, $g_L$.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="../plotly/oecd-rd-lnfte-jpn.html"></iframe>

What does a drop in $g_L$ look like? We know that along the BGP the growth rate of productivity should be $g_A^{BGP} = g_L \lambda/(1-\phi)$, so the drop should have shifted the growth rate of productivity from high to about zero. Now remember, the growth rate of researchers *in Japan* isn't necessarily the most important number if Japan can use ideas from other countries, but in this severe of a case we should see something happen. 

Here's the plot of log $A_t$ for Japan. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="../plotly/pwt-apply-gtfp-jpn.html"></iframe>

Prior to 1995, the growth rate of productivity was about 1.6% per year (the orange line) while after 2000 the growth rate was 0.2% per year (the green line). This conforms to the story of the drop in $g_L$. 

What is happening? Go back up to the interactive figure and lower the rate $g_L$. This lowers the steady state rate of growth of productivity. At the original level of L to A, the growth rate of productivity is now higher than $g_L$, so the ratio of L to A *falls* until the economy reaches the new steady state. 
