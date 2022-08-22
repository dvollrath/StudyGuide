---
title: Malthusian Demographics
parent: Population and Resources
nav_order: 5
---

# Malthusian Demographics
{: .no_toc }

1. TOC 
{:toc}

![Meme](meme_malthus.png)

## Demographics in the past
While the demographics in the modern period seem to reinforce the process of economic growth, in the past this did not seem to be the case (or at least was not as strong). Farther back in the past, demographics appear to be associated with "Malthusian dynamics", named for Thomas Malthus. He speculated that population growth was positively associated with growth in GDP per capita (as opposed to the negative relationship in modern times) and that this put a natural check on the growth rate of living standards. Let's see how that works, first by asking if Malthus was right about how population growth and living standards are related.

We can start by looking farther back at fertility rates. We already saw that most developing countries had relatively high fertility rates in the middle of the 20th century. If we extend that backwards as best we can, the best data we have is that the fertility rates were very high for all countries when they were less developed. Places like the UK and US and Japan all appear to have had much higher fertility rates in the 1800s. 

<iframe src="https://ourworldindata.org/grapher/fertility-rate-complete-gapminder?tab=chart&country=CHN~IND~JPN~KOR~USA~GBR" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

The level of fertility was been high in the past, when most countries were poor. Does the long-run relationship of fertility and living standards, though, imply that if GDP per capita *falls* that fertility goes *up* in the short run? That doesn't appear to be the case. In fact, using data from more modern times, [Chatterjee and Vogl](https://www.personal.psu.edu/sc20/papers/SC_TV_growth_fertility.pdf) find that negative shocks to GDP per capita are actually associated with *lower* fertility. This is consistent with Malthus' "preventive checks", where people act to control their fertility in stressful economic times. Chatterjee and Vogl don't have evidence that positive shocks are associated with *positive* shocks to fertility, but the fact that negative shocks lower fertility is consistent with Malthus' basic idea. 

A more direct connection of living standards and demographics in the Malthusian period involves mortality. This is Malthus' "positive" checks, where bad economic conditions lead to poor health, malnutrition, and ultimately higher mortality, lowering population growth. And in the periods we're takling about, mortality rates were very high to start with.

This chart gives some sense of how far child mortality rates have fallen since 1800. Think about the scale of these numbers for a moment. In 1800 about 30% of all children under 5 died before they hit age 5. Families, if they experienced 9 pregnancies, probably saw three of those children die before they turned five. As economies became richer, one of the most important changes that occurred was the drop in child mortality to less than 1% in all rich countries.

<iframe src="https://ourworldindata.org/grapher/child-mortality?tab=chart&country=SWE~USA~GBR~IND~BRA~JPN" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

In a world with low living standards and high baseline mortality and fertility rates, then positive shocks to economic conditions (i.e. a good harvest) are probably associated with higher population growth due to lower mortality rates and (perhaps) higher fertility rates. Negative shocks to economic conditions (i.e. a poor harvest) are probably associated with lower population growth due to higher mortality rates and probably lower fertility rates as people either delay pregnancies or there is more material mortality. 

## Dynamics with positive population responses
How does economic growth work when resources are part of production (e.g. agricultural land) and population growth is *positively* related to GDP per capita? In other words, what does the world look like in a "Malthusian" environment?

The important flip from the modern case is as follows,

$$
g_L = \theta y_t^{\mu}.
$$

Note that the only difference from the modern situation is that this is $y_t^{\mu}$ with a *positive* coefficient rather than a negative one. As $y_t$ goes up, the growth rate of population goes down. We discussed above how that might work, through lower mortality and possibly higher fertility. 

Other than that, everything about the Malthusian setting is identical to the prior section about production with fixed resources. That means the growth rate of GDP along the BGP is

$$
g_y^{BGP} =  \frac{1-\alpha-\beta}{1-\alpha} g_A - \frac{\beta}{1-\alpha} g_L.
$$

And plugging in the Malthusian population growth relationship, we've got this.

$$
g_y^{BGP} =  \frac{1-\alpha-\beta}{1-\alpha} g_A - \frac{\beta}{1-\alpha} \theta y_t^{\mu}.
$$

Again, the growth rate of GDP per capita depends on the *level* of GDP, but now in a positive way. And again, it is easiest to see what happens here by looking at the dynamics. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="https://www.geogebra.org/m/yngtkwwu"></iframe>

In this setting, Malthusian population growth means that the red line slopes *up*. The green line related to productivity growth is still flat. 

Now think about the dynamics, starting with a level of GDP per capita that is relatively *low*. What happens? Because the economy is poor, population growth is low (e.g. disease, malnutrition, etc..) and so the growth rate of productivity is high enough compared to $g_L$ that GDP per capita grows. This pushes the level of GDP per capita to the *right*. But as GDP per capita gets higher, so does population growth, and eventually the economy reaches the point where population growth just offsets productivity growth and GDP per capita stops growing. 

If GDP per capita starts out very *high*, then opposite dynamics are at work. Population growth is large (e.g. lots of food, low mortality) and productivity growth cannot keep up. So GDP per capita *falls* and pushes GDP per capita to the left. 

Regardless, what the Malthusian setting exhibits is *stability*. The dynamics work such that GDP per capita is always getting pushed towards the point where the red and green lines intersect. This is a Malthusian steady state. At that Malthusian steady state, GDP per capita is *constant*. 

We can even solve for the level of GDP per capita at which the economy will come to rest. This is the point at which $g_y^{BGP} = 0$, meaning that 

$$
\frac{1-\alpha-\beta}{1-\alpha} g_A = \frac{\beta}{1-\alpha} \theta y_t^{\mu}
$$

and therefore that the economy comes to rest at

$$
y_t^{BGP} = \left(\frac{g_A}{\theta}\frac{1-\alpha-\beta}{\beta} \right)^{1/\mu}.
$$

This is a lot of parameters, but there is some intuition here. First, notice that the faster productivity grows, $g_A$, the higher the *level* of GDP per capita on the BGP in this Malthusian economy. Productivity growth means that even with some population growth occurring, living standards can maintain their level. Also note the effect of $\beta$. If $\beta$ gets smaller, meaning resources are *less* important, this means the drag on living standards from population growth is smaller, and we can sustain a higher *level* of GDP per capita. If you play with the figure above and lower or raise $\beta$, you can see the impact it has. 

This is a BGP, but note that GDP per capita is *stagnant*. It doesn't grow, because population growth eats up (literally, in Malthus' conception) any improvement in living standards. The economy may gow larger overall, but per capita living standards don't rise. This was Malthus' observation. Interestingly, it probably was a decent description of history up to the point he lived, and then failed completely in the century after Malthus wrote.

Also note that we can figure out the speed of population growth in the Malthusian steady state. Plut $y_t^{BGP}$ into the equation for population growth, and you get

$$
g_L^{BGP} = \frac{1-\alpha-\beta}{\beta}g_A
$$

and population growth depends on productivity growth.

## Global relationships
This last expression implies something important from a historical sense. Recall that from the innovation section we tied the growth rate of productivity, $g_A$, to the size of researcher growth, $g_R$, which in turn had to be pinned down to some extent by the population growth rate. The Malthusian model says that population growth depends positively on productivity growth. Innovation dynamics say productivity growth depends positively on population growth. This implies there is some kind of positive feedback loop at work, at least over the long run. 

In this Malthusian world, faster productivity growth should be associated with a higher living standard. If we take a look at some of the same data on world historical living standards as [before](prodlevel.html), but look at the *growth rate* of population, we get the following. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/127.embed"></iframe>

This isn't some kind of strict relationship, but there is something there. The faster population grew historically, the higher GDP per capita was at a global level, consistent with the Malthusian model for much of history. The only point this kind of breaks down is if you look at the last two points on the right (for 1973 and 2010). Here, their relationship is negative, consistent with our modern demography model. But otherwise Malthus gets things about right.

We can be even more daring. From the work on innovation, we know that the growth rate of productivity is associated with the number of researchers. Imagine we had a model where our productivity growth equation was

$$
g_A \approx \theta \frac{L}{A}
$$

where we made a bunch of assumptions. First, $\lambda = 1$ and $\phi=0$. Second, I substituted $L$ for $R$, meaning that we're taking the whole population as the base for research work. At worst, we can assume that $\theta$ incorporates information on the fraction of people able to do research. 

Use this with our expression above for the growth rate of population in a Malthusian world. 

$$
g_L^{BGP} = \frac{1-\alpha-\beta}{\beta}\theta \frac{L}{A}.
$$

Ignoring the effect of $A$ here (which we could make more concrete by assuming that $\phi$ was clsoe to one), then this says that the population growth rate should be positively related to the *size* of population. At least historically, the logic would be that more people mean more ideas, which means faster productivity growth, which means the resource-based economy can support faster population growth. And this can get us on the good positive feedback loop of population growth and GDP per capita growth. 

How does this work? Well, [Michael Kremer](https://www.jstor.org/stable/2118405) put together some of this data for the period running from one million BC to the present. The population growth rates are obviously speculative, but here's what he came up with, along with a few extra data points collected by me on the last few decades.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/125.embed"></iframe>

And what do you know? It kind of works. As world population grew, so did the growth rate of world population, consistent with the toy model we've got here.

What's the conclusion? Going back to the beginning, we saw that the Malthusian setting, where production depends on fixed resources and population growth is *positively* related to living standards, implies that living standards are *stagnant*. That explains economic growth conditions for much of human history. 


