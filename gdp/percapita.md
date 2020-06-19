---
title: GDP per capita
parent: Measuring GDP
nav_order: 4
---

# GDP per capita and distribution
{: .no_toc }

1. TOC 
{:toc}

## Measuring things in per capita terms
We know how to calculate real GDP. But that absolute size of GDP isn't terribly interesting, because we know that some countries have a large GDP (e.g. China, the US) partly because they just have a lot of people. We're going to focus instead on GDP per person, which is also known as GDP *per capita* (because Latin is cool). There isn't anything magic about GDP per capita. If $L$ is the number of people in a country, then GDP per capita ($y$) is just

$$
y(t) = \frac{Y(t)}{L(t)}
$$

or divide real GDP at time $t$ by the number of people at time $t$. It will be common for us to use lower-case letters to signify per-capita numbers, and capital letters to signify aggregate numbers. Hence the $y$ indicates GDP per capita and $Y$ is aggregate GDP.

Because you know how to deal with logs and growth rates (or [should](http://growthecon.com/StudyGuide/preliminaries/preliminaries.html)), then we can make a quick note about how GDP per capita grows. Take logs

$$
\ln y(t) = \ln Y(t) - \ln L(t)
$$

and then the time derivative (or change from $t$ to $t+1$), and we will get

$$
g_y = g_Y - g_L.
$$

The growth rate of GDP per capita is the growth rate of GDP minus the growth rate of the number of people. 

This quick derivaion indicates that the faster population grows, the *slower* is growth in GDP per capita. One of the single most important things about economic growth is that growth in GDP itself ($g_Y$) will depend *positively* on the growth rate of population $g_L$, and so in the end it won't necessarily be true that faster population growth always and everywhere is associated with lower growht in GDP per capita. But we'll need to get into more data and models to see why.

## The distribution of GDP per capita
GDP per capita is a measure of the *average* GDP produced per person. This is not to say that each and every person in the economy has access to exactly that average amount of goods and services. There are clear and obvious inequalities in the real goods and services that people consume in a given year. GDP per capita is a rough summary measure of the average material living standard of people in a country, but do not take that as a statement about the equity of the actual distribution of GDP. GDP per capita gives us a good starting point for explaining economic growth, but a thorough treatment would include a discussion of the distribution of economic growth across the population.