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
> Because firms have fixed costs to invent or implement ideas their average cost is higher than their marginal cost and they will only operate if they can charge a price higher than their *marginal* cost, and therefore firms will only invent or implement new ideas if there is imperfect competition.

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

That means that if firms enter until profits are zero, we have

$$
w f = (p-c)Q
$$

as the condition for entry. Now we'll see if we can rationalize this further by making some assumptions about how $p$, $c$, and $Q$ work. 

None of the assumptions that follow are necessary, and there are plenty of different ways we could set this up. Different exact models of growth will make different assumptions. But for the most part these are a good indicator of what is presumed.

{: .assumption }
The operating profit share is defined as $s_{\pi} = (pQ - cQ)/pQ$. It is the share of total revenues, $pQ$, that are earned by the firm over the variable costs of production, $cQ$. 

Using this we get that

$$
w f = s_{\pi} pQ
$$

is our entry condition. Now, to take the next step we can think about this combined term $pQ$, which are the revenues of the entrant. We can make some assumptions about how those revenues will be determined

{: .assumption }
> Total revenues $pQ$ are proportional to total GDP, $PY$, and inversely proportional to the number of firms (or ideas or products) that already exist, $M$, so that
> $$
> pQ = \frac{PY}{M}
> $$

You can think of this in a few ways. One, you can think of total spending being split across all the $M$ possible products or firms or locations that exist. We aren't thinking of how much different entrants vary (e.g. Coca-Cola is a lot bigger than a local lawyers office, and both have more revenues than a taco truck) but just presuming that the more varieties or types of products there are, the lower the revenues of each. Second, you could imagine that it is only the best or top firms that sell products (e.g. Coca-Cola) but that the price they can charge is pushed down as more ideas or products (their own or possible competitors) enter. Either way, the important part is that revenues are proportional to the size of the economy (if people feel richer because PY is big, they'll spend more) and inversely related to the number of firms or ideas, $M$.

{: .assumption }
> The level of productivity, $A$, is proportional to the number of ideas or products or firms, $M$, such that $A = \theta M$. This means that the *change* in productivity is $dA = \theta dM$, or productivity goes up when new ideas or products or firms enter.

This productivity terms, $A$, is the same one we introduced in the Solow model and is the thing that allows for an increase in living standards along a BGP. We're saying that this $A$ is in some ways determined by the entry of new ideas or firms or products. Why? Look at the stories about why revenues are related to $M$. As new entrants increase $M$, they are providing more types of goods to consumers, and if consumers are splitting up their consumption across those new goods, they must find them valuable, increasing the utility they get. Or, the new entrants are pushing down the price for products, directly creating affordability growth without requiring more capital or labor. Either way, the measured productivity of the economy is going up. 

Given the assumptions our entry condition for new ideas, products, or firms is

$$
w f = s_{\pi} \theta \frac{PY}{A}.
$$

We have one last thing to add to this. That's that $wL = s_L PY$, or that total wages are a share, $s_L$, of total GDP, which we established already in the Solow model. That gives us

$$
w f = \frac{s_{\pi}}{s_L} \theta \frac{wL}{A}.
$$

What this does is allow us to cancel out the wage rate on both sides, meaning we can say that new products or firms or ideas enter the economy up to the point that

$$
f = \frac{s_{\pi}}{s_L} \theta \frac{L}{A}.
$$

If we assume that $f$ is fixed and the shares of GDP are fixed, then this says that $L$ and $A$ have to move together. This gives us a clue that productivity, $A$, and scale, $L$, must be linked together somehow. 

## How fixed costs and productivity connect
The last thing we can do is think about how that fixed cost per firm, $f$, operates. The most obvious choice is to assume that this number is fixed at some level $\overline{f}$, or the number of workers it takes to do all the fixed work - R&D, scouting locations, setting up supplier networks, installing accounting software, etc. - of running a firm doesn't change with the state of the economy. 

If that's true then

$$
A = \frac{s_{\pi}}{s_L} \frac{\theta}{\overline{f}} L
$$

or productivity must be proportional to the size of population. What this also means is that the growth rate of productivity is

$$
g_A \approx g_L
$$

or the growth rate of productivity must be about the same as the growth rate of population. The implication of fixed costs and increasing returns to scale is that the productivity level of the economy depends on the scale of the economy. 

{: .important }
> Because firms have increasing returns to scale due to fixed costs, and assuming firms enter until profits equal zero, the level of productivity in the economy depends on the scale of the economy, and the growth rate of productivity depends on the growth rate of that scale.

This is a pretty significant implication of a few basic assumptions: free entry and fixed costs. Those seem like reasonable assumptions about how firms (or ideas or products) would work. This connection works because the new entries are doing some combination of lowering prices (making existing things more affordable) or expanding the set of products (making more things affordable). Note that if new entrants didn't do this, then they wouldn't earn any revenues, and they wouldn't enter. We can allow that some entrants "guess wrong" and introduce new ideas or products that turn out to be unwanted, but so long as in expectation new entries are valued we're good.

The other big implication of these assumptions is that growth in productivity *requires* there to be imperfect competition of some kind. Growth means prices over marginal costs, which is not consistent with the perfect competition we talk about in intro Econ. 


