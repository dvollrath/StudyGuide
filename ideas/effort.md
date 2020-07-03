---
title: Research effort
parent: Ideas and Productivity
nav_order: 2
---

# Research effort and productivity growth
{: .no_toc }

1. TOC 
{:toc}

## Increasing absolute research effort
In the same way that labor inputs require people to spend their time working, and capital inputs require people to have "spent" GDP on capital goods in the past, productivity growth is going to require some effort. We don't know precisely what is involved in generating higher productivity, but we can get some clues about what is involved. 

The following figure shows the number of workers (or full-time equivalents) engaged in "research and development" activity. That could run anywhere from lab science for Chevorn to market research for Nike. It also includes the activities of a lot of academics who work at universities. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/91.embed"></iframe>

For the most part, these numbers were increasing over time. Japan is something of an exception, although it is worth noting that Japan's total population stopped growing in recent decades as well. The odd dip in the Chinese data is due to a change in reporting standards. Even leaving that aside, you can see that the US and China put more people to work in research and development than other countries. But while other countries are smaller, most appear to have increased the numbers engaged in research and development activity. 

I plotted the absolute number for each country, as opposed to as a fraction of all workers, for a reason. We'll in detail that productivity is different than any other kind of input (like laptops or bulldozers), and that the absolute effort involved is more relevant (instead of something like the capital/output *ratio* or the employee/population *ratio*).

We can instead look at the absolute amount of real R&D spending that was done by each country. Again, the absolute number is going to be relevant to us later, so that is what the following figure shows.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/93.embed"></iframe>

You can see that the US and China dominate in absolute spending *now*, but that this is due in large part to a massive increase in China over the last twenty years. In other countries, total spending on R&D rose as well, but in terms of scale no one matches the US and China. 

These absolute numbers are useful, but it is hard to see the growth rates from this. Recall that we can look at the *log* of something over time to pick up on growth rates. The following figure shows the same information, only now with the *log* of R&D expenditures. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/95.embed"></iframe>

This maintains the pattern across countries in the amount of R&D spending, but you can see that the US, Japan, Germany, and the UK all had similar *growth rates* of R&D. China and South Korea both had very rapid growth rates of R&D spending. In China's case, this allowed them to catch up to the US in total R&D spending, while South Korea caught up (almost) with Germany.

The general story here is that the *absolute* effort put towards research and development increased by a lot over time. For the US, from the early 1960s to today, total R&D spending went up by a factor of *seven*. The number of R&D workers tripled from the early 1980s to today. We (and most other developed countries) expend much more time and effort on R&D than we did in the past.

But note that this increased absolute effort was *not* associated with a systematic increase in the growth rate of productivity. The following figure plots the 10-year annualized growth rate of productivity ($(\ln A_{t} - \ln A_{t-10})/10$) for all these countries. You can see fluctuations, but in no case is there a sustained increase in the productivity growth rate. Even in China, which saw productivity growth rise to around 8% per year, has seen a steep decline in that rate over the last several years. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/97.embed"></iframe>

We already kind of knew this, because we know from the growth facts that growth rates in most developed countries are stable, and that the Solow model shows that these growth rates are driven by the productivity growth rate. 

But this disconnect between the increased R&D effort and stable productivity growth rate is important enough to warrant a little label, as it is going to inform our work on modeling productivity growth. 

Rising R&D efforts
{: .label .label-green }
**The absolute number of workers and GDP spent on R&D has increased over time, but there is no systematic increase in the growth rate of productivity.**

## Population and productivity in the long run