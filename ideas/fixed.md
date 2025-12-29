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
(p - c)Q > F 
$$

which will be true *only* if $p > c$. That is, the only way the firm will possibly be willing to operate is if the price is greater than the *marginal* cost. That markup of price over marginal cost is what pays them back for incurring the fixed cost (and possibly providing them even more). 

If you look at their average cost

$$
AC = \frac{cQ + F}{Q} = c + \frac{F}{Q}.
$$

you can see that this is declining with production. The bigger the size of $Q$ - the more units they can sell - the cheaper each unit is to produce.

Now, this might not always hold, but let's think about situations where new entrpreneurs or firms are willing and able to enter at will. They will keep doing this until there aren't any profits to make anymore. What does that tell us? That tells us that the marginal firm, the one that just breaks even but still operates, will have

$$
F = (p - c)Q.
$$

From their perspective, with $F$ a given, this tells us that for this marginal firm there is a tight relationship between the amount they can sell $Q$ and the markup they can charge, $p - c$. The bigger the fixed cost, then either the bigger the markup firms need to charge, or the bigger the *market* they need to sell into (higher Q). 

## Fixed costs and market power
What we cannot tell from this analysis so far is how many firms, and ideas, get implemented or invented. We just know what the marginal firm will look like in terms of the last equation. To understand how many firms or ideas operate we have to specify more about how $F$ is determined and how $Q$, $p$, and $c$ are determined. Let's start with $F$. 

{: .assumption }
> Total fixed costs are proportional to the wage rate. 

That could be hiring R&D workers to run labs to develop a new drug, or it could be hiring architects and a developer to put up that new Panera location. Whatever the nature of it, we're going to assume that the fixed costs are proportional to the wage rate, $w$. Assume that the number of workers it takes to do all the required fixed work is $r$, then we're saying that

$$
F = w r.
$$

That means that if firms are entering until profits are zero, we have

$$
w r = (p-c)Q
$$

as the condition for entry. Now we'll see if we can rationalize this further by making some assumptions about how $p$, $c$, and $Q$ work. 

These are all things we could modify in a more robust model, but they work for now:

1. Let $Q$ be proportional to the size of the population ($L$) divided by the number of *existing* firms ($A$), $L/A$. The more people there are, we can presume the more sales there will be. No, that doesn't have to be strictly true, but it's a good starting point. But those sales have to be divided up over all the firms out there, of which there will are $A$. Also doesn't have to be strictly true, but is a reasonable start.
2. Let the markup of price over marginal cost be fixed at $p/c = \mu$. That's a stark assumption about the pricing power that firms have. It's the kind of thing we might get in certain cases of monopolistic competition. Again, it doesn't have to be strictly true, but it's a good starting point. 
3. The marginal cost $c$ is proportional to the wage, $w$. That doesn't seem too crazy, as we'd expect production costs to be tied to wages in some way. As usual, this doesn't have to be true, but it's a good starting point.

What those baseline assumptions give us is the following

$$
w r = w(\mu-1)\frac{L}{A}
$$

which reduces to 

$$
r = (\mu-1)\frac{L}{A}.
$$

All this is saying is that for the marginal firms that enter and make zero profits, the fixed costs in terms of actual workers they have to hire to do the R&D or prep work ($r$) must be proportional to the total size number of possible workers/customers, $L$, relative to the number of competitors they are going to face, $A$. 

You can play with this to see a few things, depending on what you think is fixed or constant and what is not. If $r$ is higher, then the markup has to be higher to pay for that higher fixed cost, given the size of the market. If the size of the market $L/A$ is higher, then the fixed cost that can be profitable is higher, given the markup. OR, the markup has to be lower for any given size of $r$. All this condition is doing is pinning down the conditions on firms.

## How fixed costs and ideas connect
To close this out we can make some assumption about how that fixed number of workers per new firm, $r$, operates, and what this means for the number of new firms. To start, let's assume that this number is fixed at $\overline{r}$. If that's true, then it has to be that

$$
A = (\mu-1)\frac{L}{\overline{r}},
$$

or that the number of firms (or ideas or products) is proportional to the size of the population. Once we have a fixed cost involved, then the number of entities that can bear the fixed cost depends on the total size of the economy, which in this case is entirely proportional to the size of $L$. 

What this also means is that the growth rate of firms (or products or ideas) is just

$$
g_A \approx g_L
$$

or the growth rate of $A$ must be about the same as the growth rate of $L$. 

I measured the number of firms (or ideas or products) as $A$ on purpose, because I want you to infer that this is in fact a measure of productivity. Why is the "number of firms" or "number of products" a good measure of productivity? 

{: .assumption }
> If people treat products and firms as imperfect substitutes, then the number of products or firms will influence the level of productivity in an economy. 

We think people treat products, and the products of different firms, as imperfect substitutes because we see people spreading their expenditure shares out over the whole range of firms and products. Yes, products go away and firms disappear, but not so fast that we have a narrowing set of products and firms over time, and all that we do is buy lots of *one* single cheap thing. Instead, economies tend to spread their spending out over lots of products, indicating that they don't think they are substitutes. Some of this is obvious. You can't buy a refrigerator and drive it to work, and you can't keep your food safe and cold inside your car, so in that sense you need to spend money on both cars and refrigerators. But once we accept that products are imperfect substitutes, then having more options across products necessarily makes the real economy more productive. 

So assuming that products are imperfect substitutes, and assuming that fixed costs are well, fixed at $\overline{r}$, we come to the conclusion that productivity growth is proportional to *population* growth. You can view that as coming from two sources. First, a bigger population means more people available to do the fixed tasks required for new products and ideas - that could be R&D, or it could just be setting up accounting software or building out a retail space. Regardless, more workers means we can handle more fixed tasks. Second, a bigger population makes more *customers* available, which makes it possible to cover bigger fixed costs and introduce more ideas. 

{: .important }
> Because firms have increasing returns to scale due to fixed costs, the number of firms (or ideas or products) that are introduced is proportional to the scale of the population, and because people treat firms (or ideas or products) as imperfect substittutes this means the level of productivity is proportional to the scale of the population. 

It's very plausible to make all of this more complicated, and to have the fixed costs of firms depend on how many firms already exist ($A$) or to scale more severely with $L$ (e.g. it takes more fixed workers to build out a company that serves more local markets), but it is still possible in these cases to generate a stable relationship between $A$ and $L$, perhaps modified by some parameters. Once we accept that fixed costs lead to increasing returns to scale, the size of the population is in some sense fated to be the determinant of productivity. 

We can work with the connection of $A$ to productivity as well. Depending on how we set up the economy we can strengthen or weaken that tie between the number of firms or ideas and actual productivity. But so long as we have some kind of situation where customers treat the products or ideas (even in the case of current versus better ideas) as imperfectly substitutable, then there needs to be *some* connection of having new ideas and raising productivity. 

## What if fixed costs are more complicated?
Does it have to be that $\overline{r}$ is fixed? No. It's very plausible to make $r$ depend to some extent on the number of existing firms (or ideas or products) or depend on the number of workers itself in some ways. If you instead define

$$
r = \frac{\theta}{A^{\phi}}
$$

then you've assumed that as the number of existing firms gets larger, the fixed costs in terms of labor for each new firm is going *down*. $\theta$ here is some fixed parameter, and the value of $\phi$ turns out to be very important. 

If this is you vision of how fixed costs work for new ideas (or firms or products) then we get that

$$
\frac{\theta}{A^{\phi}} = (\mu-1)\frac{L}{A},
$$

or 

$$
\theta = (\mu-1)\frac{L}{A^{1-\phi}}
$$

which means that $A^{1-\phi}$ now has to be proportional to $L$. That is possible so long as $\phi<1$ and then we'd have that

$$
g_A \approx \frac{1}{1-\phi}g_L.
$$

The point is that so long as the fixed costs don't go down too fast, the economy has a rational and stable growth rate tied to the growth of scale. 

A different approach would be to think that scale gets harder to manage as $L$ gets bigger. Think of spatial costs to expanding firms or opening new branches. In that case you might presume that

$$
r = \frac{\theta L^{1-\lambda}}{A^{\phi}}
$$

or the fixed cost is increasing in the size of $L$. It takes more start-up folks to build out a company when you want to serve lots of local markets, for example. regardless, if that's your vision then we get

$$
\frac{\theta L^{1-\lambda}}{A^{\phi}} = (\mu-1)\frac{L}{A}.
$$

$$
\theta = (\mu-1) \frac{L^{\lambda}}{A^{1-\phi}},
$$

and the growth rate of productivity, $A$, is 

$$
g_A = \frac{\lambda}{1-\phi}g_L.
$$

