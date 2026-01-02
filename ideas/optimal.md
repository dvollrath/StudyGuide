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

## GDP and $s_R$
If we want to evaluate the "right" level of $s_R$, we want to think about the flow of goods and services that we care about. The problem is that to a large extent a lot of the activities we think about included in $s_R$ are also included in GDP. That is, the payments firms make to researchers or designers or whomever to come up with new products are themselves goods and services, so they add into total GDP. In that sense maximizing GDP would involve setting $s_R = 1$, and we should spend all of our time just coming up with new products. But then GDP would consist only of people designing things for tommorrow, and no one would ever, like, eat. 

What we're interested in is maximizing the flow of consumption or current goods and services. If $s_R$ share of people are doing start-up or entry work, then $1-s_R$ of workers are making those current goods and services. So $(1-s_R)y_t$ is roughly the amount of current goods and services. We could adjust that a little because of how capital is used, but this is going to be the right approach. 

Let's call that consumption, and then 

$$
\ln c_t^{BGP} = \ln (1-s_R) + \ln y_t^{BGP}
$$

is the path of consumption along the BGP. We know about GDP per capita along a BGP, and so we get

$$
\ln c_t^{BGP} = \ln (1-s_R) + \frac{\lambda}{1-\phi}\ln s_R + X + g_A t
$$

where $X$ collects all the additional stuff about capital/output ratios, $L_0$, and so forth. What value of $s_R$ maximizes consumption per capita? Take derivatives and we get

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

or

$$
s_R^{\ast} = \frac{g_A}{g_A + g_L}.
$$

This says that we should allocate more workers to entry tasks if $g_A$ is high, or if it is relatively easy for entry work to generate new ideas. If the economy grows fast anyway because of scale, $g_L$, then we want fewer people doing entry things because the growth in scale will generate enough incentives for entrants anyway.

Let's put some rough numbers on this. If $g_A \approx .02$ and $g_L \approx .01$, then $s_R^{\ast} \approx .67$. That seems like a *lot*. Does it make sense to have 2/3 of people working on *new* things? But it might be a reasonable number. Think of all the jobs, though, that are based on working on next years sales or products. Sales, marketing, advertising, branding, research, development, design, and all sorts of engineering work. We might not be at 2/3rds, but a lot of what labor gets done is not about current goods and services.

How do we achieve this? We have that the choice of $s_R$ by *firms* is

$$
s_R = \frac{s_{\pi}}{s_L} \frac{g_A}{r-g_L}.
$$

If we pick the right value of $s_{\pi}$ we can get the optimal level of $s_R$. But to do this we have to be a little careful about things. From the firms perspective $s_L$ is given, but it has to be the case that $s_L$ and $s_{\pi}$ involve a tradeoff. But we have to be careful about these shares. $s_L$ is the share of GDP paid to labor producing current goods and services. We're approximating here, but $1-s_{\pi}$ is the share of GDP paid for current goods and services, and $1-\alpha$ might be the share of that paid for labor services, so 

$$
s_R = \frac{s_{\pi}}{(1-\alpha)(1-s_{\pi})} \frac{g_A}{r-g_L}.
$$

What's the right value of profit share to set to get to the "right" level of $s_R$?

$$
\frac{s_{\pi}}{(1-s_{\pi})} = \frac{(1-\alpha)(r-g_L)}{g_A + g_L}.
$$

Let's put some numbers on this again. If $1-\alpha \approx 0.7$ and $r \approx .05$, then we'd have

$$
\frac{s_{\pi}}{(1-s_{\pi})} \approx 0.93
$$

which implies that $s_{\pi}^{\ast} \approx 0.48$. That seems like a *lot*. But remember, much of that is going to be paid out to workers doing the design work. But it does imply that a lot of the price of products would get marked up a bunch in order to cover that future entry work. It isn't best to think about this as pure profits in the sense we usually think. This is money over and above the cost of current goods and services that firms would use to pay for future product development. *Some* profits are definitely above that, and represent pure rents. 