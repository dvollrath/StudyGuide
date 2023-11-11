---
title: Development accounting
parent: Comparative Development
has_children: true
nav_order: 1
---

# Development accounting
{: .no_toc }

1. TOC 
{:toc}

## Comparisons across countries
To start let's be more systematic about comparing countries and what drives differences in their GDP per capita. All we need for this at the moment is the production function

$$
Y_i = K_i^{\alpha} (A_i h_i L_i)^{1-\alpha}. 
$$

The value $i$ just refers to some specific country. This looks the same as our normal production function, except that we've got the $h_i$ in there accounting for human capital per person. You can look back at how we measure [human capital](https://growthecon.com/StudyGuide/solow/human.html) to understand that term. Basically, it measures "skills" by using data on years of schooling. 

We want to put this into a form measuring GDP per capita, where $N$ is the number of *people*, while we continue to use $L$ to measure the number of *workers*. Part of the reason for variation across countries will be variation in their employment ratio, $L/N$.

We also want to do this in a smart way so that each element describing GDP per capita in a country ($Y_i/N_i$) has a clear connection to the models we've developed so far. 

First we're going to divide through as follows

$$
Y_i = \left(\frac{K_i}{A_i h_i L_i} \right)^{\alpha} A_i h_i L_i,
$$

Then you're going to note that

$$
\frac{K_i}{Y_i} = \frac{K_i}{K_i^{\alpha} (A_i h_i L_i)^{1-\alpha}} = \left(\frac{K_i}{A_i h_i L_i} \right)^{1-\alpha}.
$$

This means we can write

$$
Y_i = \left(\frac{K_i}{Y_i}\right)^{\alpha/(1-\alpha)} A_i h_i L_i. 
$$

and that GDP per capita, $y_i = Y_i/N_i$, for a given country $i$ is

{: .important}
$$
y_i = \left(\frac{K_i}{Y_i}\right)^{\alpha/(1-\alpha)} A_i h_i \frac{L_i}{N_i}
$$

This tells us that several components explain GDP per capita in a country, and that these same components can help us understand why some countries are richer than others.

1. $(K_i/Y_i)^(\alpha/(1-\alpha))$ is the capital/output ratio, and we know that this reflects choices in the economy about how much to devote to building capital, $s_I$, as well as depreciation, population growth, and the growth rate of productivity.
2. $h_i$ is the measure of human capital or skills per person. 
3. $L_i/N_i$ is the employment ratio.
4. $A_i$ is productivity, or how well the country uses all of those factors of production. 

Each of those components could be a reason for why one country is rich while another is poor. But the raw numbers measuring each aren't that informative. The raw numbers are down in the final section of this page. So what we're going to do to clarify things is measure every country relative to some baseline. In this case we'll use the US as the baseline, but we could use any country. All we want to do is scale everything by a common reference point. 

For each country we look at the ratio $y_i/y_{US}$, or GDP per capita in country $i$ relative to the US. If that number is 0.78, then we know GDP per capita is 78% of that in the US. If we use the above equation to describe GDP per capita, we get that this ratio is

{: .important}
$$
	\frac{y_i}{y_{US}} = \left[\frac{(K/Y)_i}{(K/Y)_{US}}\right]^{\alpha/(1-\alpha)} \frac{A_i}{A_{US}} \frac{h_i}{h_{US}} \frac{(L_i/N_i)}{(L_{US}/N_{US})}
$$

That means we can use the raw data to calculate each ratio you see on the right-hand side. The combination of these gives us information on which component - capital, human capital, employment ratio, or productivity - is driving differences between countries.

## Results
This will make more sense by looking at the actual data. This table gives you the results for every country with sufficient data from 2019. It uses the [Penn World Tables](https://www.rug.nl/ggdc/productivity/pwt/) which are a standard source for cross-country information because they have explicitly done the price adjustments we talked about in the [Measuring GDP](https://growthecon.com/StudyGuide/gdp/gdp.html) section so that GDP is comparable across countries.

<iframe width="900" height="600" frameborder="0" scrolling="yes" src="../plotly/pwt-dev-acct.html"></iframe>

On the first page of that table you can see United Arab Emirates (or should). The number for "GDP p.c." is the ratio $y_i/y_{US}$. That number is 1.061, meaning that GDP per capita in UAE is a little higher (about 6.1%) than in the US. Why? Well, UAE has a capital/output ratio term that by itself would give them living standards 1.359 higher than in the US. UAE has a lot of capital. But in human capital, the number is only $h_i/h_{US} = 0.733$, so the rough skills of workers in the UAE is lower than in the US. The employment ratio of 1.236 means they have more workers per person, which helps to make them richer. And productivity is 1.066, so that $A_i$ is just a little bit higher than in the US. 

Note that these work together according to the equation above. Note that $1.061 = 1.359 \times 0.733 \times 1.236 \times 1.066$. 

## Raw data
The raw data necessary to make all the development accounting calculations is in the following table. The human capital per capita term is given directly by the Penn World Tables. 

<iframe width="900" height="600" frameborder="0" scrolling="yes" src="../plotly/pwt-dev-raw.html"></iframe>
