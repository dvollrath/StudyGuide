---
title: Simulating growth
parent: Solow and Balanced Growth
nav_order: 3
---

# Simulating growth
{: .no_toc }

1. TOC 
{:toc}

## Tracking the growth of GDP per capita
Believe it or not, between the production function and the growth rate of the capital/output ratio, we've got everything we need to produce a reasonable simulation of economies that have balanced growth paths. 

Before we do a lot of theoretical work proving certain things about how growth works in these economies, it can be helpful to see mechanically what production and capital/output growth involve. We still need the basic equations to work with. 

First, we know the growth rate of the capital/output ratio

$$
g_{K/Y} = (1-\alpha)\left[s_I \frac{Y_t}{K_t} - \delta - g_A - g_L \right].
$$

Second, we know that from our production function, $Y_t = K_t^{\alpha}(A_t L_t)^{1-\alpha}$ that we can write the growth rate of GDP per capita as

$$
g_y = \frac{\alpha}{1-\alpha} g_{K/Y} + g_A.
$$

We have enough to do a basic simulation. Let's imagine that we have two economies, A and B. Economy A starts with a capital/output ratio of 0.5. Economy B starts with a capital/output ratio of 4, so the two countries are quite different in their initial capital/output ratio. 

Despite that difference, the parameters in two countries are otherwise identical. Specifically, I set $\alpha = 0.3$, $s_I = 0.2$, $g_A = 0.02$, and $g_L = 0.01$, all values that are pretty reasonable for a developed country. 

The initial growth rate of the capital/output ratio for economy A is, given the capital/output ratio of 0.5, 

$$
g_{K/Y}^A = (1-.3)\left[.2/0.5 - .05 - .02 - .01 \right] = 0.224
$$

or 22.4%. For economy B, the growth rate of the capital/output ratio is

$$
g_{K/Y}^B = (1-.3)\left[.2/4 - .05 - .02 - .01 \right] = -0.021
$$

or *negative* 2.1%. The capital/output ratio in economy B is so large that the new gross capital formation being done cannot keep up with the depreciation of capital and the fact that output is growing, and so capital/output is shrinking in economy B. By the way, this doesn't mean *capital* (K) is shrinking, just that the capital/output ratio (K/Y) is shrinking.

These growth rates hold given the initial value of the capital/output ratio. But once they take effect, the capital/output ratio will be higher in A, and the growth rate the next period will fall. In B, the capital/output ratio will fall, and the growth rate the next period will be higher. 

The figure below plots out what happens to the capital/output ratios, and the growth rate of the capital/output ratios, over time for both A and B. It is just reporting what happens period by period given the equation for $g_{K/Y}$ in both economies.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/49.embed"></iframe>

Hit "Play" to see what happens. In A, the growth rate goes *down*, while in B the growth rate goes *up* (but is still negative).  This gets boring pretty fast, but keep watching until the end, because you'll see that both economies are headed to the *same* spot, which is where $K/Y = 2.5$. At this spot, the growth rate of the capital/output ratio in *both* countries is zero. The capital/output ratio for these two countries evolves over time until it *stops growing completely*.

What about the growth rate of GDP per capita over time? At first, in economy A this is

$$
g_y^A = \frac{.3}{1-.3} .224 + .02 = .116,
$$

or 11.6%. But over time, as the growth rate of the capital/output ratio falls in A, so will the growth rate of GDP per capita. In B, the initial growth rate of GDP per capita is

$$
g_y^B = \frac{.3}{1-.3} (-.021) + .02 = .011,
$$

or 1.1% per year. Economy A grows much faster than economy B because A has a *lower* capital/output ratio. 

We can plot the growth rate of GDP per capita over time for these two countries. This graph is a little different than above, so be careful. Here the x-axis is time (not the K/Y ratio). I've also added one extra line, which shows a growth rate of 2% at all times, the growth rate of productivity. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/55.embed"></iframe>

Once you hit play, you'll see how the growth rate in A drops rapidly, while the growth rate in B rises steadily. The animation is a little jumpy, and that doesn't mean anything important, it just reflects the fact that I'm not great making these figures. But notice that the growth rate in both A and B converge towards 2% over time. Just like they end up heading towards the same K/Y ratio of 2.5, they end up heading towards the same growth rate of 2%. 

## Tracking the level of GDP per capita
Rather than just seeing what happens to the growth rate, it would be nice to see what this implies for the *level* of GDP per capita. Remember, this level is what we plotted on the figures that were used to establish that growth in developed countries was stable. 

To get the level of GDP per capita, we have to do a little mathematical work first. Go back the [production function](http://growthecon.com/StudyGuide/solow/production.html) and recall that we could write the level of GDP, in logs, as 

$$
\ln Y_t = \alpha \ln K_t + (1-\alpha) \ln A_t + (1-\alpha) \ln L_t.
$$

This won't see intuitive, but subtract $\alpha \ln Y_t$ from both sides.

$$
(1-\alpha)\ln Y_t = \alpha (\ln K_t - \ln Y_t) + (1-\alpha) \ln A_t + (1-\alpha) \ln L_t
$$

and then divide both sides by $(1-\alpha)$,

$$
\ln Y_t = \frac{\alpha}{1-\alpha} (\ln K_t - \ln Y_t) + \ln A_t + \ln L_t.
$$

We care about per-capita outcomes, and recall that since GDP per capita is $y_t = Y_t/L_t$, it must be that $\ln y_t = \ln Y_t - \ln L_t$. We also know that $\ln K_t/Y_t = \ln K_t - \ln Y_t$ so we can write the log of GDP per capita as

$$
\ln y_t = \frac{\alpha}{1-\alpha} (\ln K_t/Y_t) + \ln A_t.
$$

This says that the *level* of log GDP per capita at time $t$ depends on $\ln K_t - \ln Y_t$, which is just the log of the capital/output ratio. We know how to describe what happens to that already - it was the first figure in this section. 

But GDP per capita also depends on the level of productivity at time $t$, $\ln A_t$. We'll make the simplest assumption we can, that productivity has constant growth over time, so that

$$
A_t = (1+g_A)^t A_0.
$$

If you refer back to the [math preview](http://growthecon.com/StudyGuide/preliminaries/lines.html#theoretical-lines-and-slopes) you know we can take logs of this and get to

$$
\ln A_t = \ln A_0 + g_A t.
$$

The log of productivity at time $t$ depends on initial productivity, $A_0$, and on the growth rate of productivity, $g_A$. Put this together with the expression for log GDP per capita and we have

$$
\ln y_t = \frac{\alpha}{1-\alpha} (\ln K_t/Y_t) + \ln A_0 + g_A t.
$$

We already said for economy A that the initial capital/output ratio was 0.5, and for economy B it was 4. I already set the value of $\alpha=0.2$ and $g_A=0.02$. The only other thing we need is the value of $A_0$. Let's set that in both economy A and economy B to be $A_0 = 54$. There is nothing magic about that value, all that is important is that it is identical for A and B. 

Now we can find the level of GDP per capita in both during the first (t=0) period. In A it is

$$
\ln y_0^A = \frac{.3}{1-.3} (\ln .5) + \ln 54 + .02 \times 0 = 3.69.
$$

In B it is

$$
\ln y_0^B = \frac{.3}{1-.3} (\ln 4) + \ln 54 + .02 \times 0 = 4.58.
$$

So economy B has a *higher* GDP per capita to start thanks to the higher capital/output ratio, but remember that it will have a *lower* growth rate. The actual numbers here don't really mean much by themselves. But we can look at log differences to tell us about relative GDP per capita. That is, 4.58-3.69 = 0.89. And $e^{0.89} = 2.43$. So country B has a GDP per capita about 2.43 times higher than in country A. 

Those are just the GDP per capita in period 0. What if we keep simulating this out, given that we know what happens to $K_t/Y_t$ in each period for both countries? 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/53.embed"></iframe>

Once you hit play, you can see the big difference in initial GDP per capita. But you can also see that both countries are approaching the blue line in the middle I've labeled "BGP" over time. Again, the figures are a little jumpy, but ignore that. If we ran this figure out even further, you'd see that both countries have GDP per capita that ends up along that BGP line.

## Fun with spreadsheets
Simulating an economy using the Solow model can be easier to get your head around sometimes if you use a brute force approach in a spreadsheet, calculating the result period by period. [This link](https://docs.google.com/spreadsheets/d/1jKD7dWpAY26mWn0oEqy9SELkCK0IhRdaUyXa2iP5qp8/edit?usp=sharing) will take you to a Google Sheet where I've set up the Solow model this way. 

You should be able to walk through period by period and see how the equations used in the Study Guide map to the formulas used in the spreadsheet. One advantage of the spreadsheet is that you can also play with the parameters and see how this changes the path of log GDP per capita, the growth rate of GDP per capita, and the relationship of K/Y and $g_{K/Y}$. 