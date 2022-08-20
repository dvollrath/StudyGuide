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

![Meme](meme_capital.pdf)

## Per-capita growth 
From the last section we found that 

$$
g_y = \alpha (g_K - g_A - g_L) + g_A
$$

was the growth rate of GDP per capita. To decipher what drives growth, we need to know what creates growth in productivity, labor, and capital. The first two are going to be relatively simple, as we'll just assume they are constants. It's the growth rate of capital, $g_K$, that is where all the interesting dynamics come in.

## Capital accumulation
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

From the last page, we know that the capital/output ratio is just the $K/AL$ ratio raised the $1-\alpha$ power. This means we can write the following:

Growth rate of capital
{: .label .label-green }
**The growth rate of capital is determined by the following equation:**

$$
g_K = s_I \left(\frac{AL}{K}\right)^{1-\alpha} - \delta.
$$

The *growth rate* of capital depends *inversely* on the *ratio* of $K/AL$. The higher is $K/AL$, the lower is the growth rate $g_K$. We also see that the higher is the share of GDP allocated to capital formation, $s_I$, the higher is the growth rate of capital/output. The higher is depreciation, $\delta$, the slower capital grows, as it is breaking down faster.
