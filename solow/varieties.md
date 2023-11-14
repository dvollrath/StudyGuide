---
title: Varieties of Goods
parent: Production
grand_parent: Solow and Balanced Growth
nav_order: 3
---

# Varieties of goods
{: .no_toc }

1. TOC 
{:toc}

The Cobb-Douglas production function $Y = K^{\alpha}(AL)^{1-\alpha}$ just produces "GDP", or a homogenous lump of output. This production uses a homogenous lump of capital, $K$, and a homogenous lump of labor, $L$. The economy, of course, produces lots of types of goods (e.g. legal services, tractors, tacos) using lots of types of capital (e.g. barns, factories, office buildings, computers) and labor (e.g. teachers, nurses, electricians). Modeling all that variety is going to be hard to keep track of, so here we're going to build a simple model that involves one dimension of variety in an otherwise homogenous world. 

## Shopping at Target
In this varied economy there are going to be two types of firms. The first are final goods firms, which sell goods to consumers as .... final goods. That is, it sells things that you buy and use directly, but that you do not use to produce other goods or services. Things like soap, hairspray, toys, socks, bananas, and so on. Think of Target. Target (or Wal-mart or most grocery/big box stores) are selling final goods. GDP is be definition the value of all final goods and services, so in our economy sales at Target (and Wal-mart etc..) account for all of GDP. 

The value of the final goods sold by Target is determined like this

$$
Y = L^{1-\alpha} \sum_i^{N} x_i^{\alpha}.
$$

This is not like the Cobb-Douglas function we used before, but after we get through describing the intermediate goods firms, you'll see that it actually is. Target and other final good firms use labor, $L$, and they use a bunch of intermediate goods, $x_i$. There are $N$ of these intermediate goods, and $x_i$ measures the amount of each that it uses (e.g. how many cases of Diet Coke or pairs of socks). 

What's key about this function is that each of the $x_i$ amounts is raised to the $\alpha$ power. That means there are *decreasing marginal returns* to each one. As you increase the amount of $x_i$ that the final goods firm stocks, the contribution to GDP falls. Imagine that Wal-mart just kept piling up socks in their stores, at the expense of everything else. That wouldn't be nearly as attractive as the *variety* of goods that you normally expect at Wal-mart. Because of the decreasing returns to each variety, the final goods firm will produce the highest GDP if it has small amounts of lots of types of goods (N is high and $x_i$ is low) rather than large amounts of few goods (N is small and $x_i$ is high). 

Note that this production function is still constant returns to scale. If you double the amount of $x_i$ of each variety, and double the labor, you get double the GDP. 

That's the first kind of firm, final goods sellers. The second kind of firm are intermediate suppliers. These are firms that produce $x_i$ of each good. In some models you can look at later in the material we'll be specific about the market structure involved in determining how many firms produce this good and so forth, but for now just think that there is one single firm producing each of the $i$ goods. This means there are $N$ total intermediate suppliers. 

Those intermediate suppliers each produce their good (e.g. socks, Diet Coke) using capital, and only capital. It's a simplification - we could allow them to use labor - but each one has a machine producing it's good. How much capital do they use? Again, we'll write down models later to rationalize their capital use. But for the moment we're just going to assume that all these firms are identical and produce according to

$$
x_i = K_i
$$

or the amount of intermediates that spit out is proportional to the amount of capital they have. We don't have to make them exactly proportional, but adding in some term to scale this (like $x_i = B K_i$) doesn't change the important outcomes for this model.

## Capital and aggregate production
Those are our firms. We also have a total amount of capital, $K$, and that capital has to add up across firms

$$
K = \sum_i^{N} K_i.
$$

So far we've kept all these intermediate firms identical to one another, so in the end it makes sense that they all use an identical amount of capital, or

$$
K_i = \frac{K}{N}.
$$

Again, we can rationalize that with a model of how these firms compete, but for now there is nothing to distinguish firms from one another, so this should make some intuitive sense. 

Okay, put what we know together. Each intermediate firm uses $K_i = K/N$ capital, so each one produces $x_i = K / N$ in goods. The final good firm stocks those goods in their stores, meaning the total value of final goods is

$$
Y = L^{1-\alpha} \sum_i^{N} \left(\frac{K}{N})^{\alpha}.
$$

Inside that summation, everything is constant, so we've really got

$$
Y = L^{1-\alpha} \left(\frac{K}{N})^{\alpha} \sum_i^{N} 1.
$$

and then that summation reduces to $\sum_i^{N} 1 = N$ - it's just the sum of $N$ ones.

Our production function is now

$$
Y = L^{1-\alpha} \left(\frac{K}{N})^{\alpha} N
$$

oooooorrrrrr

$$
Y = K^{\alpha} (N L)^{1-\alpha}.
$$

With these varieties, we've ended up with something that looks exactly like what we've used before. The only difference is now that we've got some concept around what the productivity term is. Here, rather than a generic $A$ term, we've got $N$, the number of varieties. In this simple model, productivity is determined by how specialized or sub-divided our production gets. The higher is $N$, the better off we are.

The reason this occurs is because of the $\alpha$ on the $x_i$ terms in the final good firm. Each intermediate good not only has diminishing returns, but what this $\alpha<1$ implies is that these intermediate goods are all *kind of* substitutable. You go to Target and you want to buy a variety of goods (awesome!) but to some extent you'd substitute some of them (Diet Coke) for others (pretzels) if the cost of one (pretzels) got too high. 

At this point everything runs the same as in the Solow model. All we'd be doing is substitutes the growth rate of varieties, $g_N$, for the growth rate of productivity, $g_A$. In the endogenous growth section, we could think about the market structure that keeps these intermediate goods firms going (they have a monopoly over providing their good) and how that creates incentives for firms to create *more* intermediate goods. 

We can also use this structure to think about some aspects of development, in terms of how many varieties of goods they incorporate into their production structure. 
