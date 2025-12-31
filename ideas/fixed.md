---
title: Fixed costs and productivity
parent: Ideas and Productivity
nav_order: 2
---

# Fixed costs and productivity
{: .no_toc }

1. TOC 
{:toc}

## Ideas and increasing returns
It's great that productivity is the set of non-rival ideas, and that this non-rivalry allows GDP per capita to grow over time. We all benefit from that. But the idea that productivity is non-rival doesn't explain *why* productivity goes up over time. One option is that we just keep getting lucky, and every now and then people come up with good ideas that make life better. There are probably a few cases of this that happen - there's a whole genre of TikTok videos built around "What, no way!" kind of innovations that seem obvious in retrospect.

But that's not a good description of the persistent increase in productivity that has occurred over decades and now centuries. Most new ideas take time and effort to come up with, or they take time and effort to implement. Remember, we're trying to explain the growth in real GDP per capita, and that means we're trying to explain why products tend to get more affordable over time. We need to understand why firms and entrepreneurs keep introducing these new ideas and making things more affordable to generate that growth. They are going to do this for a reason: profit. 

{: .assumption }
> Any new idea requires that someone incurs a *fixed cost* to either come up with it or implement it. That cost may be fixed from the perspective of any given innovator or entrepreneur, but might vary depending on conditions in the economy. It is a fixed cost in that firms have to incur it *before* they can sell any units of a product.

This isn't that stark of an assumption. It takes pharmaceutical companies lots of time and money to do the R&D to come up with a new drug. It takes Proctor and Gamble time and money to derive a new type of shampoo, brand it, market it, and convince vendors to stock it. It takes Apple time and money to code a new version of iOS and design a new chip that makes the new version of the iPhone that much better than the last. It takes a local restaurant time and effort to refurnish and prepare an old restaurant into a new place. It takes Panera time and effort to build a brand new location in a strip mall. From their perspective this is all up front cost they have to spend before they make a single sale. 

The presumption of fixed costs to coming up with ideas leads to a powerful conclusion. 

{: .important }
> Because firms face fixed costs to invent or implement ideas they have *increasing returns to scale*. Their average cost is greater than their marginal cost, and their average cost goes *down* as they produce more.

We can see these implications with some simple math. Consider the profits, $\Pi$, of a firm that produces some good. They can sell $Q$ units of the good for price $p$, and they have a constant marginal cost of $c$ to produce it. But, they have to pay the fixed cost $F$ in order to come up with the idea for the product in the first place, or to implement the idea. Their profits are

$$
\Pi = pQ - cQ - F.
$$

Those profits are only positive if

$$
(p - c)Q \geq F 
$$

which will be true *only* if $p \geq c$. If you look at their average cost

$$
AC = \frac{cQ + F}{Q} = c + \frac{F}{Q}.
$$

you can see that this is declining with production. The bigger the size of $Q$ - the more units they can sell - the cheaper each unit is to produce. But regardless, $AC > c$, meaning average costs are larger than marginal costs, meaning that the firm can only cover their average costs if they charge a price higher than marginal cost.

That markup of price over marginal cost is what pays them back for incurring the fixed cost (and possibly providing them even more). Charging a price higher than marginal cost implies a market with imperfect competition, meaning that other firms cannot or do not enter to drive the price down to marginal cost (as with perfect competition). 

{: .important }
> Because firms have fixed costs to invent or implement ideas their average cost is higher than their marginal cost and they will only operate if they can charge a price higher than their *marginal* cost, and therefore firms will only invent or implement ideas if there is imperfect competition.

Imperfect competition doesn't mean new firms cannot enter or will not enter, it just means entry won't drive the price down to *marginal* cost, just *average* cost. Think about situations where new entrpreneurs or firms are willing and able to enter. They will keep doing this until there aren't any profits to make anymore. Imperfect competition doesn't necessarily mean positive economic profits, either, it just means price greater than marginal cost.

What does that tell us? That tells us that the marginal firm, the one that just breaks even but still operates, will have

$$
F = (p - c)Q.
$$

From their perspective, with $F$ a given, this tells us that for this marginal firm there is a tight relationship between the amount they can sell $Q$ and the markup they can charge, $p > c$. The bigger the fixed cost, then either the bigger the markup firms need to charge, or the bigger the *market* they need to sell into (higher Q). 

## Fixed costs and market power
What we cannot tell from this analysis so far is how many firms, and ideas, get implemented or invented. We just know what the marginal firm will look like in terms of the last equation. To understand how many firms or ideas operate we have to specify more about how $F$ is determined and how $Q$, $p$, and $c$ are determined. Let's start with $F$. 

{: .assumption }
> Total fixed costs are proportional to the wage rate. 

That could be hiring R&D workers to run labs to develop a new drug, or it could be hiring architects and a developer to put up that new Panera location. Whatever the nature of it, we're going to assume that the fixed costs are proportional to the wage rate, $w$. Assume that the number of workers it takes to do all the required fixed work is $f$, then we're saying that

$$
F = w f.
$$

That means that if firms are entering until profits are zero, we have

$$
w f = (p-c)Q
$$

as the condition for entry. Now we'll see if we can rationalize this further by making some assumptions about how $p$, $c$, and $Q$ work. 

None of the assumptions that follow are necessary, and there are plenty of different ways we could set this up. Different exact models of growth will make different assumptions. But for the most part these are a good indicator of what is presumed.

1. The markup of price over marginal cost is fixed at $p/c = \mu$. That's a stark assumption about the pricing power that firms have. It's the kind of thing we might get in certain cases of monopolistic competition. It doesn't have to be strictly true, but it's a good starting point. 

Using this assumption we get that

$$
w f = (\mu-1)cQ
$$

is our entry condition. Now, to take the next step we can think about this combined term $cQ$, which is the marginal cost times the total units of output. In other words, this is a measure of total variable costs (the costs of production itself, excluding the fixed costs). We'll make the following assumption:

{: .assumption }
> Total variable costs $cQ$ are proportional to the scale of the economy, $L$, and inversely proportional to maginal cost, $w/A$,
> $$
> cQ = \frac{wL}{A}
> $$

You can think of this in a few ways. One, imagine that each person $L$ wants to buy one unit of the product, so $Q = L$, which might be a good assumption about something like a smartphone or a refrigerator. Producing that good requires hiring some labor at the rate $w$

XXXX


Given the assumption our entry condition is

$$
w f = (\mu-1)\frac{wL}{A},
$$

which reduces to

$$
f = (\mu-1) \frac{L}{A}.
$$

This gives us a clue that productivity, $A$, and scale, $L$, must be linked together somehow. 

## How fixed costs and productivity connect
The last thing we can do is think about how that fixed cost per firm, $f$, operates. The most obvious choice is to assume that this number is fixed at some level $\overline{f}$, or the number of workers it takes to do all the fixed work - R&D, scouting locations, setting up supplier networks, installing accounting software, etc. - of running a firm doesn't change with the state of the economy. 

If that's true then

$$
A = (\mu-1)\frac{L}{\overline{f}},
$$

or productivity must be proportional to the size of population. What this also means is that the growth rate of firms (or products or ideas) is just

$$
g_A \approx g_L
$$

or the growth rate of productivity must be about the same as the growth rate of population. The implication of fixed costs and increasing returns to scale is that the productivity level of the economy depends on the scale of the economy. 

{: .important }
> Because firms have increasing returns to scale due to fixed costs, and assuming firms enter until profits equal zero, the level of productivity in the economy depends on the scale of the economy, and the growth rate of productivity depends on the growth rate of that scale.

This is a pretty significant implication of two basic assumptions: fixed costs and free entry. We have not even, at this point, made a direct connection between firms and productivity. We never said entering firms used new or *better* ideas, or more productivity ideas, or anything. We just said firms would enter until the marginal firm earned zero profits. So how did we get from firms entering to the overall level of productivity depending on population size? 

To answer that let's go back to an individual firm's perspective on the entry condition. Think of firm $i$. They will enter if

$$
w f \leq (\mu - 1) c_i Q_i,
$$

meaning their fixed costs $w f$ are less than what they can earn selling $Q_i$ units of their product at a markup of price $\mu$ over marginal cost $c_i$. The fixed costs are not firm-specific (although we could play with that assumption), and the markup is not firm-specific (although we could play with that too).

From the firm's perspective their marginal cost is going to be something like

$$
c_i = \frac{w}{A_i}
$$

so that their condition is now

$$
f \leq (\mu - 1) \frac{Q_i}{A_i}.
$$

Given the markup they can charge, a firm will enter if they either can sell a lot of units $Q_i$ or if they can charge a very low price because they have a high $A_i$. The only firms that *can* or *do* enter are those with very low costs or with very high demand for their product. 

When we presume that firms enter until the marginal firm has zero profits, it only makes sense that the firms that do enter are those with relatively low costs or high demand. That is, firms that can generate a lot of economic value out of the factor inputs (labor in this case) available to the economy. In other words, entry must necessarily involve higher productivity, because if it did not, those firms would not have entered. 
