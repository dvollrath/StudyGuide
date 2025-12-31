

The general result of the prior sub-section indicates that the profits behind innovation necessitate some deviation from perfect factor markets. But that general result doesn't inform us about how much research and development effort will be put in. We can try and be a little more specific about that by thinking about the incentives for innovators. In the textbook there are very specific models (Romer, Schumpeter) about how those profits arise, what the imperfect markets look like, and what this does to R&D choices. Here we're going to treat things from a slightly higher level.

Think of things from the perspective of a firm deciding whether to employ some workers in R&D, in the hopes of generating an innovation that will in turn generate profits. Our basic economic intuition is that they will employ R&D workers until the marginal benefit of R&D (the extra profits they could earn from their innovations) is equal to the marginal cost of those R&D workers, which is their wage. 

We can use that condition to come up with a rough idea of how many R&D workers, R, firms will employ relative to the number of regular workers, L. To do that we have to describe the marginal benefit, profits, and the marginal cost, the wage. 

Start with the profits. Let $s_{\pi} = \Pi/Y$ be profit's share of total GDP. Those are the total profits available to earn given the market power granted to innovators through IP rules and/or other means of making ideas excludable. To keep our lives simple, let's also assume that the profit each separate idea earns is equal to the total profits divided by the level of productivity, A. This is like saying that the size of productivity is exactly equal to the number of ideas. That isn't true, of course, but as long as they are proportional in some way, we are good. Put that together and we have a profits per idea in some given period $t$ of $s_{\pi} Y_t/A_t$. 

Hold onto that for a moment. Now, how many ideas would any given researcher - if hired - produce? Well, we modeled the total flow of ideas with $dA = \theta (s_R L_{t})^{\lambda} A_t^{\phi}$. First, I'm just using $s_R$ here to denote the share of R&D workers in the total stock of workers $L_t$. Second, that this isn't the growth rate of ideas, this is the raw change in ideas given some total number of researchers and an initial value for productivity. 

The number of *new ideas per researcher* is this divided by $s_R L_t$, or $dA/s_R L_t$. How many ideas can a firm get from each R&D worker they employ.

Now hold onto *that* for a moment. What is the wage rate that you have to pay a researcher? We're assuming they are similar to everyone else, so they earn the regular wage. The wage per person is the total share of GDP earned by labor divided by the number of workers, or $w_t = s_L Y_t/L_t$. Note that I'm ignoring here any effect of moving researchers out of the labor force (which would presumably lower the number of workers and push wages up), because the fraction of R&D workers relative to the workforce is so small that it cannot matter that much. When we use the Cobb-Douglas production function, we assert that $s_L = (1-\alpha)$, but here we're just keeping things more general.

Okay, we've got three pieces of information to work with. Put them together into this equilibrium condition,

$$
\frac{s_{\pi} Y_t}{A_t}\frac{d A}{s_R L_t}  = \frac{s_L Y_t}{L_t}.
$$

The left-hand side has the profits-per-idea times the ideas-per-researcher, or profits-per-researcher. The right-hand side has wages per worker, and as we said above we expect these to be equal so that the marginal benefit to a firm (the left) is equal to the marginal cost (the right). This equation allows us to solve for the size of $s_R$. 

Stary by noticing that the $Y_t$ terms cancel. This is a little bit of a fudge, by the way. Note that the profits you earn for a new idea probably only come in the *future* (and we should have something like $Y_{t+1}$ on the left side), but we're acting as if they arrive immediately. We can allow for that forward-looking behavior, and in some cases that will become interesting. But for starters we're ignoring it. 

Cancel the $Y_t$ terms as well as the $L_t$ terms and then re-arrange the equation to

$$
\frac{s_{\pi}}{s_L}\frac{dA}{A_t}  = s_R.
$$

We've got what we want on the right-hand side now, the ratio of researchers to workers. And we can make one more substitution on the left. Note that we have the ratio $d A/A_t$, which is just the growth rate of productivity. We can denote this $g_A$ to keep things simpler, and find that

$$
s_R = \frac{s_{\pi}}{s_L}g_A.
$$

What does this tell us? It says that the number of people employed as researchers, relative to the labor force, depends on two things. 

1. Profits relative to the cost of labor. The ratio $s_{\pi}/s_L$ tells us about the benefits of innovation relative to the costs. The larger this ratio is, the more you get out of a researcher, in short. So the higher this ratio, the more researchers will be employed. 

2. The growth rate of productivity. The $g_A$ term is telling us how fast ideas arrive. If this is high, then it pays to invest in researchers, as they are likely to deliver a lot of new ideas to you, and hence profits. But if this is low, why bother hiring them? 

Changes in IP laws or rules adjust the size of $s_{\pi}$ relative to $s_L$, and thus affect the size of the research effort over time. The argument for IP is that by protecting the profits of innovators, it induces more innovation (higher $s_R$). The counter-argument is that by raising $s_{\pi}$ relative to $s_L$, the share of GDP going to workers (or capital) is going down, and those workers are thus getting a smaller share of what may be a bigger pie. Whether that is good for the workers depends on whether the boost to innovation outweights the smaller slice.

This gives us one way of interpreting the growth of research effort over time in most developed countries, and in particular the growth in the fraction of workers involved in research. Our little model here suggests that this must have involved either an increase in the fruitfulness of research ($g_A$ going up) or in a larger payoff to innovation ($s_{\pi}$ going up). 


## Economic implications
Instead of getting into the weeds of IP here, let's work out some of the economic implications of having IP in order to generate growth. Here the Study Guide deviates from the textbook some, and tries to present a rough overview of the R&D decision process that firms use to capture the profits that come from IP. 

First, from a pure accounting perspective, remember that we can always break GDP down into three income streams,

$$
Y = wL + RK + \Pi
$$

where $wL$ are the wages paid to labor, $RK$ are the returns paid to capital, and $\Pi$ are the total economic profits paid out. 

Second, a constant returns to scale production function (like the Cobb-Douglas) has the [interesting property](marginal.html) that

$$
Y = MPK \times K + MPL \times L.
$$

Third, we just said above that productivity growth could only occur if there were economic profits that got paid to innovators, or $\Pi >0$. 

Put all three of these together, and you get an intriguing result. It *must* be that $w \leq MPL$ and/or $R \leq MPK$. How do you find this? The first two properties imply that $wL + RK + \Pi = MPK \times K + MPL \times L$. If $\Pi>0$, then $wL + RK < MPK \times K + MPL \times L$, and the only way for that to work is if either (or both) the wage is less than the MPL or the rental rate is less than the MPK.

Growth requires innovation, which requires profits, which requires that rival inputs like labor and capital are paid *less* than their marginal product. This is important enough to warrant a little label

{: .important }
Economic growth in a constant-returns to scale economy implies that rival inputs are not paid their marginal products.

Based on this, rival inputs like labor and capital need to be "underpaid" relative to their contribution to producing GDP so that we can provide incentives to innovators to come up with better ways to do things. That doesn't mean this must be unfair to labor or capital. It depends on their outlook. It may be that labor and capital are agreeing to take a smaller slice of the pie, in return for the pie growing even faster over time.

Don't endow this with some kind of mystic truth. It is a statement that *if* the economy is constant returns to scale, and *if* innovation requires profits, then rival inputs cannot be paid their marginal products. Those assumptions could be wrong. 

But let's operate as if the assumptions are true, and think about more possible consequences. We've taken the supply of labor and capital to be fixed, for the most part. That is, we haven't provided any model of why people would supply labor or capital to the market, they just do. But it isn't hard to imagine that the supply of these rival inputs would depend on what they are paid. So if wages and capital rents are pushed *down* in order to make room for profits for innovators, then this would presumably push *down* the willingness of people to supply labor and capital. 

If this is true, then allowing profits for innovations doesn't just change the size of the slices of pie, it makes the pie smaller today. Again, this might be worth it. We might accept a smaller pie today, and labor and capital might accept smaller slices of that smaller pie today, if in return we get more innovation and a rapidly growing pie over time. 



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



What about higher productivity as lower marginal costs? Then 

r = (p-c)Q

gives you 

w r = c(p-c)L

and 

w r = c/A (p-c) L

and we're right back where we started. 
