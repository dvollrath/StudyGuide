---
title: Incentives to innovate
parent: Ideas and Productivity
nav_order: 5
---

# Incentives to innovate
{: .no_toc }

1. TOC 
{:toc}

## Excludable things

## Profits!

<iframe width="560" height="315" src="https://www.youtube.com/embed/bxiCCZXhuRQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Growth is inefficient
The notion that it takes some economic profits to compensate innovators has some interesting implications for the relationship of economic growth and economic competition. The intuitive notion is as follows. Without economic profits, innovation would not occur (or would occur only through lucky breaks). Economic profits can only be generated if we deviate from perfect competition. So you cannot have sustained economic growth *and* perfect competition.

## Aside on constant returns
Remember that we we said production was constant returns to scale with respect to the rival inputs (labor and capital). Our Cobb-Douglas production function has constant returns to scale, $Y = K^{\alpha}(AL)^{1-\alpha}$ with respect to $K$ and $L$. Let's work out an interesting property of constant returns production functions. 

First, I think you'll admit that this is true

$$
Y = \alpha Y + (1-\alpha) Y.
$$

$\alpha$ and $(1-\alpha)$, we know, are elasticities of GDP with respect to capital and labor, respectively. We know that these elasticities can be written as, for example, $\alpha = (dY/dK)\times(K/Y)$. This gives us

$$
Y = \frac{dY}{dK}\frac{K}{Y}Y + \frac{dY}{dL}\frac{L}{Y}Y.
$$

Cancel the $Y$ in numerator and denominator in those terms on the right, and you have

$$
Y = \frac{dY}{dK}K + \frac{dY}{dL}L.
$$

What are those fractions? The fraction $dY/dK$ is the actual change in GDP (not a percent) for a given change in capital (not a percent). That is the *marginal product* of capital. A similar interpretation holds for the term involving labor. What this means is we can write

$$
Y = MPK \times K + MPL \times L.
$$

This is a general property of any constant returns to scale function, not just our Cobb-Douglas version. It deserves a little love.

Constant returns and marginal products
{: .label .label-green }
**For a constant returns to scale production function, it must be that $Y = MPK \times K + MPL \times L$.**

This is basically just an accounting identity. It means that if we can account fully for GDP if we know the marginal product of all the rival inputs. Note that this property doesn't mention productivity, $A$, explicitly. That's okay. If productivity were higher, then the marginal product of both inputs would be higher as well. In fact, those marginal products would be higher by exactly the amount necessary to ensure this property holds. 

## Competition and growth
Back to thinking about the importance of profits to economic growth, and a very interesting conclusion is to come. We still need two additional concepts before we can get to that conclusion.

First, from a pure account perspective, remember that we can always break GDP down into three income streams,

$$
Y = wL + RK + \Pi
$$

where $wL$ are the wages paid to labor, $RK$ are the returns paid to capital, and $\Pi$ are the total economic profits paid out. 

Second, we need to talk about competition and profits. If you go back to the discussion on [cost shares](costshares.html) then we know that 

1. The aggregate economy has constant returns to scale, meaning $Y = MPL \times L + MPK \times K$. 

2. The economy operates with perfect competition, meaning that the marginal product of labor ($w = MPL$), and capital rents are equal to the marginal product of capital ($R = MPK$). 

3. The economy has positive economic profits ($\Pi>0$) that provide the incentive for innovation.

If you put all these together, you'll see that they are incompatible. At best, two of these three things can be true at one time. 

Try a few options. If 1 and 2 are true, then it must be that $Y = w L + RK$. If that holds, then it must be the $\Pi = 0$, and there are no incentives to innovate. If 2 and 3 are true, then it must be that $Y = wL + RK + \Pi > MPL\timesL + MPK\timesK$, meaning that 1 cannot be true. 

A standard argument is that 1 must be true, the aggregate economy displays constant returns to scale. And since we do see innovation, it seems that 3 must be true to some extent. And if 1 and 3 are true, then 2 *cannot* be true. Innovation in a constant returns to scale economy implies that markets cannot be perfectly competitive. There have to be inefficiencies in the economy to generate the profits that incent people to produce the non-rival goods that drive growth.

Growth and competition
{: .label .label-green }
**Economic growth in a constant-returns to scale economy requires that there is not perfect competition.**

Don't endow this with some kind of mystic truth. It is a statement that *if* the economy is constant returns to scale, and *if* innovation requires profits, then the economy cannot be perfectly competitive. 

We could be wrong about the constant returns to scale, perhaps. If our economy has *increasing* returns to scale, it would be entirely possible for us to have perfect competition and profits for innovation. 

One way of thinking about that is to imagine that productivity ($A$) is a *rival* good, and not non-rival. That might be true if you imagined that every idea had to be embedded in a limited number of people's heads. Just-in-time inventory can be used by all sorts of companies, but that is only because they hired some logistics manager from Toyota to install it. Ideas can spread, but in a rival way.

