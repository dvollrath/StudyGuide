---
title: Accounting for growth
parent: Solow and Balanced Growth
nav_order: 8
---

# Accounting for the sources of growth
{: .no_toc }

1. TOC 
{:toc}

## Accounting for growth
We know that productivity growth, $g_A$, determines the growth rate on the BGP. But we can establish further that productivity growth is responsible for *most* of the growth in GDP per capita over time. This will be focused on the United States, but for a number of developed countries similar results would hold.

To do this we're going to build some hypothetical paths for log GDP per capita. Start with our description of log GDP per capita that *includes* human capital. 

$$
\ln y_t = \alpha (\ln K_t/A_th_tL_t) + \ln h_t + \ln A_t.
$$

For the purposes here (just to keep some notation straight, and because it is easier to measure), we're going to talk about this in capital/output terms. Remember that $K/Y = (K/AhL)^{1-\alpha}$, so it must be that

$$
\ln y_t = \frac{\alpha}{1-\alpha} (\ln K_t/Y_t) + \ln h_t + \ln A_t.
$$

Next, we're going to set a base year to start with. In this case, we'll use 1960. For that year, we'll record the capital/output ratio, $K_{1960}/Y_{1960}$, the human capital level, $h_{1960}$, and the level of productivity, $A_{1960}$. 

With that information, let's build a series of hypothetical GDP per capita that depends *only* on what happened to the capital/output ratio from 1960 to 2017. This will be

$$
\ln y_t^{KY} = \frac{\alpha}{1-\alpha} (\ln K_t/Y_t) + \ln h_{1960} + \ln A_{1960}
$$

and tells us what log GDP per capita would have been in a hypothetical world where the *only* thing that changed over time was the capital/output ratio, but where human capital and productivity stayed at exactly their 1960 levels the entire time. If $\ln y_t^{KY}$ were to turn out to be very close to the actual GDP per capita, $\ln y_t$, then we'd know that capital/output was mainly responsible for actual growth in GDP per capita, and that human capital and productivity were unimportant. 

We can do something similar for both human capital and productivity. 

$$
\ln y_t^{HC} = \frac{\alpha}{1-\alpha} (\ln K_{1960}/Y_{1960}) + \ln h_{t} + \ln A_{1960}
$$

and 

$$
\ln y_t^{Prod} = \frac{\alpha}{1-\alpha} (\ln K_{1960}/Y_{1960}) + \ln h_{1960} + \ln A_{t}.
$$

If you plot these all these series together for the US, along with the path of actual log GDP per capita, you get the following figure.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/81.embed"></iframe>

What does this show us? Perhaps the most striking feature is that, by itself, the capital/output ratio would have *lowered* GDP per capita from 1960 to 2017. In the US the share of GDP allocated to capital goods fell slightly over time, and hence the K/Y ratio declined. This pulled down on GDP per capita. Note that we shouldn't have expected this to have a huge effect on GDP per capita in the first place. The US appeared to be on a BGP, and the K/Y ratio should have been stable anyway. 

Human capital, the yellow line, by itself would have led to a mild increase in GDP per capita. From 1960 to 1980 there was growth in human capital per person, mainly due to the increase in the ratio of workers to people because of the Baby Boom and the spread of college education. From 1980 to 2017 the level of human capital per person would have allowed for slight growth in GDP per capita, all by itself. 

Finally, the green line plots GDP per capita due only to the change in productivity. This appeared to be responsible for the vast majority of growth. The gap between the green line (productivity only) and the red line (actual GDP per capita) is the GDP per capita accounted for by growth in capital/output and human capital. Productivity cannot explain *all* of the increase in GDP per capita experienced from 1960 to 2017, but it can explain *most* of it. 

## Comparison by decade
This is really just a slightly different way of showing the same information that was in the prior figure. For any given year, we're going to take a ten-year annualized growth rate of all the things determining growth. For example, we'll look at $(\ln A_{2000} - \ln A_{1990})/10$ to look at growth rate of productivity from 1990 to 2000. This gives us a way of accounting for the growth of GDP per capita over any 10-year period. 

More concretely, we'll have

$$
(\ln y_t - \ln y_{t-10})/10 = \frac{\alpha}{1-\alpha} (\ln K_t/Y_t - \ln K_{t-10}/Y_{t-10})/10 + (\ln h_t - \ln h_{t-10})/10 + (\ln A_t - \ln A_{t-10})/10.
$$

This decomposes the 10-year annualized growth rate of GDP per capita into the part accounting for by capital/output ratio growth, human capital growth, and productivity growth. 

The following figure plots for each year the contribution of each piece. The green bars represent the contribution of productivity growth, and as expected they are the largest in almost every given year, with a few exceptions. The orange bars capture human capital growth. The orange bars start in negative territory often because capital/output growth (the blue bars) is often negative. The combination of the three bars adds up to actual growth in GDP per capita, so the top of the bars captures that growth rate.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/89.embed"></iframe>

What this makes obvious is that productivity growth and human capital growth were the dominant source of growth in GDP per capita for the US. Moreover, it highlights how human capital growth was a big source of growth in the middle of the 20th century, but that the contribution declined in the late 20th century. You can also see that the growth rate of productivity was high for most of this time period, with dips in the 1970s, and then most noticeably in the 21st century. 

Remember that these are 10-year rolling growth rates. So if you look at 2009, the bars represent the growth rates from 1999-2009. Even with the Great Recession in 2009, this represents a slowdown in growth from the late 1990s to early 2000s. 

This represents another means of arguing that understanding productivity growth is of paramount importance. If we can explain that, we can possibly explain what happened starting in the 21st century to the growth rate and if the decline in the productivity growth rate might continue.
