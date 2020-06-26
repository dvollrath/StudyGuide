---
title: Growth off the BGP
parent: Solow and Balanced Growth
nav_order: 3
---

# Growth off the BGP
{: .no_toc }

This section is one of the longer ones in the study guide. It contains a lot of material that isn't always intuitive the first time through. This is something you probably want to work through slowly, and several times.

1. TOC 
{:toc}

## Transitional growth
The prior section established that *on* the BGP, $g_y^{BGP} = g_A$. Furthermore, we know from the growth facts that $g_y^{BGP}$ is similar across all the developed countries, and is equal to about 1.8% per year. That means $g_A$ is similar across all the developed countries as well. 

But what about countries that are *off* of a BGP? For example, the figures showed that places like Germany, Japan, and South Korea all grew very rapidly compared to the US or UK for a few decades, until their growth rates settled down to match the US and UK. Or what about China, which has grown very rapidly relative to the developed nations, and does not appear to be *on* a BGP? 

What we want to do in this section is explain what drives growth when a country is *off* a BGP, and that will turn out to depend on the capital accumulation process. What we'll do in the next section is explain why this capital accumulation process acts to push countries towards a BGP even when they are off of it. In other words, why the rapid growth of places like Germany or South Korea (and maybe China?) tends to be temporary and not permanent. 

To get started, we know that we can write the growth rate of GDP at any point in time as

$$
g_y = \frac{\alpha}{1-\alpha} (g_K - g_Y) + g_A.
$$

First, a definition

Transitional growth
{: .label .label-green }
**The growth due to changes in the capital/output ratio, $g_K - g_Y$, is called transitional growth. Let $g_{K/Y} = g_K - g_Y$ be shorthand for growth in capital/output.**

We are going to use the term "transitional growth" because it will turn out that $g_{K/Y}$ is what is responsible for the transition from off-BGP to on-BGP growth.

Let's be clear about what this means when we compare countries to one another. 

Source of growth differences
{: .label .label-green }
**Given that $g_A$ is similar across countries, any observed differences in growth rates across countries are due to differences in transitional growth, $g_{K/Y}$.**

If we observe that $g_y^{Japan}$ is bigger than $g_y^{US}$ in 1990, we want to know why. The long-run evidence indicates that $g_A^{Japan} = g_A^{US}$, so that cannot explain the difference. It must be that $g_{K/Y}^{Japan} > g_{K/Y}^{US}$. The difference in the growth rate of the two countries in 1990 was due to some advantage in Japan in the growth rate of the capital/output ratio compared to the US. Japan's capital was outgrowing their output for some reason, while in the US $g_K$ was about equal to $g_Y$ given that the US appeared to be on a BGP. So the difference in $g_{K/Y}$ explains the growth difference of the two countries.

Growth rate differences are almost always transitional growth differences. And as we'll see in the next section, that means growth rate differences are almost always temporary.

## Capital accumulation
If $g_{K/Y} = g_K - g_Y$ is so important for growth differences, then what determines $g_{K/Y}$, and why are we so sure that $g_{K/Y}$ always heads back to zero? Start by plugging in what we know about $g_Y$ from the section on the [production function](http://growthecon.com/StudyGuide/solow/production.html#production-growth-and-elasticities) to the definition of $g_{K/Y}$.

$$
g_{K/Y} = g_K - g_Y = g_K - \alpha g_K - (1-\alpha) g_A - (1-\alpha) g_L = (1-\alpha)\left[g_K - g_A - g_L \right]
$$

We need to come up with more details about $g_A$, $g_L$, and $g_K$. For now, we're going to just take the values of $g_A$ and $g_L$ as given. The interesting part for us is the growth in capital, $g_K$. 

To describe $g_K$ further, we need to now dig into the process by which capital accumulates. Here is the basic equation we assume governs how the stock of capital changes.

Capital accumulation
{: .label .label-green }
**Capital accumulates according to the following equation:**

$$
K_{t+1} = I_t + (1-\delta)K_t
$$

The capital stock in time $t+1$ is equal to gross capital formation in period t, $I_t$, plus some fraction of the current capital stock, $K_t$, that remains. The value of $\delta$ is the *depreciation rate*, and it is a number between 0 and 1. A normal value used for $\delta$ is 0.05, meaning that 5% of the capital stock depreciates, or breaks down, each period. Thus 95% of the capital stock at $K_t$ is still available for use as capital in period $t+1$. 

We need to know what this says about the growth rate of capital, $g_K$. So let's convert this into a growth rate. First, subtract $K_t$ from both sides.

$$
K_{t+1} - K_t = I_t - \delta K_t
$$

and then divide both sides by $K_t$

$$
\frac{K_{t+1} - K_t}{K_t} = \frac{I_t}{K_t} - \delta.
$$

What's on the left? That is the percent growth in the capital stock, $g_K$. On the right we see that the growth rate of the capital stock depends on the size of gross capital formation relative to the current capital stock, minus an adjustment for the depreciation rate.

Tidying up, we have

$$
g_K = \frac{I}{K} - \delta,
$$

where I removed the $t$ subscripts from I and K to keep the notation simpler. But be aware that the growth rate of $g_K$ can conceptually change each period as $I_t$ and $K_t$ change over time. 

We're going to modify this a little so we can make a little more sense of it. Multiply and divide the $I/K$ ratio by $Y$, so we have

$$
g_K = \frac{I}{Y} \frac{Y}{K} - \delta.
$$

The growth rate of capital depends on the ratio of gross capital formation to GDP, $I/Y$, and the capital/output ratio, $K/Y$ (inverted). The higher is that ratio of gross capital formation to GDP, the faster capital will grow. That makes some sense. If we put more of our GDP towards producing capital goods, then the capital stock should grow faster. 

This also tells us that if the capital/output ratio goes up, then the growth rate of capital goes *down*. If there is already a lot of capital relative to output, it is difficult to generate a large growth rate of capital because we already have a lot of capital.

If you recall the [definition of the BGP](http://growthecon.com/StudyGuide/facts/bgp.html), one of the elements was that the ratio of gross capital formation to GDP was stable. Let $s_I$ denote this ratio,

$$
s_I = \frac{I}{Y}
$$

and thus the data tells us that $s_I$ is roughly constant over time. In the textbook, and most treatments of the Solow model, you'll see this $s$ referred to as a "savings rate". I think that terminology is misleading, because it implies something about the financial activity of people. That is related, but it is more accurate to read $s_I$ as the "share of GDP accounted for by gross capital formation". The source of financing for that gross capital formation isn't terribly important to us.

This means we've got

$$
g_K = s_I \frac{Y}{K} - \delta.
$$

Since $s_I$ is stable, this means the growth rate of capital is dictated by the size of the capital/output ratio itself. 

Okay, we've finally got an expression for $g_K$. Let's go back and put this into the equation we started with at the beginning of this section regarding the growth rate of the capital/output ratio. This is important enough to us that we'll give it a little label.

Growth rate of capital/output
{: .label .label-green }
**The growth rate of the capital/output ratio is determined by the following equation:**

$$
g_{K/Y} = (1-\alpha)\left[s_I \frac{Y}{K} - \delta - g_A - g_L \right].
$$

The *growth rate* of the capital/output ratio depends inversely on the *level* of the capital/output ratio itself. The higher is $K/Y$, the lower is the growth rate $g_{K/Y}$. We also see that the higher is the share of GDP allocated to capital formation, $s_I$, the higher is the growth rate of capital/output. Recall that $g_{K/Y}$ is the transitional growth off the BGP, so this tells us that transitional growth is driven in large part by the actual size of the capital/output ratio.

What else do we see? Three additional things act on the growth rate of the capital/output ratio. 

1. Depreciation, $\delta$, has an obvious effect. The faster that capital breaks down, the slower the capital/output ratio will grow. 
2. Productivity growth, $g_A$. The faster productivity grows, the slower is growth in the capital/output ratio. That is because productivity growth causes output to grow, but does not cause capital to grow directly.
3. Labor or population growth, $g_L$. The faster the workforce grows, the slower is growth in the caiptal/output ratio. This is similar to productivity. Worker growth makes output grow faster, but doesn't make capital grow directly.

## The dynamics of transitional growth
Let's go back to think about what we were after. Transitional growth - $g_{K/Y}$ - was responsible for  differences we see in the growth rate of GDP per capita between countries. We wanted a better description of transitional growth, and now we've got it. We know from the last equation in the prior sub-section how $g_{K/Y}$ works.

Most important for us is that the growth rate of the capital/output ratio *declines* as the K/Y ratio gets larger. This creates some very interesting dynamics. To see what I mean, the figure below plots the growth rate of K/Y, $g_{K/Y}$, against the size of $K/Y$. It does this for two fake economies. Economy "A" starts with a capital/output ratio of 0.5. Economy "B" starts with a capital/output ratio of 4, so the two countries are quite different in their initial capital/output ratio. 

Despite that difference, the parameters in two countries are otherwise identical. Specifically, I set $\alpha = 0.3$, $s_I = 0.2$, $g_A = 0.02$, and $g_L = 0.01$, all values that are pretty reasonable for a developed country. 

The initial growth rate of the capital/output ratio for economy "A" is, given the capital/output ratio of 0.5, 

$$
g_{K/Y}^A = (1-.3)\left[.2/0.5 - .05 - .02 - .01 \right] = 0.224
$$

or 22.4%. Thus the green dot for economy A starts at (.5,.224) in the figure. For economy B, the growth rate of the capital/output ratio is

$$
g_{K/Y}^B = (1-.3)\left[.2/4 - .05 - .02 - .01 \right] = -0.021
$$

or *negative* 2.1%. The capital/output ratio in economy B is so large that the new gross capital formation being done cannot keep up with the depreciation of capital and the fact that output is growing, and so K/Y is shrinking in economy B. Thus the blue dot for economy B starts at (4,-0.21).

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/49.embed"></iframe>

Now go ahead and hit "Play" to see what happens next. The capital/output ratio for A grows at 22.4%, meaning it moves to the right. The capital/output ratio for B shrinks at 2.1%, so it moves to the left. But because their K/Y ratios change, so does the growth rate of capital/output in each. In A, the growth rate goes *down*, while in B the growth rate goes *up* (but is still negative). As the animation keeps going, you see this continue to happen.

This gets boring pretty fast, but keep watching until the end, because you'll see that both economies are headed to the *same* spot, which is where $K/Y = 2.5$. At this spot, the growth rate of the capital/output ratio in *both* countries is zero. The capital/output ratio for these two countries evolves over time until it *stops growing completely*.

The dynamics of the capital/output ratio, as governed by this equation

$$
g_{K/Y} = (1-\alpha)\left[s_I \frac{Y}{K} - \delta - g_A - g_L \right].
$$

dictate that no matter where the capital/output ratio *starts*, it always ends up at a point where $g_{K/Y} = 0$. In other words, the transitional growth that we started out trying to explain is inherently *temporary*, and so differences in growth between countries tend to be temporary. We'll make that more explicit in the next section.

One last thing before we leave, though. Instead of watching the two economies evolve over time, we could plot out all the points that they hit along the way. This will show us what the growth rate $g_{K/Y}$ was at every given $K/Y$ that the two countries experienced. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/51.embed"></iframe>

Their dynamics trace out a very nice curve which shows that the relationship of $g_{K/Y}$ to $K/Y$ itself is negative. We're going to work more with this on a theoretical level in the next section.