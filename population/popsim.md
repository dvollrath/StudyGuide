---
title: Resource simulation
parent: Population and Resources
nav_order: 6
---

# Simulating resources and population
{: .no_toc }

1. TOC 
{:toc}

![Meme](meme_simulate.png)

## Combination model
For working with the model in a spreadsheet or app, it helps to slim things down and focus on just the resource dynamics and population dynamics. This is slightly less realistic, of course, but if we don't do this the intuition can get lost in trying to keep up with endogenous productivity growth or capital accumulation.

First, let production be

$$
Y_t = E_t^{\beta}(A_t L_t)^{1-\beta}
$$

and we've gotten rid of capital completely. This means that log GDP per capita is 

$$
\ln y_t = \beta \ln E_t - \beta \ln L_t + (1-\beta)\ln A_t.
$$

The growth rate of GDP per capita is then

$$
g_y = \beta g_E - \beta g_L + (1-\beta) g_A.
$$

From this we can still see that growth in GDP per capita is going to be a race between $g_A$ and the drag on growth from population, $g_L$, and possibly the decline in resources if $g_X<0$. 

Second, about those resources. To accommodate both kinds (renewable and non-renewable) expand the dynamics to work this way:

$$
X_{t+1} = X_t + s_R X_t - s_X X_t
$$

where $s_R$ is a *replenishment rate* that *adds* to the resource stock, and you can think of this in part as the rate at which we abstain from using resources or actively improve them. Think of letting soil lay fallow, planting trees, stocking ponds with fish, and things of that nature. The rate $s_X$ is still the *extraction rate* of resources that we use for production. 

The growth rate of the resource base is 

$$
g_X = s_R - s_X
$$

and now this could be either sign. If $s_R = 0$ and $s_X>0$, we've got something like oil, a nonrenewable resource. If we set $s_R = s_X$, then we've got the idea of a fixed resource, in the way we thought about land in the Malthusian setting. If you had $s_R>s_X$ then this would be a world in which you were actively investing in increasing the stock of available resources.

As before, only the extraction rate matters for production,

$$
E_t = s_X X_t
$$

and 

$$
g_E = g_X = s_R - s_X.
$$

Ultimately the growth rate of GDP per capita is then 

$$
g_y = \beta (s_R - s_X) - \beta g_L + (1-\beta) g_A.
$$

Finally, let's allow for some kind of population response to GDP per capita. Let the equation be

$$
g_L = \theta y_t^{\gamma}.
$$

If $\gamma>0$, then this is a Malthusian setting where higher living standards allow for higher population growth. If $\gamma<0$, we have modern demographics and population growth falls with GDP per capita. And if $\gamma=0$, we have the standard case where population growth is fixed at $\theta$.

## Visualizing
To see how all these pieces interact to shape the path of GDP per capita, resources per capita, and population growth over time, consider another app. <a href="https://dietzvollrath.shinyapps.io/PopBasic/" target="_blank">This link</a> will take you directly to the app on its own page, or the app is embedded here to play with.

<iframe height="800" width="100%" frameborder="no" src="https://dietzvollrath.shinyapps.io/PopBasic/"> </iframe>