---
title: Research effort
parent: Ideas and Productivity
nav_order: 2
---

# Research effort and productivity growth
{: .no_toc }

1. TOC 
{:toc}

![Meme](meme_effort.png)

## Increasing absolute research effort
Productivity is the application of non-rival ideas to using rival inputs. And while the non-rival nature of those ideas mean they can be applied in many places at once, that doesn't mean non-rival ideas were easy to obtain. In fact, a tremendous amount of time and spending every year goes to finding *new* non-rival ideas to raise productivity. Non-rival ideas may not have an opportunity cost when they are used, but they do have a cost to develop in the first place.

We can look at some data that gives us an idea of the amount of time and resources spent to find these ideas. The following figure shows the number of workers (or full-time equivalents) engaged in "research and development" activity. That could run anywhere from lab science for Chevorn to market research for Nike. It also includes the activities of a lot of academics who work at universities. 

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

## R&D effort and productivity growth
But note that this increased absolute effort was *not* associated with a systematic increase in the growth rate of productivity. The following figure plots the 10-year annualized growth rate of productivity ($(\ln A_{t} - \ln A_{t-10})/10$) for all these countries. You can see fluctuations, but in no case is there a sustained increase in the productivity growth rate. Even in China, which saw productivity growth rise to around 8% per year, has seen a steep decline in that rate over the last several years. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/97.embed"></iframe>

We already kind of knew this, because we know from the growth facts that growth rates in most developed countries are stable, and that the Solow model shows that these growth rates are driven by the productivity growth rate. 

But this disconnect between the increased R&D effort and stable productivity growth rate is important enough to warrant a little label, as it is going to inform our work on modeling productivity growth. 

{: .fact }
The absolute number of workers and GDP spent on R&D has increased over time, but there is no systematic increase in the growth rate of productivity.

Here it is important to remember that while productivity is a measure of how efficiently we use inputs, it is *not* a measure of the number of innovations that take place. For example, here is a plot showing the number of patents granted by the US Patent Office to applicants from different countries over time. This isn't a perfect measure of the total number of innovations being found around the world. First, not all innovations get patented. Second, not all innovators get a patent in the US. But given the size of the US many innovators choose to patent here, even if they are from another country. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/99.embed"></iframe>

The absolute number of patents rose in line with the amount of R&D workers and R&D spending in these countries. The increased effort towards innovation does appear to be related to the number of innovations (to the extent that can be captured by patents). 

But productivity, $A_t$, is not a count of the number of innovations. It is more accurately a measure of how efficient we are at producing GDP given the rival inputs we use. And it is quite possible that an innovation could be produced that has very little impact on that efficiency. There are a lot of things that are innovative but have little economic impact. 

If you'd like to amuse yourself, you can check out the examples in the video. You don't have to get much past "toilet snorkel" to conclude that not *every* innovation necessarily improves productivity.

<iframe width="560" height="315" src="https://www.youtube.com/embed/GYfPx0eeGeA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

So it is quite plausible that the pace of *productivity* growth may not be increasing even though R&D efforts and patenting have increased in absolute terms. At the same time, it is hard to believe that *all* of the increase in R&D spending and time was a complete waste. Those companies who engaged in it clearly thought it had some value. 