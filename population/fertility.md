---
title: Modern Demographics
parent: Population and Resources
nav_order: 4
---

# Modern demographic experience
{: .no_toc }

1. TOC 
{:toc}

![Meme](meme_modern.png)

## Population growth
What was clear from the sections on resources and growth was that the rate of population growth, $g_L$, mattered along the BGP. The faster population grew, the slower would be GDP per capita growth, as the resources were split up over more and more people. 

Here we want to see if there are any regularities in the process of population growth that can help us figure out if $g_L$ is likely to be low enough to ensure that growth in GDP per capita can continue. In this section we'll be focusing on the "modern" era in the 20th century and beyond, and then looking more closely at pre-modern population dynamics in a different section, as they tend to be quite different. 

The overwhelming finding here is that population growth tends to fall as countries become richer. You can look over long periods of time, and see that the number of births per 1000 people fell. From about 30 or 40 per 1000 people each year, to around 10 by 2010. 

<iframe src="https://ourworldindata.org/grapher/birth-rate-the-number-of-births-per-1000-people-in-the-population?country=CHN~JPN~USA%20(whites)~USA%20(blacks)~England%20and%20Wales~FRA" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

These long run data are only available for a few countries or subsets of people, but looking at a shorter time frame we can get a similar pattern. This next graph shows the number of children per woman, or the "total fertility rate". This differs from births per person in how it measures fertility, but shows a similar story. The total fertility rate is a measure of how many children a woman born in a given year would have over the course of her life, based on the fertility rates of that birth year. 

<iframe src="https://ourworldindata.org/grapher/children-per-woman-UN?tab=chart&country=USA~GBR~OWID_WRL~BGD~IND~JPN~KOR~CHN~NGA~GHA" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

Around 1950 in Nigeria, for example, a woman born than year might expect to have 6 or more kids in her life. By 2015, that had declined to just under 6. But Nigeria appears to be an outlier compared to many other developed and emerging economies. In Ghana the fertility rate went from over 6 to around 4 kids per woman. In Bangladesh the fertility rate is now closer to 2 kids per woman, close to the low levels seen in most developed countries. 

Beyond that, note that for a number of countries, like the UK, China, Japan, and South Korea the fertility rate is below two children per woman. That cutoff of 2 is critical. If every woman were to have 2 kids, the population would remain at constant size. But when fertility rates fall below 2 kids per woman, this indicates that $g_L$ is in fact *negative*. And we do see that in many developed countries the absolute population size has shrunk in the last few decades.

These time series patterns are useful, but do they really line up with the idea that the richer a country gets the lower the fertility rate? The short answer is yes. The total fertility rate (or children per woman) is negatively related to GDP per capita across countries. It appears that getting rich involves smaller families.

<iframe src="https://ourworldindata.org/grapher/children-per-woman-by-gdp-per-capita" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

However, we have to be a little careful making conclusions that $g_L$ is necessarily negatively related to GDP per capita. The problem is that as GDP per capita gets higher, life expectancy goes up.

<iframe src="https://ourworldindata.org/grapher/life-expectancy-vs-gdp-per-capita" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

Even though people may have fewer kids, if they live longer then the population size may not fall as much as we think. Actually accounting for this gets a little tedious, but overall the drop in fertility is "winning" and it tends to be the case that as GDP per capita gets higher, population growth $g_L$ falls.

## Implications for growth
Let's use the model from the prior section on fixed resources and growth to think about what impact this relationship has on growth over the long-run. Recall from that work that the growth rate of GDP per capita along a BGP was

$$
g_y^{BGP} =  \frac{1-\alpha-\beta}{1-\alpha} g_A - \frac{\beta}{1-\alpha} g_L.
$$

The growth rate involved a race between productivity and population growth. Now we want to think about the situation where population growth may itself respond to the *level* of GDP per capita. In math, let's say that this describes the relationship 

$$
g_L = \theta y_t^{-\mu}
$$

where $\mu$ is some parameter that governs how strongly $g_L$ responds to GDP per capita. But note that this exponent is negative, meaning that as GDP per capita goes up, $g_L$ goes *down*. That captures the negative relationship seen above. It also implies that as GDP per capita gets infinitely big, $g_L$ goes to zero. This doesn't allow for negative population growth (as we see in Japan or Italy).

Along the BGP, we therefore have

$$
g_y^{BGP} =  \frac{1-\alpha-\beta}{1-\alpha} g_A - \frac{\beta}{1-\alpha} \theta y_t^{-\mu}.
$$

This says that the growth rate of GDP per capita depends on the *level* of GDP per capita itself. So the growth rate along the BGP here doesn't have to be constant, as we normally assume. It may in fact *rise* over time as the population growth rate drops towards zero.

This is easiest to see in figure. The GeoGebra figure here plots the two parts of this relationship determining $g_y^{BGP}$. The y-axis measures growth rates, and the x-axis is the level of GDP per capita. The green horizontal line plots the term involving $g_A$ (along with the $\alpha$ and $\beta$ stuff). The red line plots the relationship of the population growth rate and GDP per capita (again including all the $\alpha$ and $\beta$ stuff and setting $\theta=.1$).

<iframe width="900" height="600" frameborder="0" scrolling="no" src="https://www.geogebra.org/m/jwd7njzq"></iframe>

We know that if the red line is above the green then population growth is running so high compared to productivity growth than GDP per capita growth is *negative*, and so the actual GDP per capita would fall, moving to the left, and further exacerbating the gap. If GDP per capita starts low enough here, it eventually goes to *zero*. 

The more relevant section of the figure is where the red line reflecting population growth falls below the green line reflecting productivity growth. Here, growth in GDP per capita is positive, and so the actual GDP per capita keeps moving to the right. That means the green line is still over the red line, and GDP per capita growth continues. Eventually, GDP per capita will get big enough that population growth goes to zero, and the growth rate of GDP per capita is based only on $g_A$.

You can adjust the values of the parameters here to see what happens, and whether changes in parameters make it easier or harder to achieve growth in the long run. A particularly interesting experiment is to adjust $\beta$. Make it go down to zero, meaning resources are no longer important in production, and see how the levels of GDP per capita at which growth will be positive expands. As we make resources unimportant, growth is more likely to be positive. 
