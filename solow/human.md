---
title: Human capital
parent: Solow and Balanced Growth
nav_order: 7
---

# Human capital in the Solow model
{: .no_toc }

1. TOC 
{:toc}

## Measuring human capital
The Solow model so far has just physical capital, $K$, and "labor", $L$, as inputs. But that does not allow for much nuance in terms of skills, experience, or participation in the work force of people. We can extend the definition of production to allow for this. It requires two changes. The first is to add an explicit accounting for what we'll call *human capital* in the production function. Let

$$ 
Y_t = K_t^{\alpha} (A_t h_t L_t)^{1-\alpha}
$$

and note the addition of the term $h_t$. $h_t$ is human capital *per person*, and $L_t$ is the number of people. Taking a look at the production function, we can see that human capital will act a lot like the productivity term, and that is a decent way of thinking about things. Human capital (skills, experience, etc.) act to raise the productivity of labor, just like a new technology would.

The second thing we need is a definition of the $h_t$ term. What goes into human capital? We'll allow for several things. In math,

$$
h_t = \frac{E_t}{L_t} e^{\gamma_S S_t + \gamma_X X_t},
$$

which looks like a pile of garbage. But the various terms have distinct definitions. 

1. $E_t/L_t$ is the ratio of employees (workers) to population. This ratio is going to be less than one, because some of the population is made up of kids or the elderly. It may also fluctuate due to business cycle conditions, but we're more interested in long-run changes in this ratio. This ratio could change due to shifts in the age structure of the population, or due to changes in norms and attitudes about who is allowed or able to work (e.g. the shift in women's ability to participate in the labor force during the 20th century).

2. $S_t$ is a measure of the average years of schooling of workers, under the assumption that schooling tends to raise the productivity of workers. You'll see below some evidence supporting that assumption. The parameter $\gamma_S$ dictates the effect of a year of schooling on productivity of workers.

3. $X_t$ is a measure of the average experience of workers, under the assumption that more experience tends to increase the productivity of workers. There are probably more subtle ways in which experience matters but for our purposes this will be a good baseline. $\gamma_X$ is the effect of an extra year of average experience on the productivity of workers.

We can look at a little data about the levels of these things across countries. Start with the $E_t/L_t$ ratio in the figure below. One thing you may note is that these ratios look small. South Korea, for example, had a reported $E_t/L_t$ ratio around 0.3 in the 1950s and 1960s. Some of this is a reporting issue, as in particularly poor countries (as South Korea was at the time) many people are self-employed as farmers, and so may not be reflected in the official count of "workers". There is probably a similar story at work with Nigeria, in that a substantial number of people are working for themselves in some capacity, and do not show up in official statistics.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/85.embed"></iframe>

Nevertheless, these ratios climbed for several countries in the 20th century, including the US (see about 1965 to 1990). This was the arrival of the Baby Boom into the workforce, which raised the proportion of workers to population, and which is now starting to disappear as that generation ages. 

We can also look at years of schooling for the same countries. This is an average for people of working age (normally 25+), so the averages will look quite low in early years as it may reflect generations of older people who did not receive a lot of education. In the US, for example, the average years of education was only 8 in 1950, despite the fact that almost every kid in the US at that point was finishing high school. Those kids grandparents, however, may not have finished high school, and were dragging down the average years.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/86.embed"></iframe>

Neverthless, you can see most countries experienced a substantial increase in average education over time. By the 21st century, the *average* person in Japan, Korea, Germany, or the US has more than a high school education. China and Nigeria have increased their years of schooling by substantial amounts. 

It is a little more difficult to put together consistent information on experience across countries, so I have not plotted any information on that. This is mainly a result of aging, and we'll return to it when discussing the US growth slowdown later on.

## Human capital on the BGP
How does human capital influence the level of GDP per capita on the BGP, and does it influence the growth rate? 

To answer this, we need to work back through our production function. Starting with the production function take logs to get

$$ 
\ln Y_t = \alpha \ln K_t + (1-\alpha) \ln A_t + (1-\alpha) \ln h_t + (1-\alpha) \ln L_t 
$$

make the odd adjustment to subtract $\alpha \ln Y_t$ from both sides,

$$
(1-\alpha)\ln Y_t = \alpha (\ln K_t - \ln Y_t) + (1-\alpha) \ln A_t + (1-\alpha) \ln L_t
$$

and then divide both sides by $(1-\alpha)$,

$$
\ln Y_t = \frac{\alpha}{1-\alpha} (\ln K_t - \ln Y_t) + \ln A_t + \ln h_t + \ln L_t.
$$

We care about per-capita outcomes, so subtract $\ln L_t$ from both sides,

$$
\ln y_t = \frac{\alpha}{1-\alpha} (\ln K_t/Y_t) + \ln A_t + \ln h_t.
$$

Again, human capital appears to function a lot like the productivity term. Higher human capital is associated with higher GDP per capita, because it increases the productivity of labor. 

We can plug in what we know about $h_t$ here to be more specific.

$$
\ln y_t = \frac{\alpha}{1-\alpha} (\ln K_t/Y_t) + \ln A_t + \ln \frac{E_t}{L_t} + \gamma_S S_t + \gamma_X X_t.
$$

Note that when we do $\ln h_t$, that removes the exponential term from $h_t$. What this says is that the log of the employment/population ratio matters for GDP per capita. When a higher fraction of people are workers, there will be higher GDP per person. 

In addition, notice that the years of schooling, $S_t$, and years of experience, $X_t$, have a direct effect as well. They aren't in logs, because of how we set up the $h_t$ term. I'll explain below why we set things up this way. 

For now, let's see what this implies for the *growth rate* of GDP per capita. To get the growth rate, remember that we can take the time derivative of the above equation. See [here](calculus.html) to remind yourself of how this works.

We have to be a little careful about how we deal with the $S_t$ and $X_t$ terms, becuase they are not in logs.

$$
g_y = \frac{\alpha}{1-\alpha} g_{K/Y} + g_A + g_{E/L} + \gamma_S \Delta S_t + \gamma_X \Delta X_t. 
$$

The term $\Delta S_t$ refers to the *absolute change* in years of schooling, and not the growth rate. For example, if years of schooling go from 10 to 12, then the effect on the growth rate of GDP per capita is $\gamma_S \times 2$. The percent growth rate of schooling (which would be 20%) is not relevant. There is a similar argument for experience.

Along a BGP, we know that $K/Y$ is stable. In principle, then, it could be that along a BGP the growth rate of GDP per capita depends on productivity growth, $g_A$, *and* on the growth rate of employment/population, the change in years of schooling, and the change in years of experience. In practice, though, these three human capital terms all have such small effects we tend to ignore them. 

Employment/population, if you look at the figure above, is roughly constant for a lot of developed countries. Thus the growth rate is zero or close to zero. For education, while over long periods of time the average rose, the actual change in years of schooling year-to-year is only like 0.05 years even when education is rising quickly. We'd get a similar result for experience. Furthermore, the size of $\gamma_S$ and $\gamma_X$ tend to be small. As I'll show below, we think $\gamma_S$ is around 0.10, and $\gamma_X$ is around 0.04. So the net effect of a change in schooling for the growth rate of GDP per capita is something like $0.05 \times 0.1 = .005$. At *best* faster growth in schooling (or experience) could add half a percentage point to the growth rate. That's nothing to sneeze at, but for most countries the changes in schooling and experience are too small to have a meaningful effect on the *growth rate*.

In contrast, schooling, experience, and the employment/population ratio matter for the *level* of GDP per capita. Rather than thinking about the small changes in schooling, experience, or employment/population, think about them having a baseline level: $S_0$, $X_0$, and $E/L_0$. And recall that we can write productivity itself as $\ln A_t = \ln A_0 + g_A t$. Finally, recall that along the BGP we know that $K/Y = s_I/(g_A + g_L + \delta)$,

$$
\ln y_t^{BGP} = \frac{\alpha}{1-\alpha} \left(\ln s_I - \ln (g_A + g_L + \delta)\right) + \ln A_0 + \ln E/L_0 + \gamma_S S_0 + \gamma_X X_0 + g_A t.
$$

This is an equation for the BGP that includes schooling ($S_0$), experience ($X_0$), and the employment population ratio ($E/L_0$) as part of the intercept, meaning they affect the *level* of the BGP. This is probably the most straightforward way to think of the effect of these human capital factors on growth. They affect the level of the BGP, but are not a big factor in the growth rate along that BGP.

## Schooling and experience
This last sub-section provides some background for why the human capital terms were written the way they were. 

For employment to population, that is straightforward. Only people engaged in work would be contributing to the production of GDP per capita, so having $E_t/L_t$ in the definition of $h_t$ just accounts for that. 

With schooling and experience, we had that funky exponential term. Let's see what those imply. Looking back at the prior sub-section, we had in logs that

$$
\ln y_t = \frac{\alpha}{1-\alpha} (\ln K_t/Y_t) + \ln A_t + \ln \frac{E_t}{L_t} + \gamma_S S_t + \gamma_X X_t.
$$

Let's move the employment/population ratio term over to the left, so we have

$$
\ln (Y_t/L_t) - \ln (E_t/L_t) = \frac{\alpha}{1-\alpha} (\ln K_t/Y_t) + \ln A_t + \gamma_S S_t + \gamma_X X_t.
$$

I changed the $y_t$ term to $Y_t/L_t$ to indicate that it was GDP per person, explicitly. Now re-arrange the terms on the left, which we can do given the logs, to 

$$
\ln (Y_t/E_t) = \frac{\alpha}{1-\alpha} (\ln K_t/Y_t) + \ln A_t + \gamma_S S_t + \gamma_X X_t.
$$

What is on the left is GDP *per worker*. Great. Now let's add one more piece of information. We know from the original growth facts that the share of GDP going to labor (i.e. wages) was roughly stable, and we called that ratio $s_L$. The average wage of a worker is therefore $w_t = s_L Y_t/E_t$, or the total GDP paid as wages divided by the number of workers.

This means we could write

$$
\ln w_t = \ln s_L + \frac{\alpha}{1-\alpha} (\ln K_t/Y_t) + \ln A_t + \gamma_S S_t + \gamma_X X_t.
$$

In other words, the *log wage* is a function of the capital/output ratio, productivity, *and* the average years of schooling and experience. That makes some sense. The average wage should depend on the skills and abilities of workers, to some extent, and this makes it explicit. Be careful, this isn't saying this is how wages are *exactly* set, or even how wages *should* be set. It is just a statement that *given our assumptions* wages will be related to schooling and experience this way.

What's nice about this setup is that it connects to a very common set of empirical results. For decades, researchers in labor economics have found that the log wage is related to the number of years of schooling (for different workers). They estimate that $\gamma_S$ is approximately 0.10, and while it varies by country, it doesn't vary as much as you might guess. 

They also estimate values for $\gamma_X$ of around 0.03-0.05. They tend to allow for the fact that experience can have negative effects (i.e. old people tend to get stuck in unproductive habits at work) and we could allow for that, but we're trying to keep things relatively simple. 

The point is that the structure of the $h_t$ term was not completely random. It was chosen specifically so that when we did this manipulation to think about the average wage in the economy, it would have this "log wage depends on years of schooing and experience" relationship that labor economists have studied. 
