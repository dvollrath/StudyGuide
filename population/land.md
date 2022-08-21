---
title: Fixed resources and growth
parent: Population and Resources
nav_order: 3
---

# Fixed resources and growth
{: .no_toc }

1. TOC 
{:toc}

![Meme](meme_food.pdf)

## Renewables and fixed resources
We can tweak the original model a little to think about the use of resources that are necessary for production, but that do not deteriorate over time, or that can be renewed. Agricultural land is commonly thought of this way, and while soil fertility can decline with use, it can also be renewed through fallowing or fertilization. Other types of resources, like lumber or water, have similar properties. How does economic growth operate in the presence of these kinds of resources?

This actually becomes somewhat simpler than the nonrenewable case. Here, let the prodution function be

$$
Y_t = K_t^{\alpha}X^{\beta} (A_t L_t)^{1-\alpha-\beta},
$$

where instead of the flow of energy from nonrenwables, we have $X$ as the stock of the renewable resource. Note that here $X$ does not have a time subscript, indicating that $X$ is just a constant amount of the resource available for use. We could be more subtle and allow this to fluctuate some over time, but here we're going to make this a truly fixed resource. 

Work through this in the typical way. Take logs

$$
\ln Y_t = \alpha \ln K_t + \beta \ln X + (1-\alpha)\ln A_t + (1-\alpha) ln L_t.
$$

Subtract $\alpha \ln Y_t$ from both sides,

$$
(1-\alpha)\ln Y_t = \alpha (\ln K_t - \ln Y_t) + \beta \ln X + (1-\alpha-\beta)\ln A_t + (1-\alpha-\beta) ln L_t.
$$

and divide by $(1-\alpha)$, 

$$
\ln Y_t = \frac{\alpha}{1-\alpha} (\ln K_t/Y_t) + \frac{\beta}{1-\alpha} \ln X + \frac{1-\alpha-\beta}{1-\alpha}\ln A_t + \frac{1-\alpha-\beta}{1-\alpha} ln L_t.
$$

Now subtract $\ln L_t$ from both sides so that we get GDP per capita on the left. But notice that this is going to leave a term involve labor "dangling" at the end of the right-hand side.

$$
\ln y_t = \frac{\alpha}{1-\alpha} (\ln K_t/Y_t) + \frac{\beta}{1-\alpha} \ln X + \frac{1-\alpha-\beta}{1-\alpha}\ln A_t - \frac{\beta}{1-\alpha} \ln L_t.
$$

Like with nonrenewables, an increase in population implies a drop in the level of GDP per capita. This is because the renewable/fixed resource X is being spread across more and more people. Whatdoes the growth rate look like?

$$
g_y = \frac{\alpha}{1-\alpha} g_{KY} + \frac{1-\alpha-\beta}{1-\alpha} g_A - \frac{\beta}{1-\alpha} g_L.
$$

With X fixed, $g_X = 0$, so this is slightly easier than before. Along a BGP, we would have the capital/output ratio constant, so $g_{KY}=0$. Thus along the BGP we have

$$
g_y^{BGP} =  \frac{1-\alpha-\beta}{1-\alpha} g_A - \frac{\beta}{1-\alpha} g_L.
$$

Again, growth is a question of the rate of productivity growth and the rate of population growth. Growth will be positive if

$$
g_A > \frac{\beta}{1-\alpha-\beta} g_L.
$$

Growth in the presence of a fixed or renewable resource is a race between productivity and population. There is no separate term involving $s_X$, because in this case the resource base itself is not necessarily getting run down towards zero. 

Last, note that the growth rate of resources per capita will be negative. 

$$
x_t = \frac{X}{L_t}
$$

so $\ln x_t = \ln X - \ln L_t$ and hence

$$
g_x = - g_L.
$$

Thus resources per capita are declining over time, at the rate of population growth. 

## Food and growth
How does this variation on the resource model work with the data? Start with agricultural land per capita. 

<iframe src="https://ourworldindata.org/grapher/agricultural-area-per-capita?country=OWID_WRL~USA~GBR~KOR~NGA~IND~JPN~CHN" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

This clearly fell across all countries, and at the world level, consistent with the idea that $g_x <0$. Agricultural land isn't stricty fixed (you can open up new land to farm) but roughly speaking these lines reflect population growth on relatively fixed stocks of agricultural land over time.

Does this drop in land per capita imply that the output *of food* is also falling per capita? No. 

<iframe src="https://ourworldindata.org/grapher/daily-per-capita-caloric-supply?tab=chart&country=CHN~IND~NGA~JPN~KOR~GBR~USA" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

Across all these countries (and over some very long time frames) there is an increase in the calories per capita. How do we explain this? Productivity growth. GDP is made up of more than food, of course, but using the rough relationship found above, we know that if $g_A$ is high enough, then GDP per capita will rise even though resources per capita are falling. That's what we're seeing here in the case of food. Productivity growth in food is high enough to offset the increased number of people. 

Just to be thorough, here is some data indicating that food consumption per person is correlated with GDP per capita. So we are in good shape using GDP per capita as a proxy for food production per capita, and vice versa. 

<iframe src="https://ourworldindata.org/grapher/daily-caloric-supply-per-person-vs-gdp-per-capita" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

Back to how economies accomplish an increase in food consumption per capita while using less land per capita. It has to be productivity growth in agriculture. Use a ratio similar to "energy intensity", which is just $X/Y$, or land relative to GDP.

This ratio *should* be falling over time if the economy is getting more productive. $X$ is not changing, and GDP, Y, is growing.

<iframe src="https://ourworldindata.org/grapher/arable-land-pin?country=OWID_WRL~JPN~China%2C%20mainland~IND~NGA~KOR~USA~GBR" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

This ratio indicates that it takes *less* land to produce each kilocalorie of food over time, our crude measure of food output (and a rough proxy for GDP). That is an indication of higher productivity in producing food. 

One interesting exception in the figure is Japan, where this ratio *rose* from 1980 to 2014. What does that indicate? It would be consistent with a *decline* in food per capita and/or an *increase* in land per capita used for agriculture. Japan's land per capita fell along with other countries, so production of food per capita probably was falling in Japan. That may not indicate a drop in food consumption per capita, if Japan was importing more food from abroad rather than growing it at home.