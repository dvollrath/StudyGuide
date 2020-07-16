---
title: Facts on Resource Use
parent: Population and Resources
nav_order: 2
---

# Facts on Resource Use
{: .no_toc }

1. TOC 
{:toc}

The prior section was all theory about how to fit resources into a standard model of growth. Here we can turn to some data to see how resource use actually has occurred alongside growth, and see whether the model constructed fits well, or how we can interpret the data in terms of the parameters in that model.

## Energy use
Start with energy use, perhaps the form of resource use we're most concious of. The stock $X_t$ is thus something like "total proven reserves" of things like oil and natural gas. The term $E_t$ is the flow of these resources, or "energy", that goes into production.

Here's a plot of total energy use over time. And one can see how this levelled off for places like the US, Japan, and the UK, but keeps climbing in places like China and India.

<iframe src="https://ourworldindata.org/grapher/primary-energy-cons?tab=chart&country=USA~CHN~IND~KOR~GBR~JPN" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

In per capita terms, things look a little different.. This shows something interesting, which is that energy use *per-capita* does not necessarily keep rising over time. In particular, for richer countries like the US, UK, or Japan, energy use per capita started to fall in the last few decades. Of course, this was from a high starting point, so they still have higher per-capita energy use than places like China and India. But it isn't necessarily true that as economic growth continues, so does energy use per capita.

<iframe src="https://ourworldindata.org/grapher/energy-use-per-capita?tab=chart&country=CHN~IND~JPN~GBR~USA~KOR~OWID_WRL" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

On the other hand, if we look across all countries, the relationship of energy use per capita and GDP per capita is strongly positive. 

<iframe src="https://ourworldindata.org/grapher/energy-use-per-capita-vs-gdp-per-capita?xScale=log&yScale=log&time=1990..2015" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

Trying to put this data into context with the model is not straightforward. The cross-sectional relationship in the last figure we can make sense of. Countries that have large resource flow per capita, meaning a high $X_0$ or $s_X$, will have high GDP per capita in our model, holding everything else constant. Everything else is *not* the same, of course, across countries. But perhaps the other things that matter ($A_0$, $s_I$, $g_L$, etc..) turn out to be not very important compared to resources.

On the other hand, our model is a pretty *bad* fit for the time series evidence. For most countries at most times, energy use per capita (and total energy use) is *rising* over time, not falling. That's the exact opposite of what we assumed was going on. 

The most plausible explanation for what we see here is that the initial stock of resources, $X_0$, and or the extraction rate, $s_X$, rose over time. We in fact see that proved reserves of oil and natural gas worldwide rose over time. A lot of time and effort goes into exploring for oil and gas resources, so perhaps that isn't a huge shock. 

![Reserve to production ratio](https://en.wikipedia.org/wiki/Reserves-to-production_ratio#/media/File:Ratio_World_Proved_Oil_Reserves_-_Production_1980-2011.png)

This figure shows, for oil, the world's proven reserves ($X_t$) over production ($E_t$) since 1980. In our model, this line should be flat - the ratio of $X_t/E_t$ is constant as both decline at the rate $s_X$. But in fact the ratio of reserves to production rose. 

## Energy intensity
Perhaps we have found more of these nonrenewable resources over time, allowing us to increase $E_t$ per capita. Is that something we can count on continuing? Ultimately that is question of both supply and demand. Will there continue to be deposits of fossil fuels discovered, or techniques invented to extract more of those fuels (e.g. fracking)? Or do we change our demand for energy sources for environmental and climate reasons? 

The data on energy use don't give us an obvious fit to the model, and don't even give us an obvious set of trends we can use to create a model. What we're really after here is some indication of whether resources are becoming more scarce, and hence might be a drag on growth in the future, or whether they are plentiful enough to not be a significant drag on growth. The information in the prior section was all about quantities of energy used, and we know from simple supply and demand analysis that just knowing the quantity changed doesn't tell us *why* it changed (supply or demand shift) or if the resources are getting more expensive or cheaper.

We can get some insight (we hope) by looking at prices. Here is a figure showing the relative price of energy compared to non-energy goods for consumers. The index is set to equal 1 in 2019. If the index was rising over time, energy was getting more expensive, while if it was falling it was getting less expensive over time.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/119.embed"></iframe>

There isn't a clear trend here across these countries. For the US, there isn't much of a trend here, but rather a series of fluctuations, with a big surge in energy prices in the 1970s (twin oil crises) and another in the early 2000s (when oil was hitting more than one hundred dollars a barrel). But there is not a strong change in price compared to the other countries. Japan had a significant decline in the price of energy over time, but Great Britain, South Korea, and Chile all had pretty significant increases. There is no common pattern here. 

Let's see if we can figure out why the price moved up or down for some of these countries. Remember that the elasticity of an input tells us something about the cost share of that input. In the case of energy, it should be that $\beta$ is

$$
\beta = \frac{p_E E}{Cost}
$$

or that the total cost of energy $p_E E$ relative to costs in a given year is equal to the elasticity. This idea was covered in the material on [cost shares](costshare.html). Now, if we're willing to stretch a little and assume that costs are constant with respect to GDP over time (meaning that the profit share of GDP is constant), then we get

$$
\beta \approx \frac{p_E E}{Y}
$$

which can be re-arranged to

$$
p_E \approx \beta \frac{Y}{E}.
$$

The relative price of energy should depend on $\beta$ and the GDP to energy ratio. If the ratio of GDP to energy use (measured in real units like BTUs) goes up, this *should* be reflected in higher prices. 

<iframe width="900" height="800" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/121.embed"></iframe>

## Food and land
Ag land per capita over time
<iframe src="https://ourworldindata.org/grapher/agricultural-area-per-capita?country=OWID_WRL~USA~GBR~KOR~NGA~IND~JPN~CHN" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

Ag land use over time
<iframe src="https://ourworldindata.org/grapher/cropland-extent-over-the-long-run" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

Food share and GDP per capita
<iframe src="https://ourworldindata.org/grapher/share-of-consumer-expenditure-spent-on-food-vs-gdp-per-capita" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

Absolute food expend and GDP per capita
<iframe src="https://ourworldindata.org/grapher/annual-food-expenditure-per-person-vs-gdp-per-capita" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

Food prices in real terms (rel to 1900)
<iframe src="https://ourworldindata.org/grapher/long-term-price-index-in-food-commodities-1850-2015" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

## Population
Births per 1000
<iframe src="https://ourworldindata.org/grapher/birth-rate-the-number-of-births-per-1000-people-in-the-population?country=CHN~JPN~USA%20(whites)~USA%20(blacks)~England%20and%20Wales~FRA" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

Children per woman
<iframe src="https://ourworldindata.org/grapher/children-per-woman-UN?tab=chart&country=USA~GBR~OWID_WRL~BGD~IND~JPN~KOR~CHN~NGA~GHA" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

TFR and schooling
<iframe src="https://ourworldindata.org/grapher/fertility-rate-vs-mean-years-of-schooling?time=latest" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

GDP per capita and Child per woman
<iframe src="https://ourworldindata.org/grapher/children-per-woman-by-gdp-per-capita" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

Population growth rate and median age
<iframe src="https://ourworldindata.org/grapher/population-growth-rate-vs-median-age?time=latest" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>

Dependency ratios
<iframe src="https://ourworldindata.org/grapher/age-dependency-ratio-of-working-age-population?tab=chart&country=GBR~JPN~CHN~NGA~KOR~USA~IND" loading="lazy" style="width: 100%; height: 600px; border: 0px none;"></iframe>