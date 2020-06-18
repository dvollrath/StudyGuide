---
title: Many goods
parent: Measuring GDP
nav_order: 2
---

# Many goods
{: .no_toc }

1. TOC 
{:toc}

## A more general formula
I wasn't kidding when I said that all the intuition you need for calculating real GDP indices can be found in the two-good case. This section should be seen solely as a supplement for people who are interested in seeing the more generic case. 

Several pieces of notation are necessary before starting. Let $p_{jt}$ be the nominal price of good $j$ at time $t$, and let $c_{jt}$ be the real quantity of good $j$ produced/consumed at time $t$. Let $e_{jt} = p_{jt}c_{jt}$ be the nominal expenditure on good $j$ at time $t$. Finally, let total nominal expenditure on the goods from time $t$, *valued at the prices from time $s$*, be denoted $E_{st}$. Putting this all together, we can establish the following equalities,

$$
E_{st} = \sum_{j \in J} p_{js} c_{jt} = \sum_{j \in J} \frac{p_{js}}{p_{jt}} e_{jt}.
$$

As an aside, the value $E_{tt}$ is therefore nominal expenditure on goods purchased at time $t$, valued at the prices of time $t$, or nominal GDP.

So how do we compare the output of products at time $a$ to the output of products at time $b$, where without any loss of generality we'll assume that $b$ comes after $a$? As we did with the two-good case, we want to value products from both periods in time $a$ prices, and then value products from both periods in time $b$ prices. 

The ratio of real output from period $b$ to real output from period $a$, using period $a$ prices, is

$$
\left(\frac{Y_b}{Y_a}\right)_{a} = \frac{\sum_{j in J} p_{ja} c_{jb}}{\sum_{j in J} p_{ja} c_{ja}} = \frac{E_{ab}}{E_{aa}}. 
$$

The alternative is to use period $b$ prices, or 

$$
\left(\frac{Y_b}{Y_a}\right)_{b} = \frac{\sum_{j in J} p_{bj} c_{bj}}{\sum_{j in J} p_{bj} c_{aj}} = \frac{E_{bb}}{E_{ba}}
$$

These both satisfy our requirement that we compare the quantities from periods $a$ and $b$ using a common set of relative prices. But they might differ because the relative prices of goods in $a$ could be different than in $b$. As neither one has a greater claim on the truth, we want to combine the information in both. 

A simple average will not work, because these are ratios, but a geometric average will work. We want a geometric average so that symmetric ratios (e.g. 2 and 1/2) result in an average ratio of 1, while an arithmetic average would give us 1.25.

$$
\left(\frac{Y_b}{Y_a}\right)_{F} = \left(\left(\frac{Y_b}{Y_a}\right)_{a} \left(\frac{Y_b}{Y_a}\right)_{b}\right)^{1/2} = \left(\frac{E_{ab}}{E_{aa}} \frac{E_{bb}}{E_{ba}}\right)^{1/2}
$$

where I used the subscript $F$ for this ratio because it is related to something called a ``Fisher Ideal Price Index'', which is described below. 

Note that the best we can do is create this ratio of real output between $b$ and $a$. There is no way to get an absolute number for real output, as it is meant to measure something like "living standards", which have no units. We might decide that a given year (e.g. 2009 or 2013) is our "base" year, and assign it a real index of 100, and use the ratios we calculate with other years to create index values relative to that.

This is what we're after, but the common way to arrive at these ratios involves deflating nominal GDP in given years by prices indices. What we can show is that this deflation process delivers exactly the same ratio we just calculated. The price deflator used is again a geometric average of two different underlying price deflators (Laspeyres and Paasche) that differ in which base period they use. 

The Laspeyres price index computes the ratio of prices in $b$ relative to $a$, using the quantities from $a$ (the prior period) as weights, 

$$
P^L_{ab} = \frac{\sum_{j \in J} P_{bj} c_{aj}}{\sum_{j \in J} P_{aj} c_{aj}}. 
$$

In contrast, the Paasche price index computes the ratio of prices in $b$ relative to $a$, using the quantities from $b$ (the later period).

$$
P^S_{ab} = \frac{\sum_{j \in J} P_{bj} c_{bj}}{\sum_{j \in J} P_{aj} c_{bj}}
$$

where I used $P^S$ to denote this because $P^P$ would be confusing. Again, there is nothing about the Laspeyres or Paasche that makes one better than the other. So again, we geometrically average them to get something called a Fisher Ideal Index,

$$	
P^F_{ab} = \left(P^L_{ab} \times P^S_{ab} \right)^{1/2} = \left(\frac{E_{ba}}{E_{aa}}\frac{E_{bb}}{E_{ab}} \right)^{1/2}
$$

Note that the Fisher price index for a given year in terms of its own prices is just equal to one, or $P^F_{aa} = 1$. You can probably already see some symmetry of the Fisher price index with the way we valued real GDP above. 

Now go back and rethink calculating the ratio of real GDP across periods $b$ and $a$. With some tedious algebra, you can show that

$$
\left(\frac{Y_b}{Y_a}\right)_{F} = \left(\frac{E_{ab}}{E_{aa}} \frac{E_{bb}}{E_{ba}}\right)^{1/2} = \frac{E_{bb}/P^F_{ba}}{E_{aa}}.
$$

This says that you can recover the real ratio by first deflating nominal GDP in period $b$ ($E_{bb}$) by the appropriate Fisher price index that uses period $a$ as a base ($P^F_{ba}$). This would give you something like the implicit nominal spending you'd have done for period $b$ products at period $a$ prices. Second, you divide this deflated nominal GDP by nominal GDP in period $a$ ($E_{aa}$), and this gives you the ratio of real GDP across the two periods. 