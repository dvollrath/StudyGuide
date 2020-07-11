---
title: Constant returns and marginal products
parent: Production
grand_parent: Solow and Balanced Growth
nav_order: 2
---

# Constant returns and marginal products
{: .no_toc }

1. TOC 
{:toc}

Remember that we we said production was constant returns to scale with respect to the rival inputs (labor and capital). Our Cobb-Douglas production function has constant returns to scale with respect to $K$ and $L$. Let's work out an interesting property of constant returns production functions. 

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