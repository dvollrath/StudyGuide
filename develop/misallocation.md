---
title: Misallocation
parent: Comparative Development
nav_order: 4
---

# Misallocation
{: .no_toc }

1. TOC 
{:toc}

![Meme](meme-misallocation.png)

When we talk about production we have just talked about aggregate amounts of capital, K, labor, L, and possibly human capital, h. We haven't been explicit about where or by whom those inputs get used. Economies obviously contain many firms, and those firms have lots of different locations. We are split up into different cities and states. Little bits of capital get used in different establishments in different locations by different workers. Each worker is working with some specific capital in some specific location. 

A very real possibility is that a reason for low or high productivity is that an economy is either very bad or very good at ensuring that all the individual bits of capital and individual workers are allocated in a way to maximize production. Having a heart surgeon work at a rural diner as a line cook is probably a poor use of their human capital, especially if we've taken a line cook and put them to work at a hospital in a major city. Not only would it be dangerous, but even if they *could* produce something, it wouldn't be nearly as valuable as what we'd get if the surgeon and line cook swapped places. There is accumulating evidence that these sorts of misallocations are a meaningful reason for why some countries are poor(er).

## Misallocation across varieties
How do we think about misallocations? The key economic intuition is that misallocation implies that different units of a factor of production have different marginal products, implying "money left of the table" from the perspective of the economy. If the marginal product of one piece of capital (e.g. a building) is high while the marginal product of another (e.g. the building across the street) is low, then we're missing a chance to increase total output. If we could move some economic activity (e.g. some businesses) from the low to the high marginal product building (maybe it has better access to roads) then this would do a few things. First, the businesses that moved into the high MP building would increase their output due to the better location. Second, by adding new businesses we'd probably lower the MP in that building, but that's okay, it's already high. Third, moving businesses *out* of the low MP building would *raise* the MP in that building. Those that remain would have more space, and perhaps it improves their prospects because they have more parking for customers. We could keep getting more output from these businesses if we kept moving them over - *until* the point where the MP's are equal in the two locations. At that point there isn't anything left to gain. Misallocation was the original situation with different marginal products, and a "good" allocation is one where the MP's are identical for different locations.

How do we see this in our models? Take the [varieties model we developed](https://growthecon.com/StudyGuide/gdp/varieties.html). We started with production at final good firms (Target) of

$$
Y = L^{1-\alpha} \sum_i^{N} x_i^{\alpha}.
$$

where they used $N$ different varieties, each in the amount $x_i$. Each $x_i$ was produced using capital, so it was the case that $x_i = K/N$, or we split the capital across the varieties equally. This led to (plug and you'll see)

$$
Y = K^{\alpha} (N L)^{1-\alpha}.
$$

Productivity in this economy was equal to the number of varieties we use. This gives us a setting to think about misallocation.

Let $N$ be the number of varieties that *exist* and *could* be used by the economy. We've got the plans and know-how to make these goods. But let's say that $M$ is the *actual* number of varieties we use, and that $M\leq N$. Why would $M$ be lower than $N$? All sorts of reasons. It could be a state-managed economy (maybe like China?) and so only a certain number of varieties/industries are allowed to operate. Or perhaps you have to have a political connection to get access to the capital market and use $K$, and only $M$ of the firms producing varieties have those connections. Maybe we think about the varieties as locations in the economy (different cities, different regions, etc..) and there are frictions (transport costs, political barriers, etc..) that keep some locations from being part of the network. Whatever the reason, the economy doesn't use all the possible varieties. 

Mathematically, it's pretty simple to see that in our mis-allocated economy with $M$ varieties, output is

$$
Y = K^{\alpha} (M L)^{1-\alpha}.
$$

and that 

$$
Y^M = K^{\alpha} (M L)^{1-\alpha} < K^{\alpha} (N L)^{1-\alpha} = Y^N.
$$

We have lower GDP because we use fewer varieties. 

What about this is a "mis-allocation"? Well, we could increase output here without adding factors of production (K or L) or innovating or adding any new technology. All we'd have to do is simply use another variety, and split the capital up - or re-allocate it - across $M+1$ or more varieties. If we can reallocate factors of production and achieve a higher output, then those factors must have been *mis*-allocated before. 

A different way of seeing this is to look at the marginal product of different varieties. How much additional output do we get for adding just a little more of a given variety? And in particular, how big is the marginal product of one of the $M$ used varieties compared to the marginal product of an unused variety? 

To answer this, let's step back to the original production function with the summation, and break this out into

$$
Y = L^{1-\alpha} \left(x_1^{\alpha} + x_2^{\alpha} + ... x_M^{\alpha} + x_{M+1}^{\alpha} + ... + x_N^{\alpha} \right).
$$

This just expands the summation term to show each individual input. The individual terms, $x_i$, are all in there, it's just that for the $M$ used varieties the value of $x_i > 0$, but for the unused varieties ($M+1$ through $N$) the $x_i=0$. 

What's the marginal product of any given variety? Take the derivative of this with respect to any $x_i$, and you get

$$
MPXi = \frac{\partial Y}{\partial x_i} = L^{1-\alpha} \alpha x_i^{\alpha-1}.
$$

That expression is true regardless of which variety (used or unused) that we are talking about. Now, compare the $MPXi$ for two different varieties - $M$ (used) and $M+1$ (unused). 

For variety $M$, the marginal product is 

$$
L^{1-\alpha} \alpha x_M^{\alpha-1} = L^{1-\alpha} \alpha (K/M)^{\alpha-1} >0
$$

This is some number greater than zero, as it used $K/M$ of the capital, and this variety is useful. What about for variety $M+1$? That marginal product - remember, it produces no products - is

$$
L^{1-\alpha} \alpha x_{M+1}^{\alpha-1} = L^{1-\alpha} \alpha 0^{\alpha-1} = \infty.
$$

The marginal product for $M+1$ is, well, higher. It is infinity in this case because the term $x_{M+1}^{\alpha-1}$ is the same as $1/x_{M+1}^{1-\alpha}$ and as $x_{M+1}$ gets close to zero the value of this goes to infinity. 

There is a *massive* difference in marginal products between a used and unused variety. This makes it more obvious that if we re-allocated capital away from the $M$ varieties and used it to *add* varieties, we'd be better off. This is true even though re-allocating capital away from the $M$ varieties would lower their output. But the trade is worth it, because we'd be sacrificing a finite marginal product for an infinite one. 

Are marginal products really infinite? No. But the general point holds here. The marginal value of a unused variety is huge compared to used varieties, and we'd be better off diversifying our intermediates. 

Whatever the institutional reasons for $M < N$, they are lowering GDP (and GDP per capita). All this discussion here does is lay out the case for understanding how that would work. What it does not do is explain *why* an economy would not use all the varieties. That's an entirely different question. 
