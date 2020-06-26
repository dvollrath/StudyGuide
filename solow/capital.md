---
title: Capital accumulation
parent: Solow and Balanced Growth
nav_order: 2
---

# Capital accumulation
{: .no_toc }

1. TOC 
{:toc}

## Per-capita growth and capital/output ratios
Start with the production function from the last section, and recall that from our Cobb-Douglas production function, we could write the growth rate of GDP as

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

We seem to have made things more complicated, but this is going to make thinking about capital accumulation easier, believe it or not. This version says that the growth rate of real GDP depends on $g_K-g_Y$, or the difference in the growth rate of capital and the growth rate of GDP. 

Stop for a moment to think about where we would get such a differene in growth rates. What is the growth rate of the capital/output ratio, $K/Y$? As a ratio, it's growth rate must be $g_K - g_Y$. This last equation then says that the growth rate of GDP depends, in part, on the growth rate of the capital/output ratio. Why do we write it this way? Because ultimately the growth rate of capital is going to depend on the growth rate of output - we have to build capital - and so capital growth contributes to growth in GDP only to the extent that it *outgrows* output. 

The other things that drive growth in real GDP are growth in labor, $g_L$, and growth in productivity, $g_A$. Once we account for the growth rate of the capital/output ratio, those two growth rates contribute directly to growth in GDP. Why is there no $\alpha$ or $1-\alpha$ scaling down the effect of $g_A$ or $g_L$ any more? Because while by itself growth in labor (say) raises GDP, that extra GDP growth *also* lets the economy acquire more capital, which contributes further to GDP growth. So this last equation is giving "full credit" to the effects of growth in labor and productivity.

Okay, last this we want to do to set things up is see what this all means for growth in GDP per capita, $y = Y/L$. The growth rate of GDP per capita is

$$
g_y = g_Y - g_L.
$$

Put this together with the equation from above and we have

$$
g_y = \frac{\alpha}{1-\alpha} (g_K - g_Y) + g_A.
$$

This says that the growth rate of GDP per capita depends on two things: the growth rate of the capital/output ratio ($g_K - g_Y$) and the growth rate of productivity, $g_A$. 

What happened to the growth rate of labor? Well, faster growth in labor does imply faster growth in GDP, but is *also* implies faster growth in "capitas", or people. The effect of faster GDP growth due to more labor on GDP per capita is offset exactly (in our theoretical case) by the drag on GDP per capita due to more labor. It's a wash.

The last thing we're going to do is introduce one piece of notation to save a little space. Define

$$
g_{K/Y} = g_K - g_Y
$$

as the growth rate of the capital/output ratio. Then growth in GDP per capita is

$$
g_y = \frac{\alpha}{1-\alpha} g_{K/Y} + g_A.
$$

## Capital accumulation
If $g_{K/Y} = g_K - g_Y$ is so important for growth differences, then what determines $g_{K/Y}$? Start by plugging in what we know about $g_Y$ from the section on the [production function](http://growthecon.com/StudyGuide/solow/production.html#production-growth-and-elasticities) to the definition of $g_{K/Y}$.

$$
g_{K/Y} = g_K - g_Y = g_K - \alpha g_K - (1-\alpha) g_A - (1-\alpha) g_L = (1-\alpha)\left[g_K - g_A - g_L \right]
$$

We need to come up with more details about $g_A$, $g_L$, and $g_K$. For now, we're going to just take the values of $g_A$ and $g_L$ as given. The interesting part for us is the growth in capital, $g_K$. 

To describe $g_K$ further, we need to now dig into the process by which capital accumulates. Here is the basic equation we assume governs how the stock of capital changes.

Capital accumulation
{: .label .label-green }
**Capital accumulates according to the following equation:**

$$
K_{t+1} = I_t + (1-\delta)K_t
$$

The capital stock in time $t+1$ is equal to gross capital formation in period t, $I_t$, plus some fraction of the current capital stock, $K_t$, that remains. The value of $\delta$ is the *depreciation rate*, and it is a number between 0 and 1. A normal value used for $\delta$ is 0.05, meaning that 5% of the capital stock depreciates, or breaks down, each period. Thus 95% of the capital stock at $K_t$ is still available for use as capital in period $t+1$. 

We need to know what this says about the growth rate of capital, $g_K$. So let's convert this into a growth rate. First, subtract $K_t$ from both sides.

$$
K_{t+1} - K_t = I_t - \delta K_t
$$

and then divide both sides by $K_t$

$$
\frac{K_{t+1} - K_t}{K_t} = \frac{I_t}{K_t} - \delta.
$$

What's on the left? That is the percent growth in the capital stock, $g_K$. On the right we see that the growth rate of the capital stock depends on the size of gross capital formation relative to the current capital stock, minus an adjustment for the depreciation rate.

Tidying up, we have

$$
g_K = \frac{I_t}{K_t} - \delta,
$$

Be aware that the growth rate of $g_K$ can change each period as $I_t$ and $K_t$ change over time. 

We're going to modify this a little so we can make a little more sense of it. Multiply and divide the $I/K$ ratio by $Y$, so we have

$$
g_K = \frac{I_t}{Y_t} \frac{Y_t}{K_t} - \delta.
$$

The growth rate of capital depends on the ratio of gross capital formation to GDP, $I/Y$, and the capital/output ratio, $K/Y$ (inverted). The higher is that ratio of gross capital formation to GDP, the faster capital will grow. That makes some sense. If we put more of our GDP towards producing capital goods, then the capital stock should grow faster. 

This also tells us that if the capital/output ratio goes up, then the growth rate of capital goes *down*. If there is already a lot of capital relative to output, it is difficult to generate a large growth rate of capital because we already have a lot of capital.

If you recall the [definition of the BGP](http://growthecon.com/StudyGuide/facts/bgp.html), one of the elements was that the ratio of gross capital formation to GDP was stable. Let $s_I$ denote this ratio,

$$
s_I = \frac{I_t}{Y_t}
$$

and the data tells us that $s_I$ is roughly constant over time. In the textbook, and most treatments of the Solow model, you'll see this $s$ referred to as a "savings rate". I think that terminology is misleading, because it implies something about the financial activity of people. It is more accurate to read $s_I$ as the "share of GDP accounted for by gross capital formation". The source of financing for that gross capital formation isn't terribly important to us.

This means we've got

$$
g_K = s_I \frac{Y_t}{K_t} - \delta.
$$

Since $s_I$ is stable, this means the growth rate of capital is dictated by the size of the capital/output ratio itself. 

Okay, we've finally got an expression for $g_K$. Let's go back and put this into the equation we started with at the beginning of this sub-section regarding the growth rate of the capital/output ratio. This is important enough to us that we'll give it a little label.

Growth rate of capital/output
{: .label .label-green }
**The growth rate of the capital/output ratio is determined by the following equation:**

$$
g_{K/Y} = (1-\alpha)\left[s_I \frac{Y_t}{K_t} - \delta - g_A - g_L \right].
$$

The *growth rate* of the capital/output ratio depends inversely on the *level* of the capital/output ratio itself. The higher is $K/Y$, the lower is the growth rate $g_{K/Y}$. We also see that the higher is the share of GDP allocated to capital formation, $s_I$, the higher is the growth rate of capital/output. Recall that $g_{K/Y}$ is the transitional growth off the BGP, so this tells us that transitional growth is driven in large part by the actual size of the capital/output ratio.

What else do we see? Three additional things act on the growth rate of the capital/output ratio. 

1. Depreciation, $\delta$, has an obvious effect. The faster that capital breaks down, the slower the capital/output ratio will grow. 
2. Productivity growth, $g_A$. The faster productivity grows, the slower is growth in the capital/output ratio. That is because productivity growth causes output to grow, but does not cause capital to grow directly.
3. Labor or population growth, $g_L$. The faster the workforce grows, the slower is growth in the caiptal/output ratio. This is similar to productivity. Worker growth makes output grow faster, but doesn't make capital grow directly.
