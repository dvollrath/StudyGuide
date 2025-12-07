---
title: Cost shares and elasticities
parent: Production
grand_parent: Solow and Balanced Growth
nav_order: 1
---

# Cost shares and elasticities
{: .no_toc }

1. TOC 
{:toc}

I said in the production section that the elasticities on the Cobb-Douglas production function, $\alpha$ and $1-\alpha$, should be equal to the cost share of capital and labor, respectively. Let's see why that is.

## The economy as a single firm
The economy has a production function of $Y = K^{\alpha}(AL)^{1-\alpha}$, where I dropped the time subscripts because we aren't going to do anything related to time here. Let's imagine that "the economy" acts like one big firm, and furthermore that this one big firm for some inexplicable reason doesn't realize it is the sole employer of capital and labor, and instead acts as if it has to compete for those inputs. In other words, this economy-sized firm takes the rental rate of capital, $R$, and the wage rate, $w$, as given. 

Let's assume that our economy-sized firm is trying to minimize the costs from hiring capital and labor while producing GDP. The standard firm problem involves the firm setting the marginal product of an input equal to its marginal cost. For capital, this means

$$
R = \frac{\alpha Y}{K}
$$

and for labor this means

$$
w = \frac{(1-\alpha)Y}{L}.
$$

Using these two conditions, we can write $RK = \alpha Y$ and $wL = (1-\alpha)Y$. 

Now let's think about the cost share of capital, which we called $\phi_K$ when talking about the data. 

$$
\phi_K = \frac{RK}{RK+wL} = \frac{\alpha Y}{\alpha Y+(1-\alpha)Y} = \alpha.
$$

The first equality holds just by the definition of $\phi_K$. The last equality holds once you realize that the denominator just sums up to $Y$.

We can do the same thing with labor.

$$
\phi_L = \frac{wL}{RK+wL} = \frac{(1-\alpha) Y}{\alpha Y+(1-\alpha)Y} = (1-\alpha).
$$

So for a cost-minimizing economy-wide firm with a Cobb-Douglas production function, it is the case that the cost share of any particular input is equal to the elasticity of GDP with respect to that input. 

## Lots of firms, input-output relationships, and market power
The prior section made a very particular case, in a very limited setting. Does this equality of cost shares and elasticities hold in a more realistic setting? Yes, we can get a measure of the elasticity of GDP with respect to capital and labor using information about costs. No, it isn't as simple as just measuring the total payments to labor (wL) and the total payments to capital (RK). 

Theoretically, this gets *way* into the mathematical weeds. If you wanted to hunt down how to do this, I'd start with [this paper](https://ideas.repec.org/p/nbr/nberwo/25688.html) by David Baqaee and Emmanuel Farhi and go from there. Have a lot of paper and erasers handy.

What those two authors do is show how to find an aggregate elasticity of GDP with respect to capital or labor using micro-level information on firm or establishment level costs. Their framework can handle a very general setting.

1. Each individual establishment can have its own unique production elasticities (i.e. they could have different $\alpha$ values).
2. The production elasticities of establishments could be different in each period of time. 
3. The individual establishments may act as suppliers to one another (i.e. they may not just use capital and labor, but also inputs purchased from other establishments).
4. The establishments could have any arbitrary amount of market power (i.e. some places could be monopolists, some might be engaged in competition).

In essence, the economy can be almost as complicated as we can imagine it. Really the only thing we need to assume is that each establishment is trying to minimize its costs. If we can swallow that assumption, then they show that you can still calculate the aggregate elasticity of GDP with respect to capital or labor. Those elasticities are a giant mix of all the different cost shares of different establishments, and not necessarily equal to the aggregate cost share numbers I showed you [earlier in the guide](http://growthecon.com/StudyGuide/facts/income.html#labors-share-of-costs).

