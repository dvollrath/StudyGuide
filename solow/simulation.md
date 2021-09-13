---
title: Simulating growth
parent: Solow and Balanced Growth
has_children: true
nav_order: 3
---

# Simulating growth
{: .no_toc }

1. TOC 
{:toc}

## Tracking the growth of GDP per capita
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

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/49.embed"></iframe>

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

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/55.embed"></iframe>

Once you hit play, you'll see how the growth rate in A drops rapidly, while the growth rate in B rises steadily. The animation is a little jumpy, and that doesn't mean anything important, it just reflects the fact that I'm not great making these figures. But notice that the growth rate in both A and B converge towards 2% over time. Just like they end up heading towards the same $K/AL$ ratio of 3.7, they end up heading towards the same growth rate of 2%. 

## Tracking the level of GDP per capita
Rather than just seeing what happens to the growth rate, it would be nice to see what this implies for the *level* of GDP per capita. Remember, this level is what we plotted on the figures that were used to establish that growth in developed countries was stable. 

We know we can write the level of GDP per capita as 

$$ 
y_t = \left(\frac{K_t}{A_t L_t}\right)^{\alpha} A_t.
$$

Taking logs, we have

$$
\ln y_t = \alpha \ln (K_t/A_tL_t) + \ln A_t.
$$

This says that the *level* of log GDP per capita at time $t$ depends on $\ln K/AL$, which is just the log of the $K/AL$ ratio. We know how to describe what happens to that already - it was the first figure in this section. 

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
\ln y_t = \alpha \ln (K_t/A_tL_t) + \ln A_0 + g_A t.
$$

We already said for economy A that the initial $K/AL$ ratio was 2, and for economy B it was 5. I already set the value of $\alpha=0.2$ and $g_A=0.02$. The only other thing we need is the value of $A_0$. Let's set that in both economy A and economy B to be $A_0 = 54$. There is nothing magic about that value, all that is important is that it is identical for A and B. 

Now we can find the level of GDP per capita in both during the first (t=0) period. In A it is

$$
\ln y_0^A = .3 (\ln 2) + \ln 54 + .02 \times 0 = 4.20.
$$

In B it is

$$
\ln y_0^B = .3 (\ln 5) + \ln 54 + .02 \times 0 = 4.47.
$$

So economy B has a *higher* GDP per capita to start thanks to the higher $K/AL$, but remember that it will have a *lower* growth rate. The actual numbers here don't really mean much by themselves. But we can look at log differences to tell us about relative GDP per capita. That is, 4.47-4.20 = 0.27. And $e^{0.27} = 1.31$. So country B has a GDP per capita about 1.31 times higher than in country A. 

Those are just the GDP per capita in period 0. What if we keep simulating this out, given that we know what happens to $K_t/Y_t$ in each period for both countries? 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/53.embed"></iframe>

Once you hit play, you can see the big difference in initial GDP per capita. But you can also see that both countries are approaching the blue line in the middle I've labeled "BGP" over time. Again, the figures are a little jumpy, but ignore that. If we ran this figure out even further, you'd see that both countries have GDP per capita that ends up along that BGP line.

## Fun with spreadsheets and figures
Simulating an economy using the Solow model can be easier to get your head around sometimes if you use a brute force approach in a spreadsheet, calculating the result period by period. [This link](basicsolow.xlsx) will take you to an Excel spreadsheet where I've set up the Solow model this way. 

You should be able to walk through period by period and see how the equations used in the Study Guide map to the formulas used in the spreadsheet. One advantage of the spreadsheet is that you can also play with the parameters and see how this changes the path of log GDP per capita, the growth rate of GDP per capita, and the relationship of K/Y and $g_{K/Y}$. 

As an alternative the following app allows you to tweak the parameters of the model and see how various outcomes evolve over time. In essence, this is an interactive version of the spreadsheet that is easier to adjust, but remember it is doing exactly the *same* thing. You can play with the embedded app below, or use <a href="https://dietzvollrath.shinyapps.io/SolowBasic/" target="_blank">this link</a> to open up a direct link, which is easier to use.

<iframe height="800" width="100%" frameborder="no" src="https://dietzvollrath.shinyapps.io/SolowBasic/"> </iframe>
