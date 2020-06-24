---
title: Growth on the BGP
parent: Solow and Balanced Growth
nav_order: 2
---

# Growth on a balanced growth path
{: .no_toc }

1. TOC 
{:toc}

## Per-capita growth and capital/output ratios
Balanced growth paths deal with growth in GDP per capita. So let's first work on thinking about how per-capita growth works with the production function from the [prior section](). Recall that from our Cobb-Douglas production function, we could write the growth rate of GDP as

$$
g_Y = \alpha g_K + (1-\alpha) g_A + (1-\alpha) g_L.
$$

Now I'm going to do something a little odd. I'm going to subtract $\alpha g_K$ from both sides. 

$$
(1-\alpha)g_Y = \alpha (g_K - g_Y) + (1-\alpha) g_A + (1-\alpha) g_L.
$$

Divide both sides of this equation by $(1-\alpha)$, 

$$
g_Y = \frac{\alpha}{1-\alpha} (g_K - g_Y) + g_A + g_L.
$$

We seem to have made things more complicated, but this is going to work for us later on. This version says that the growth rate of real GDP depends on $g_K-g_Y$, or the difference in the growth rate of capital and the growth rate of GDP. 

Stop for a moment to think about where we would get such a differene in growth rates. What is the growth rate of the capital/output ratio, $K/Y$? As a ratio, it's growth rate must be $g_K - g_Y$. This last equation says that the growth rate of GDP depends, in part, on the growth rate of the capital/output ratio. Why do we write it this way? Because ultimately the growth rate of capital is going to depend on the growth rate of output - we have to build capital - and so capital growth contributes to growth in GDP only to the extent that it *outgrows* output. We'll get back to this in the next section regarding capital accumulation.

Anyway, back to that last equation. The other things that drive growth in real GDP are growth in labor, $g_L$, and growth in productivity, $g_A$. Once we account for the growth rate of the capital/output ratio, those two growth rates contribute directly to growth in GDP. Why is there no $\alpha$ or $1-\alpha$ scaling down the effect of $g_A$ or $g_L$ any more? Because while by itself growth in labor (say) raises GDP, that extra GDP growth *also* lets the economy acquire more capital, which contributes further to GDP growth. So this last equation is giving "full credit" to the effects of growth in labor and productivity.

Okay, last this we want to do is see what this all means for growth in GDP per captia, $y = Y/L$. The growth rate of GDP per capita is

$$
g_y = g_Y - g_L.
$$

Put this together with the equation from above and we have

$$
g_y = \frac{\alpha}{1-\alpha} (g_K - g_Y) + g_A.
$$

This says that the growth rate of GDP per capita depends on two things: the growth rate of the capital/output ratio ($g_K - g_Y$) and the growth rate of productivity, $g_A$. 

What happened to the growth rate of labor? Well, faster growth in labor does imply faster growth in GDP, but is *also* implies faster growth in "capitas", or people. The effect of faster GDP growth due to more labor on GDP per capita is offset exactly (in our theoretical case) by the drag on GDP per capita due to more labor. It's a wash.

## Productivity and the balanced growth path
We haven't said anything yet about how capital accumulates, but we can already make some pretty strong statements about how growth works *on* a balanced growth path. Recall from the [definition](http://growthecon.com/StudyGuide/facts/bgp.html) that on a balanced growth path, the capital/output ratio is stable, or constant. What does that mean? It means that $g_K = g_Y$, or $g_K - g_Y = 0$. This gives us a really important conclusion.

Growth on a BGP
{: .label .label-green }
**The growth rate of GDP per capita on a balanced growth path depends only on the growth rate of productivity, $g_A$.**

This means that the growth rate in all the countries that were on a balanced growth path (e.g. the US, UK, Australia, Canada, probably Mexico, probably Germany and Japan in the last few decades) is equal to the growth rate of productivity *only*. The growth rate of capital - which we'll see is due to the amount of GDP they allocate to new capital - does *not* matter for how fast countries grow in the long-run. It will still matter, we'll see, but not to the growth rate. 

Productivity growth is the origin of the long-run growth in GDP per capita. This makes understanding the growth rate of productivity one of the most important things we can study. The whole next topic of the study guide is dedicated to thinking about why and how productivity grows, for that reason. 

We can even be a little more specific. The growth rate of GDP per capita is stable on a balanced growth path, and we said it was roughly equal to 1.8% per year for most developed countries. That means:

Growth in productivity
{: .label .label-green }
**The growth rate of productivity is stable and equal to about 1.8% per year in most developed countries.**

We'll use this last implication to help us pin down the economics behind the growth rate of productivity.