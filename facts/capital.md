---
title: Capital and returns
parent: Growth facts
nav_order: 5
---

# Capital and returns
{: .no_toc }

1. TOC 
{:toc}

![Meme](meme_capital.png)

## Capital/output ratios
One of the key inputs to producing GDP is what is loosely termed physical capital ($K$): structures, equipment, and intellectual property. If we tried to compare the stock of that capital across countries, it would be difficult because the absolute amount of capital in a place like the US is so large relative to a place like South Korea. We're instead going to scale the capital stock by the size of GDP, $K/Y$. In addition, this ratio is going to turn out to be central to how we think about the process of economic growth when we turn to modeling.

Let's start with our standard set of countries, and plot the size of $K/Y$ over time. These ratios are kinda-sorta stable? For the UK, there is a clear increase and then decline in the ratio over time, although these movements take decades to occur. There are mild trends in other countries as well, but for the most part the capital/output ratio stays within a range of about 3 to 4 over decades.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/21.embed"></iframe>

As is normal, when we turn to the group of countries that were/are experiencing catch-up growth, there is less stability involved. Nigeria experienced a massive surge in the capital/output ratio, and then it collapsed to around 2. This may well have something to do with problems in measuring capital, and less with a real pattern in the data. 

For other countries, there are some clear trends. Japan appears to have had a climb in K/Y over time, but then it levelled off from 2000 forward, similar to when its growth rate slowed down to match that in the US. Korea showed a similar pattern. China is again an outlier, with a consistent path upward in the capital/output ratio.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/23.embed"></iframe>

Much like all of our stylized facts, we're going to zoom out and focus on the stability involved in this data, as in the first figure. That will allow us to build a model of economic growth, and using that we can think about why countries in the second figure may see these movements in capital/output over time. 

{: .fact }
The capital/output ratio in developed economies appears to be stable over the long-run (e.g. decades)

## Return to capital
One of the key reasons to look at the capital/output ratio is that it should inform us about the *return* to capital. We need a tiny bit of math to think about this return. Recall the share $s_K$ is the fraction of GDP that is paid to owners of capital. Total payments to capital are thus $s_K Y$, and therefore the average return to any given unit of capital, $R$, is

$$
R = \frac{s_K Y}{K}.
$$

We could construct this $R$ using the data on $s_K$ and data on the capital/output ratio just discussed. In both cases, the stylized fact is that $s_K$ is stable and $K/Y$ is stable. This implies that the value of $R$ must be stable over time. 

Can we confirm this without just assuming it? To some extent, yes. Jorda, Schularick, and Taylor produced a long-run series on the [rates of return to capital](http://www.macrohistory.net/data/). They build this up from actual financial returns, as opposed to backing it out from aggregate data on $s_K$ and $K/Y$. 

The figure below uses their series on the overall return to capital, which incorporates housing, equities, and safe assets (like government bonds). The data are not available for all countries, so I've included five that have been used in the prior section.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="/plotly/jst-stable-return.html"></iframe>

What's plotted in the figure are backward looking 5-year average real returns. In 2000, for example, the rate of return plotted is the annualized return on capital from 1995-2000. The "real" return means that these are adjusted for inflation. This smooths out the year-to-year fluctuations, which can get very big, and allows us to focus on the long-run trend in returns. Similar to the other series, there is a certain stability here. Yes there are still big fluctuations (see Japan around 1970), but overall the returns all hover around 5% per year consistently. There is no distinct trend leading the return to capital in this period up or down. This gives us another stylized fact.

{: .fact }
The return on capital in developed economies appears to be stable over the long-run (e.g. decades)


