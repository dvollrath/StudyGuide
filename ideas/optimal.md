---
title: Optimal allocations
parent: Incentives to innovate
grand_parent: Ideas and Productivity
nav_order: 5
---

# Optimal allocations of $s_R$ and $s_{\pi}$
{: .no_toc }

1. TOC 
{:toc}

We can establish in more detail what the implied "right" levels of $s_R$ and $s_{\pi}$ should be to maximize GDP per capita and/or the wage. 

## The wage share and $s_R$
To start, let's work out the value of $s_L$. We know that $s_{\pi}$ is the portion of GDP that are the profits earned by firms brining new ideas in. That means $1-s_{\pi}$ is the share of GDP they use to pay the factors of production they use, like labor and capital. Assuming they have the same Cobb-Douglas form as in the Solow, that means they spend $1-\alpha$ of the $1-s_{\pi}$ of GDP on wages. That $1-\alpha$ is from [the cost share section](costshares.html). 

But these are wages just paid to the production workers, even though that determines the overall wage rate. 

$$
w = (1-\alpha)(1-s_{\pi})\frac{Y}{L_Y} = \frac{(1-\alpha)(1-s_{\pi})}{1-s_R}\frac{Y}{L},
$$

This means that

$$
s_L = \frac{wL}{Y} = \frac{(1-\alpha)(1-s_{\pi})}{1-s_R},
$$

or that the wage share of GDP per capita is determined not just by how important it is in production, $1-\alpha$, but scaled by how much of GDP, $1-s_{\pi}$, gets distributed to factors relative to how many workers are in production, $1-s_R$. 

Using that in the entry condition for $s_R$ we have

$$
s_R = \frac{s_{\pi}}{s_L} g_A
$$

so that means

$$
s_R = s_{\pi}g_A \frac{1-s_R}{(1-\alpha)(1-s_{\pi})}
$$

which solves to

$$
\frac{s_R}{1-s_R} = \frac{s_{\pi}}{1-s_{\pi}}\frac{g_A}{1-\alpha}
$$

or the relative allocation of labor to production and entry depends on the relative share of profits and factor costs (not profits) in the economy. As usual, the higher $g_A$, the more it pays to allocate labor to entry. That holds no matter what. It's just cleaning up some math to make sense of things later.

## Optimizing GDP per capita
Start with the level of $s_R$ that maximizes $\ln y_t^{BGP}$. Put what we know together into

$$
\ln y_t^{BGP} = \ln (1-s_R) + \frac{\lambda}{1-\phi}\ln s_R + X + g_A t
$$

where $X$ collects all the additional stuff about capital/output ratios, $L_0$, and so forth. What value of $s_R$ maximizes GDP per capita? Take derivatives and we get

$$
\frac{-1}{1-s_R} + \frac{\lambda}{1-\phi}\frac{1}{s_R} = 0
$$

which solves to

$$
\frac{s_R^{\ast}}{1-s_R^{\ast}} = \frac{\lambda}{1-\phi}.
$$

We know a little something about that ratio of parameters, because we know $g_A = g_L \lambda/(1-\phi)$ along a BGP. So what we've got is that 

$$
\frac{s_R^{\ast}}{1-s_R^{\ast}} = \frac{g_A}{g_L}
$$

or the ratio of workers doing work on new ideas, $s_R^{\ast}$, relative to the workers on goods and services, $1-s_R^{\ast}$, should be similar to the ratio of the growth rate of ideas to the growth rate of labor, to maximize the level of GDP per capita. If ideas grow fast, then it pays for the economy to focus labor on adding more. If the scale of the economy grows fast relative to ideas, then it pays to have more people focusing on goods and services. A different way to see this is that if $\lambda$ is big, that means there is not a lot of crowding or duplication in doing development of new ideas, so it pays to have more people do that. If $1-\phi$ is big, this indicates that new ideas tend to drag down the growth rate of new ideas, so it pays to just have people work on existing things. 

Regardless, if $s_R^{\ast}$ is the best answer for GDP per capita, how do you achieve that? Use the condition from above on how profits and $s_R$ are related, an you can achieve this level of $s_R/1-s_R$ that maximizes GDP per capita if

$$
\frac{g_A}{g_L} = \frac{s_{\pi}}{1-s_{\pi}}\frac{g_A}{1-\alpha}
$$

or if

$$
\frac{s_{\pi}}{1-s_{\pi}} = \frac{1-\alpha}{g_A}.
$$

Taking this seriously, if you think $1-\alpha \approx 2/3$ and you think $g_A \approx 0.02$, then this says that 

$$
\frac{s_{\pi}}{1-s_{\pi}} \approx .67/.02 \approx 33.5
$$

is the right ratio of profits to factor costs(!?). Why does the optimal number look so high? Because of non-rivalry. Every product or firm that enters is making the entire economy more productive. That expands the economy as a whole, which makes it more lucrative for *others* to enter, and so on. Because of these feedback effects there is implied to be a huge payoff to having more work done on entry than on production. And the only way to get that kind of entry is to pay a lot in profits. 

A big implication here is that most economies are probably *below* the level of $s_R$ that would maximize GDP per capita, and plausibly below the level of $s_{\pi}$. But let's see about wages first, and then come back to this.

## Wages
What is the wage along a BGP? We know $s_L$ is the share of wages out of GDP, so we'd get that

$$
\ln w_t^{BGP} = \ln (1-\alpha) + \ln (1-s_{\pi}) - \ln (1-s_R) + \ln y_t^{BGP}
$$

and applying what we know about GDP per capita we have

$$
\ln w_t^{BGP} = \ln (1-\alpha) + \ln (1-s_{\pi}) - \ln (1-s_R) + \ln (1-s_R) + \frac{\lambda}{1-\phi}\ln s_R + X + g_A t
$$

which we can reduce to

$$
\ln w_t^{BGP} = \ln (1-s_{\pi}) + + \frac{\lambda}{1-\phi}\ln s_R + X + g_At
$$

after we move some things into the X term and cancel others. Notice how this compares to the expression just for GDP per capita, which had a tradeoff of $1-s_R$ and $s_R$. Here the trade off is between $1-s_{\pi}$ and $s_R$. The wage depends on the fraction of output they earn as well as the share $1-s_R$, so the tradeoff is a little different here. 

At the same time, we have the relationship for entry which says

$$
\frac{s_R}{1-s_R} = \frac{s_{\pi}}{1-s_{\pi}}\frac{g_A}{1-\alpha}.
$$

Maximizing *wages* along the BGP has a more complex trade-off. If you want to lower $s_{\pi}$ to raise the wage, this will lower $s_R$ because of the entry condition, which lowers the wage. 




## What counts as wages?
A lot of the $s_{\pi}$ share, though, might end up accruing to people in the form of wages, though. So it depends on how we measure things. 




