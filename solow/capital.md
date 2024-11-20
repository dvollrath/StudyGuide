---
title: Capital accumulation
parent: Solow and Balanced Growth
has_children: true
nav_order: 3
---

# Capital accumulation
{: .no_toc }

1. TOC 
{:toc}

![Meme](meme_capital.png)

## Per-capita growth 
From the last section we found that 

$$
g_y = \alpha (g_K - g_A - g_L) + g_A
$$

was the growth rate of GDP per capita. To decipher what drives growth, we need to know what creates growth in productivity, labor, and capital. The first two are going to be relatively simple, as we'll just assume they are constants. It's the growth rate of capital, $g_K$, that is where all the interesting dynamics come in.

## Capital accumulation
To describe $g_K$ further, we need to now dig into the process by which capital accumulates. Here is the basic equation we assume governs how the stock of capital changes.

{: .assumption }
>Capital accumulates according to the following equation:
>
>$$
>K_{t+1} = I_t + (1-\delta)K_t
>$$

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

From the last page, we know that the capital/output ratio is just the $K/AL$ ratio raised the $1-\alpha$ power. This means we can write the following:

{: .important }
>The growth rate of capital is determined by the following equation:
>
>$$
>g_K = s_I \left(\frac{AL}{K}\right)^{1-\alpha} - \delta.
>$$

The *growth rate* of capital depends *inversely* on the *ratio* of $K/AL$. The higher is $K/AL$, the lower is the growth rate $g_K$. We also see that the higher is the share of GDP allocated to capital formation, $s_I$, the higher is the growth rate of capital/output. The higher is depreciation, $\delta$, the slower capital grows, as it is breaking down faster.

## Capital and GDP per capita growth
Believe it or not, between the production function and the growth rate of capital, we've got everything we need to produce a reasonable simulation of economies that have balanced growth paths. 

Before we do a lot of theoretical work proving certain things about how growth works in these economies, it can be helpful to see mechanically what production and capital growth involve. We still need the basic equations to work with. 

First, we know the growth rate of capital is

$$
g_K = s_I \left(\frac{AL}{K}\right)^{1-\alpha} - \delta.
$$

Second, we know that from our production function, $Y_t = K_t^{\alpha}(A_t L_t)^{1-\alpha}$ that we can write the growth rate of GDP per capita as

$$
g_y = \alpha (g_K - g_A - g_L) + g_A.
$$

We have enough to do a basic simulation. Let's imagine that we have two economies, A and B. Economy A starts with a $K/AL$ ratio of 2. Economy B starts with a $K/AL$ ratio of 5, so the two countries are quite different in their initial capital/output ratio. 

Despite that difference, the parameters in the two countries are otherwise identical. Specifically, I set $\alpha = 0.3$, $s_I = 0.2$, $\delta = .05$, $g_A = 0.02$, and $g_L = 0.01$, all values that are pretty reasonable for a developed country. 

The initial growth rate of capital for economy A is, given the $K/AL$ ratio of 2, 

$$
g_K^A = .2 \left(\frac{1}{2}\right)^{1-.3} - .05 = 0.073
$$

or 7.3%. For economy B, the growth rate of capital is

$$
g_K^B = .2 \left(\frac{1}{5}\right)^{1-.3} - .05 = 0.015
$$

or only 1.5%. The capital stock in economy B is so large that the new gross capital formation being done cannot keep up with the depreciation of capital and the fact that output is growing, and so the ratio of $K/AL$ does not go up by much. The economy is accumulating capital, just not very quickly relative to how fast the economy as a whole is growing.

These growth rates hold given the initial value of the capital/output ratio. But once they take effect, what happens? In A, the capital stock grows at 7.3%, but the terms $AL$ only grows at 2+1 = 3% (you should be able to figure out why that is true). That means the $K/AL$ ratio will *grow*, as the numerator is growing faster than the denominator.

In country B, the opposite is occuring. The capital stock only grows at 1.5%, but the denominator of the $K/AL$ ratio is growing at 3% again. Hence the $K/AL$ ratio will *fall*.

The figure below plots out what happens to the $K/AL$ ratios, and the growth rate of the capital stock, $g_K$, over time for both A and B. It is just reporting what happens period by period given the equation for $g_K$ in both economies.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="../plotly/me-gky-dynamics.html"></iframe>

Hit "Play" to see what happens. In A, the growth rate goes *down*, while in B the growth rate goes *up*.  This gets boring pretty fast, but keep watching until the end, because you'll see that both economies are headed to the *same* spot, which is where $g_K = 0.03$. At this spot, the growth rate of capital is the same in *both* countries. And it happens when the $K/AL$ ratio is about 3.7. 

What about the growth rate of GDP per capita over time? At first, in economy A this is

$$
g_y^A = .3(.073 - .02 - .01) + .02 = 0.033,
$$

or 3.3%. But over time, as the growth rate of capital falls in A, so will the growth rate of GDP per capita. In B, the initial growth rate of GDP per capita is

$$
g_y^B = .3(.015 - .02 - .01) + .02 = 0.016,
$$

or 1.6% per year. Economy A grows much faster than economy B because A has a *lower* $K/AL$ ratio to begin with. 

We can plot the growth rate of GDP per capita over time for these two countries. This graph is a little different than above, so be careful. Here the x-axis is time (not the $K/AL$ ratio). I've also added one extra line, which shows a growth rate of 2% at all times, the growth rate of productivity. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="../plotly/me-gy-animated.html"></iframe>

Once you hit play, you'll see how the growth rate in A drops rapidly, while the growth rate in B rises steadily. The animation is a little jumpy, and that doesn't mean anything important, it just reflects the fact that I'm not great making these figures. But notice that the growth rate in both A and B converge towards 2% over time. Just like they end up heading towards the same $K/AL$ ratio of 3.7, they end up heading towards the same growth rate of 2%. 
