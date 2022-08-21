---
title: Productivity and population
parent: Ideas and Productivity
nav_order: 4
---

# Productivity and population
{: .no_toc }

1. TOC 
{:toc}

![meme](meme_popgrowth.pdf)

## Whose researchers?
The prior section had some strong predictions about the relationship of productivity growth to the growth rate of researchers, $g_R$. But this raises some interesting questions about exactly who those researchers are. 

Remember that the ideas we're talking about here are [non-rival](rivalry.html). Which means that no matter where they were originally dreamt up, other countries could use them without diminishing the ability of any other country to use them. We'll get to issues of intellectual property in the next section, but for consider that it is always *possible* for ideas to be used around the world once they've been invented. Unlike capital or labor, which have to be used in one location at one time, an idea - like the just-in-time inventory system from Toyota - can and have spread everywhere. 

Given that ideas are non-rival, the stock of ideas that a given country has access to is not necessarily linked to just that country's researchers. The "right" value of $g_R$ to use in thinking about the BGP may not be the country-specific $g_R$ shown in prior figures. It might be more accurate to use the $g_R$ of all the major innovating countries combined as the right number to determine the productivity growth rate of all those innovating countries. Remember, the BGP growth rate of GDP per capita is pretty similar across all developed countries, but they have different values of $g_R$. Perhaps the consistency of the BGP growth rate of GDP per capita is because the non-rival nature of ideas means that their growth rate of productivity depends on the growth rate of *all* of their efforts to invent new ideas.

## Scale and productivity
We're going to have to think about a similar issue regarding the absolute number of researchers if we take our dynamic model seriously. We have that

$$
g_{A} = \theta \frac{R_{t}^{\lambda}}{A_t^{1-\phi}},
$$

and we have that 

$$
g_A^{BGP} = \frac{\lambda}{1-\phi} g_R.
$$

This means that along a BGP, it must be that

$$
\frac{R_{t}^{\lambda}}{A_t^{1-\phi}} = \frac{1}{\theta}\frac{\lambda}{1-\phi} g_R
$$

in each country. Re-arrange this and you get

$$
A_t^{1-\phi} = \frac{\theta}{g_R} \frac{1-\phi}{\lambda} R_{t}^{\lambda}
$$

along a balanced growth path. There are a lot of parameters, yes, but focus on the fact that the *level* of productivity is positively related to the *level* of researchers, $R_t$. What this expression says is that on a BGP, it should be that countries with more researchers have higher productivity. The growth rate of that productivity will still depend only on $g_R$, but the absolute *level* of productivity should be higher in countries with more researchers.

And which countries have more researchers? Some of it depends on policy choices, education systems, and the like. But a lot of it depends on the total population available. China would have a lot more researchers than Belgium even if Belgium had the world's most perfect environment for R&D. 

This is an odd prediction. And one that doesn't quite fit with the cross-country evidence we have.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/109.embed"></iframe>

This figure shows the log level of productivity against the log level of R&D workers for our same set of countries. Within each country you can see a positive relationship, as both productivity and the number of researchers are growing over time. But *across* countries it is not true that countries with more researchers have a higher productivity level. Germany, Great Britain, and Korea have a productivity level just as high as Japan or the US, but with many fewer R&D workers. China has just as many R&D workers as Japan or the US, but much lower productivity.

Which brings us back to the question of what population matters for the analysis here. It may be true that the total number of researchers *across all countries* matters for the overall level of productivity of most countries, or at least the average level of productivity across countries. Again, because of non-rivalry, ideas invented elsewhere can be used anywhere without diminishing the stock of ideas. So to the extent that we can share ideas across countries, the *total* number of researchers may be relevant, even if at a country level there is no clear relationship between researchers and the level of productivity. 

## Global population and living standards
It is possible to see something of the connection between the scale of researchers and the size of productivity by looking at global data over a very long time. This is going to be a rough test of the idea, because we need to make two different substitutions. First, we can't measure productivity exactly over a long period of time for the whole world. But we can look at GDP per capita, which depends a lot of the level of productivity. Second, we can't measure the number of "researchers" at the global level over a long period of time. So we'll look instead at the raw population size, which is the pool of eligible researchers.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/111.embed"></iframe>

The numbers here are necessarily estimates, as they go back to the year 0. But the rough idea is clear. As the population grew, so did the level of GDP per capita. And if you hover over the dots, you'll see that this figure is basically a time series plot, with the smallest population and GDP per capita at the left-hand corner, and then over time both values increased. 

You can also see that over time this relationship became *stronger*. After 1820, when the population of the world was about one billion, the link between the two became such that each time the population doubled, GDP per capita went up by a factor of almost 2.5.

As I said, this is crude, but it is some evidence that at a very broad level the connection of the level of researchers available and the level of productivity are related. It will also serve as some motivating evidence for how population and natural resources might be related (or not related) over time, as the evidence does not fit with a simple notion that increased population necessarily lowered living standards.
