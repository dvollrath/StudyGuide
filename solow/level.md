---
title: The level of the BGP
parent: Solow and Balanced Growth
nav_order: 5
---

# The level of the BGP
{: .no_toc }

1. TOC 
{:toc}

## Graphing the BGP line
You might have guessed (or desparately hoped) that we were done talking about the Solow model, BGP's, and transitional growth. However, we want to complete this model by using it to map out theoretically how log GDP per capita moves over time. We want to see if we can replicate the figures shown [here](http://growthecon.com/StudyGuide/facts/stable.html), at least roughly.

To do this, we need to reach all the way back to the [production function](http://growthecon.com/StudyGuide/solow/production.html) and recall that we could write the level of GDP, in logs, as 

$$
\ln Y_t = \alpha \ln K_t + (1-\alpha) \ln A_t + (1-\alpha) \ln L_t.
$$

Just like we did with the growth rates, we're going to do a little manipulation of this. First, subtract $\alpha \ln Y_t$ from both sides.

$$
(1-\alpha)\ln Y_t = \alpha (\ln K_t - \ln Y_t) + (1-\alpha) \ln A_t + (1-\alpha) \ln L_t
$$

and then divide both sides by $(1-\alpha)$,

$$
\ln Y_t = \frac{\alpha}{1-\alpha} (\ln K_t - \ln Y_t) + \ln A_t + \ln L_t.
$$

We care about per-capita outcomes, and recall that since GDP per capita is $y_t = Y_t/L_t$, it must be that $\ln y_t = \ln Y_t - \ln L_t$. So we can write the log of GDP per capita as

$$
\ln y_t = \frac{\alpha}{1-\alpha} (\ln K_t - \ln Y_t) + \ln A_t.
$$

This says that the *level* of log GDP per capita at time $t$ depends on $\ln K_t - \ln Y_t$, which is just the log of the capital/output ratio, and we know how to describe what happens to that. It also depends on the level of productivity at time $t$, $\ln A_t$. 

We don't know how to describe the level of productivity in any detail at this point. But we have assumed that productivity grows at the rate $g_A$. So in simple terms, we could assume that

$$
A_t = (1+g_A)^t A_0
$$

and if you refer back to the [math preview](http://growthecon.com/StudyGuide/preliminaries/lines.html#theoretical-lines-and-slopes) we know we can take logs of this and get to

$$
\ln A_t = \ln A_0 + g_A t.
$$

The log of productivity at time $t$ depends on initial productivity, $A_0$, and on the growth rate of productivity, $g_A$. Put this together with the expression for log GDP per capita and we have

$$
\ln y_t = \frac{\alpha}{1-\alpha} (\ln K_t - \ln Y_t) + \ln A_0 + g_A t.
$$

This tells us what actual GDP per capita is at time $t$. What would be great is if we could come up with a really simple way of expression what the log of the capital/output ratio was at any given point in time. But that turns out to be harder than it looks. We do know from the last section how the capital/output ratio evolves over time, yes. But there isn't a simple algebraic way to solve for that. We have to ask a spreadsheet or computer to figure it out. And we will in just a bit.

But first, we *can* use this expression to think about what the hypothetical BGP must look like. A BGP is the case where $g_{K/Y} = 0$, we know that. And from the last section we also know that *on* a BGP the capital/output ratio is

$$
\left(\frac{K}{Y}\right)^{BGP} = \frac{s_I}{\delta + g_A + g_L}.
$$

If we take logs of this, we get

$$
(\ln K - \ln Y)^{BGP} = \ln s_I - \ln (\delta + g_A + g_L).
$$

We can thus figure out what GDP per capita is *on* a BGP for a country with the parameters $s_I$, $\delta$, $g_A$, and $g_L$. Plug that into the expression for $\ln y_t$ above, and you get

$$
\ln y_t^{BGP} = \frac{\alpha}{1-\alpha} (\ln s_I - \ln (\delta + g_A + g_L)) + \ln A_0 + g_A t.
$$

This is a *hypothetical* line describing what real GDP per capita would be at each time period $t$ *if* a country were on a BGP. Countries may not be *on* a BGP for some reason (see South Korea or Germany) but this line describes where they are headed. 

While there are a lot of terms here, notice that it is really just the equation for a line where the y-variable is $\ln y_t^{BGP}$, and the x-variable is $t$. The slope of this line is $g_A$, the growth rate. The intercept of this line is often called the *level* of the BGP. The intercept is the

$$
\frac{\alpha}{1-\alpha} (\ln s_I - \ln (\delta + g_A + g_L)) + \ln A_0
$$

part of the equation. All these parameters govern how big GDP per capita. So if $s_I$ is higher because a nation puts more of GDP towards accumulating capital, then the whole line shifts up. 

This is all easier to see when plotted out. The following GeoGebra figure shows you the line for $\ln y_t^{BGP}$, and allows you to adjust all of the parameters involved. There isn't anything very existing about it. $g_A$ makes the slope change, and the rest of the parameters shift the BGP line up and down.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="https://www.geogebra.org/m/eascufmv"></iframe>

Despite the relatively boring nature of this, it is very useful to us. It describes the hypothetical path of GDP per capita. It is the "target" that actual economies are shooting for, given their parameters.

## Plotting GDP per capita over time



## Differences in levels