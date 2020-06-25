---
title: Growth off the BGP
parent: Solow and Balanced Growth
nav_order: 3
---

# Growth off the BGP
{: .no_toc }

1. TOC 
{:toc}

## Transitional growth
The prior section established that *on* the BGP, $g_y^{BGP} = g_A$. Furthermore, we know from the growth facts that $g_y^{BGP}$ is similar across all the developed countries, and is equal to about 1.8% per year. That means $g_A$ is similar across all the developed countries as well. 

We also know that we can write the growth rate of GDP at any point in time as

$$
g_y = \frac{\alpha}{1-\alpha} (g_K - g_Y) + g_A.
$$

So let's put everything we know togher. First, a definition

Transitional growth
{: .label .label-green }
**The growth due to changes in the capital/output ratio, $g_K - g_Y$, is called transitional growth. Define $g_{K/Y} = g_K - g_Y$ to save notation.**

We are going to use the term "transitional growth" because it will turn out that $g_{K/Y}$ can be non-zero for a while, but seems to always dwindle to zero over time. We'll get to that. 

Before that, let's be clear about what this means when we compare countries to one another. 

Source of growth differences
{: .label .label-green }
**Given that $g_A$ is similar across countries, any observed differences in growth rates across countries are due to differences in transitional growth, $g_{K/Y}$.**

Let's be a little more clear about that last one. If we observe that $g_y^{Japan}$ is bigger than $g_y^{US}$ in 1990, we want to know why. The long-run evidence indicates that $g_A^{Japan} = g_A^{US}$, so that cannot explain the difference. It must be that $g_{K/Y}^{Japan} > g_{K/Y}^{US}$. The difference in the growth rate of the two countries in 1990 was due to some advantage in Japan in the growth rate of the capital/output ratio compared to the US. Japan's capital was outgrowing their output for some reason, while in the US $g_K$ was probably about equal to $g_Y$ given that the US appeared to be on a BGP.

Growth rate differences are almost always transitional growth differences. And as we'll see, this means that growth rate differences are almost always temporary.

## Capital accumulation
Now that we know $g_{K/Y} = g_K - g_Y$ is so important for growth differences, what drives $g_{K/Y}$? Working this out in more detail

$$
g_{K/Y} = g_K - g_Y = g_K - \alpha g_K - (1-\alpha) g_A - (1-\alpha) g_L = (1-\alpha)\left[g_K - g_A - g_L \right]
$$

where the second equality comes from plugging in what we know about $g_Y$ from the section on the [production function](http://growthecon.com/StudyGuide/solow/production.html#production-growth-and-elasticities), and the last equality is just collecting terms.

We need to come up with more details about $g_A$, $g_L$, and $g_K$. The interesting part for us, at this point, is the growth in capital, $g_K$. 

To describe $g_K$ further, we need to now dig into the process by which capital accumulates. Here is the basic equation we assume governs how the stock of capital changes.

$$
K_{t+1} = I_t + (1-\delta)K_t
$$

That is, the capital stock in time $t+1$ is equal to gross capital formation in period t, $I_t$, plus some fraction of the current capital stock, $K_t$, that remains. The value of $\delta$ is the *depreciation rate*, and it is a number between 0 and 1. A normal value used for $\delta$ is 0.05, meaning that 5% of the capital stock depreciates, or breaks down, each period. Thus 95% of the capital stock at $K_t$ is still available for use as capital in period $t+1$. 

This process of accumulation is fine, but we need to know what it says about the growth rate of capital, $g_K$. So let's convert this into a growth rate. First, subtract $K_t$ from both sides.

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

If you recall the [definition of the BGP](http://growthecon.com/StudyGuide/facts/bgp.html), one of the elements was that the ratio of gross capital formation to GDP was stable. Let, $s_I$ denote this ratio,

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

The *growth rate* of the capital/output ratio depends inversely on the *level* of the capital/output ratio itself. The higher is $K/Y$, the lower is the growth rate $g_{K/Y}$. We also see that the higher is the share of GDP allocated to capital formation, $s_I$, the higher is the growth rate of capital/output. 

What else do we see? Three additional things act to slow down the growth rate of the capital/output ratio. 

1. Depreciation, $\delta$, has an obvious effect. The faster that capital breaks down, the slower the capital/output ratio will grow. 
2. Productivity growth, $g_A$. The faster productivity grows, the slower is growth in the capital/output ratio. That is because productivity growth causes output to grow, but does not cause capital to grow directly.
3. Labor or population growth, $g_L$. The faster the workforce grows, the slower is growth in the caiptal/output ratio. This is similar to productivity. Worker growth makes output grow faster, but doesn't make capital grow directly.

## The dynamics of transitional growth
Let's go back to think about what we were after. We started this section by saying that the growth rate of the capital/output ratio was called "transitional growth". And that this transitional growth was responsible for any differences we happened to see in the growth rate of GDP per capita between countries. So we wanted a better description of transitional growth, and now we've got it. We know from the last equation in the prior sub-section how $g_{K/Y}$ works.

That tells us that transitional growth depends not just on $\delta$, $g_A$, and $g_L$, but also depends on the size of the capital/output ratio itself. And this dependence on $K/Y$ itself is going to explain why transitional growth tends to dissipate to zero over time, no matter how big it gets to start with.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/49.embed"></iframe>

Here's the theoretical version
<iframe width="900" height="600" frameborder="0" scrolling="no" src="https://www.geogebra.org/m/up2w555f"></iframe>
