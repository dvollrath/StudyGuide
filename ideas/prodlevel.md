---
title: Productivity and population
parent: Ideas and Productivity
nav_order: 6
---

# Productivity and population
{: .no_toc }

1. TOC 
{:toc}

![meme](meme_popgrowth.png)

## Whose researchers?
The prior section had some strong predictions about the relationship of productivity growth to the growth rate of population, $g_L$. But this raises some interesting questions about exactly who those people are. 

Remember that the ideas we're talking about here are [non-rival](rivalry.html). Which means that no matter where they were originally dreamt up, other countries could use them without diminishing the ability of any other country to use them. We'll get to issues of intellectual property in the next section, but for consider that it is always *possible* for ideas to be used around the world once they've been invented. Unlike capital or labor, which have to be used in one location at one time, an idea - like the just-in-time inventory system from Toyota - can and have spread everywhere. 

Given that ideas are non-rival, the stock of ideas that a given country has access to is not necessarily linked to just that country's own ideas. Because of international trade, the potential scale of the economy that firms can sell too isn't limited to their own population. And foreign firms can invent things that we can buy here. At the same time, because of frictions within countries (think transportation time, etc.) it isn't true that all people in a single country are the right measure of $L$, or $g_L$. It might be better to think of the scale of the economy as being associated with the number of "markets", maybe consistent with the number of large towns and cities? 

## Scale and productivity
Go back to the prior section on [dynamics](prodstable.html) and we derived that

$$
\ln A_t^{BGP} = \ln A_0 + \frac{\lambda}{1-\phi} g_L t,
$$

where

$$
\ln A_0 = \frac{1}{1-\phi}\ln \theta - \frac{1}{1-\phi} \ln \frac{\lambda}{1-\phi} - \frac{1}{1-\phi}\ln g_L + \frac{\lambda}{1-\phi}\ln s_R + \frac{\lambda}{1-\phi} \ln L_0.
$$

This was the level of productivity along a balanced growth path. There are a lot of parameters, yes, but focus on the fact that the *level* of productivity is positively related to the *level* of population, $L_0$. And really, given $s_R$, this says the level of productivity is related to the *level* of workers doing fixed cost work $s_R L_0$. What this expression says is that on a BGP, it should be that countries with more of those workers doing fixed things to introduce ideas that have higher productivity. The growth rate of that productivity will still depend only on $g_L$, but the absolute *level* of productivity should be higher in countries with more of those kinds of workers - R&D, entrpreneurs, building out new locations, etc.

And which countries have more of these people? Some of it depends on policy choices, education systems, and the like. But a lot of it depends on the total population available. We can't get a good handle on exactly how many of those kinds of people there are. But we could focus in on a subset, like R&D workers, which we are pretty sure are there specifically to come up with new ideas and products. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="../plotly/pwt-oecd-level-rd.html"></iframe>

This figure shows the log level of productivity against the log level of R&D workers for our set of countries. Within each country you can see a positive relationship, as both productivity and the number of researchers are growing over time. But *across* countries it is not true that countries with more researchers have a higher productivity level. Germany, Great Britain, and Korea have a productivity level just as high as Japan or the US, but with many fewer R&D workers. China has just as many R&D workers as Japan or the US, but much lower productivity.

Which brings us back to the question of what population matters for the analysis here. It may be true that the total number of researchers *across all countries* matters for the overall level of productivity of most countries, or at least the average level of productivity across countries. Again, because of non-rivalry, ideas invented elsewhere can be used anywhere without diminishing the stock of ideas. So to the extent that we can share ideas across countries, the *total* number of researchers may be relevant, even if at a country level there is no clear relationship between researchers and the level of productivity. 

## Global population and living standards
It is possible to see something of the connection between the scale of researchers and the size of productivity by looking at global data over a very long time. This is going to be a rough test of the idea, because we need to make two different substitutions. First, we can't measure productivity exactly over a long period of time for the whole world. But we can look at GDP per capita, which depends a lot of the level of productivity. Second, we can't measure the number of "researchers" at the global level over a long period of time, but that's okay. We'll just look instead at the raw population size, which is the pool of potential people who could do the fixed work of introducing ideas.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="../plotly/mad-global-lngdppc-pop.html"></iframe>

The numbers here are necessarily estimates, as they go back to the year 0. But the rough idea is clear. As the population grew, so did the level of GDP per capita. And if you hover over the dots, you'll see that this figure is basically a time series plot, with the smallest population and GDP per capita at the left-hand corner, and then over time both values increased. 

You can also see that over time this relationship became *stronger*. After 1820, when the population of the world was about one billion, the link between the two became such that each time the population doubled, GDP per capita went up by a factor of almost 2.5.

As I said, this is crude, but it is some evidence that at a very broad level the connection of the level of workers available and the level of productivity are related. It will also serve as some motivating evidence for how population and natural resources might be related (or not related) over time, as the evidence does not fit with a simple notion that increased population necessarily lowered living standards.
