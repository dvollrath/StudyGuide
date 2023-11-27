---
title: From Malthus to Solow
parent: Malthusian Demographics
grand_parent: Population and Resources
has_children: true
nav_order: 2
---

# Escaping the Malthusian world
{: .no_toc }

1. TOC 
{:toc}

Historically the world was stuck in a Malthusian situation with stagnant living standards, and those standards were pretty low. But we all live in a world of generally rising living standards and they are very high compared to the past. When, and how, did the world shift from the Malthusian world to the world of sustained growth (as in the Solow model and its variations)?

## Take-off
Let's establish some timing first. The following figure gives you some very long-run estimates of GDP per capita in the UK, Japan, and Mexico. This demonstrates a few features of historical growth.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="../plotly/mad-longrun-ir.html"></iframe>

First, the UK is considered the first case of an industrial revolution which created sustained growth. There had been fits and starts before this, but in the UK we see the first sustained rise in GDP per capita. This starts somewhere around the 1700s. The exact timing is argued over, but we're just after the rough start. Prior to the 1700s living standards in the UK  were pretty flat from around 1000 to 1700. They were a bit higher than in Japan and Mexico, yes, but there wasn't sustained growth.

Second, different areas of the world did experience sustained growth, just later than in the frontier places like the UK. Japan and Mexico start taking off around maybe 1900? And for a while they are on a similar trajectory. Ultimately Japan took another leap to catch up to the UK, while Mexico remains somewhat behind. 

Third, even those places that lag in take-off are still much richer than they were in 1800 or 1700 or 1000. Mexico has not caught up to the UK or Japan, but it is still in better shape in terms of living standards than in 1500.

## What happened?
Welcome to one of the biggest questions and longest-running debates in all of economics. What happened to kick over the UK at first, and then nearly every other country, from Malthusian stagnation to sustained growth. Why did that happen around the 1700s and not earlier - or later? Why did some places start sooner than others? These are "big questions" and we don't have solid answers.

What can we say? We can at least talk about some of the mechanics of how this must have worked. All we are doing here is establishing how a combination of our Malthusian model with finite resources can interact with population growth to deliver sustained growth.

First let's see why the Malthusian model alone can't quite get us there. We know from the data that prior to about 1800 living standards were low and that population growth was quite low. From our Malthusian model we know that

$$
y^{ss} = \frac{g_A}{\nu} + \overline{c}.
$$

and 

$$
g_L^{ss} = g_A.
$$

We can explain both the low population growth rate and relatively low living standards with a very low rate of productivity growth, $g_A$. 

If we want to explain why living standards grew substantially - and persistently - in the Malthusian model then we need to assert that $g_A$ went up by a lot. But if $g_A$ goes up by a lot, then the population growth rate should have gone up by a lot as well. And for the first part of the transition to sustained growth, this seems to track. 

The data in the Malthusian section suggested that for much of history it was true that the higher was GDP per capita, the higher was the population growth rate. Moreover, it looks like both GDP per capita and the population growth rate increased together over time (as opposed to randomly over the centuries). We can explain that by saying that $g_A$ went up over time. 

But that can't get us all the way there. If the Malthusian model is right, then the only way for GDP per capita to *keep* growing at a sustained rate, like we see since around 1850-ish for much of the globe, is for $g_A$ to keep growing. But it doesn't appear that productivity growth has continued to do that. The accounting work we did showed that $g_A$ was - at best - constant over time for much of the rich world, and most likely has actually fallen in the last fifty years. It cannot be the case that we've got a Malthusian situation since around 1850.

Beyond that, the population growth rate *fell* starting around 1850-ish for a lot of the rich world, and fell in other areas as they also experienced sustained growth. This just doesn't work with the Malthusian setting. 

The transition to sustained growth requires some kind of transition in the model, and in particular it has to *reverse* the relationship of population growth and GDP per capita. The transition has to explain how we got to have modern demographic relationships where population growth tends to fall with living standards. 

## Demographic transition
The key to explaining the mechanics of the transition comes down to making the demographic part of the Malthusian model more sophisticated. Rather than saying that 

$$
g_L = \nu (y_t - \overline{c})
$$

and that $g_L$ is always increasing in the size of GDP per capita, we will instead assume that population growth is "hump-shaped" with respect to GDP per capita. There will be a Malthusian range of low income per capita over whicih $g_L$ increases as income goes up, but then $g_L$ will hit a maximum, and after that $g_L$ will decline as income goes up. 

Why? Well, there are a variety of ways to motivate this. One is that there are biological maximums to population growth rates that no matter how rich people get, they won't be able to go beyond. Second, and more interesting, is that there are costs to kids beyond just things like food or shelter. We also care about things like education and skills, which take time and effort to impart, and which get more expensive to impart as incomes go up (i.e. you have to hire a teacher). Moreover, as incomes go up the opportunity cost of having children - who take up parental time - also increases. 

What this modified model of $g_L$ is saying is that at low levels of income, the material needs outweigh the considerations on education and time, and so as income goes up parents are able to support more kids (or more kids survive childhood). But once incomes hit some medium level parents can't do much more to increase $g_L$ just with material goods, and these education and time factors start to kick in. Once you are reasonably sure your kids can eat, have a place to sleep, and will be pretty healthy, then you start thinking about investing more in your kids future through things like training and education, and ultimately that means you consider having *fewer* kids but really pushing your resources into that future.

## Reaching sustained growth
In a picture, this new version of $g_L$ looks like this:

![Demographic transition](fig-ch9-fig4-eps-converted-to.pdf)

With GDP per capita on the x-axis, you can see that as it goes up $g_L$ rises at first, but then declines as the economy gets richer and richer. 

Now use this to rethink the Malthusian model. There, we took the size of $g_A$ as given. In the figure above, it's drawn at a level such that it hits $g_L$ twice. The intersection on the left is just the regular Malthusian outcome discussed before. $g_L$ is increasing in living standards, so if for some reason $y$ is relatively large, high population growth pushes $y$ down until you reach $y_M$, the Malthusian steady state. We can presume that for much of history we were moving around in that space around $y_M$. Yes, there is another intersection at $y_T$, but it would take some kind of weird shock to jump all the way past this high level of income, so we don't really consider that range plausible. 

Instead, think about what happens now as the size of $g_A$ does increase over time. At first, all this does is move up the $g_A$ line, and move the $y_M$ steady state a little higher. That's just our Malthusian model at work. But eventually, if $g_A$ gets high enough we get a picture that looks like this:

![Demographic transition](fig-ch9-fig5-eps-converted-to.pdf)

Here, the size of $g_A$ is big enough that $g_L$ can not keep up. Incomes keep rising, but $g_L$ hits the maximum, and then starts to *decline* because those issues of time and education kick in. Income keeps rising because now $g_A$ is definitively higher than $g_L$, and we've entered a realm of sustained growth. 

The model of $g_L$ with this "hump-shape" demographics gives us the mechanics to explain how the world transitioned to sustained growth. It also fits the patterns in the data. $g_A$ does increase, but it doesn't have to increase forever to explain sustained growth. $g_A$ can even decline some after the transition and still keep growth going. $g_L$ rises with income historically, but at some point tops out and now tends to fall with income per capita. It is the interaction of $g_A$ with this model of $g_L$ that allows this explanation to work. 



