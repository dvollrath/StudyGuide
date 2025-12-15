---
title: Accounting by products
parent: Accounting for growth
grand_parent: Solow and Balanced Growth
nav_order: 1
---

# Accounting by product
{: .no_toc }

1. TOC 
{:toc}


## Accounting for growth
We can look more at how growth and affordability are related in the data from the United States. We have that GDP per capita grows according to 

$$
g_y = \sum_i \left(g_{Py} - g_{Pi} \right)\frac{C_i P_i}{PY}
$$

if we look at things from the affordability perspective, and this affordability occurs because of capital, labor, or productivity. 

The individual terms $g_{Py} - g_{Pi}$ refer to the affordability growth of a specific product $i$, and recall that this is the growth rate of nominal income per capita minus the growth rate of that product price. Affordability growth of product $i$ is the growth in the amount of product $i$ that the average person could purchase. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="../plotly/oecd-afford-growth.html"></iframe>

The figure plots the raw $g_{Py} - g_{Pi}$ terms by year for the United States, using 12 different product codes. Those codes are big groups like "Food" or "Clothing" or "Healthcare", not individual products like "12 oz. Diet Coke cans" or at that level of detail. The data here is binned up, meaning the figure doesn't show you every possible data point, but collapses them down into averages. Otherwise it is so messy you can't see what is going on. The average product group got more affordable over time. That occurred at about 4% per year in the 1970s, but only about 2% per year in the 2010s, consistent with a slowdown in overall economic growth. There are notable deviations. The financial crisis in 2008-2010 showed up as the average product getting *less* affordable as nominal incomes fell and prices did not. The big negative shock in 2020 is COVID, and then the 	huge spurt of affordability growth in 2021 is the rebound from the pandemic as income support took hold. This dataset doesn't go far enough to show the subsequent inflationary pressure and lower affordability growth afterwards. 

That's all great, but it doesn't quite give us the whole story, because it doesn't deal with the expenditure shares $C_i P_i / PY$. That is, not all products are created equal. Some products make up a lot more of our expenditure that others (healthcare, education for some people, rent) and so their affordability matters more to growth, as the equation suggests. How are those expenditure shares related to affordability?

<iframe width="900" height="600" frameborder="0" scrolling="no" src="../plotly/oecd-afford-share.html"></iframe>

The figure shows that product categories with bigger expenditure shares tended to have lower affordability growth. Again, this data is binned up to show you the rough relationship, and doesn't include every single data point. That means that the growth rate of GDP per capita, $g_y$, is weighted towards the products with slower affordability growth, and so the growth rate of GDP per capita is lower than it could otherwise be because we spend our money on things that are relatively less affordable. Economic growth is not just about the "supply side" - firms making decisions about what to make and what to charge - but about the "demand side" - consumers making decisions about what to buy with their money. 

Below is a table which contains raw data on affordability growth ($gAfford$) and expenditure share ($ShareVA$) for each of the 12 main product groups in the data, for the United States. You can spin through there to see how things evolved for a specific product group, or look at a specific year to see how products compared. 

<iframe width="900" height="600" frameborder="0" src="../plotly/oecd-afford-data.html"></iframe>
