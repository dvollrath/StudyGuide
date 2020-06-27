---
title: Level differences
parent: Solow and Balanced Growth
nav_order: 5
---

# Level differences in GDP per capita
{: .no_toc }

1. TOC 
{:toc}

## Countries with different BGP's
In the fake economies A and B, they shared a common BGP. Not only their growth rate converged to $g_A = 0.02$, but given the same parameters ($s_I$, $g_A$, $g_L$, and $\delta$) they had identical steady state values of the capital labor ratio and the same value for $A_0$, the *level* of their GDP per capita converged over time. They shared the *same* BGP. 

The Solow model tells us that countries have a tendency to converge to *some* BGP, but not that all countries necessarily converge to the *same* BGP. And the Solow model also tells us what would create differences in the BGP between countries, the parameters and initial value of $A_0$. 

Revisit the figure showing the time path of GDP per capita across several countries.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/5.embed"></iframe>

These all appear to be on a BGP for a long stretch of time, as evidenced by the constant slopes. But the slopes are very similar, indicating, as we know, that the value of $g_A$ was very similar. At the same time, the *level* of GDP per capita at any given point is very different. We saw that GDP per capita in the US was about 2.7 times higher than in Mexico in any given year. So how do we use the Solow model to explain this ratio of 2.7?

Go back to the section on [simulating growth](simulation.html) and recall that we could write the level of GDP per capita as

$$
\ln y_t = \frac{\alpha}{1-\alpha} (\ln K_t/Y_t) + \ln A_0 + g_A t.
$$

This holds at any given point in time, regardless of the actual value of capital/output. But we're interested in the level fo GDP per capita on a given BGP. We want to replace that $K_t/Y_t$ with the steady-state value $(K/Y)^{ss} = s_I/(\delta + g_A + g_L)$. This gives us

$$
\ln y_t^{BGP} = \frac{\alpha}{1-\alpha} \left(\ln s_I - \ln(\delta + g_A + g_L) \right) + \ln A_0 + g_A t.
$$

I've denoted GDP per capita as $\ln y_t^{BGP}$ because this is the path of real GDP per capita *on* the BGP, and a country need not be exactly on the BGP. But this equation tells us why the BGP for some countries would be "higher" than others. And by "higher", we mean that GDP per capita is higher at any given point in time - like the US versus Mexico.

Everything in that equation *except* the $g_A t$ part tells us about the level of the BGP. A higher share of GDP allocated to capital, $s_I$, will result in a higher GDP per capita along the BGP. In that sense capital accumulation matters for how rich a country is, even though as we saw it doesn't impact the growth rate of GDP per capita on a BGP. You can tell a similar story for population growth, $g_L$, or for the initial level of productivity, $A_0$. 

The value of $g_A$ has an interesting two-part effect. Higher productivity growth *lowers* the *level* of GDP per capita, oddly enough, because it lowers the steady-state level of capital/output. But it also *raises* the growth rate of GDP per capita, so ultimately a country with a higher $g_A$ will end up richer than one with lower productivity growth. But remember, it appears that most developed countries share a similar $g_A$.

The best way to see the impact of all these parameters on the level of the BGP is to play with this, either in the following GeoGebra figure, or in the same [spreadsheet](https://docs.google.com/spreadsheets/d/e/2PACX-1vRrEsKNR3Aco157HVGA_iDE8uTE4HbFFuV5K9_0aVbrEFCQWSxqk76BExHSstBE3lO6xiNKbMIf_AZf/pubhtml) from a few sections ago.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="https://www.geogebra.org/m/eascufmv"></iframe>

## Evidence across countries
At a primitive level, we now know *why* some countries are richer than others. Two of the most tangible reasons are that some may allocate a greater fraction of GDP to capital ($s_I$), or have lower population growth ($g_L$). We can look at some evidence of this to see if it makes sense. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/57.embed"></iframe>