---
title: The Schumpeterian model
parent: Incentives to innovate
grand_parent: Ideas and Productivity
nav_order: 3
---

# The Schumpeterian model
{: .no_toc }

1. TOC 
{:toc}

## Growth of the quality of goods
A different conception of what it means to have productivity grow is to focus on the improvement in the quality of those goods, rather than an expansion in the number of varieties of goods as in [Romer's model](romer.html). With innovation improving the quality of a good, the "old model" of the good will get replaced by the "new model" because the new model either provides more services to the user or is cheaper. This replacement of one model by another, which originators referred to as "creative destruction", is what gave the model its name, "Schumpeterian growth". 

[Aghion and Howitt](http://individual.utoronto.ca/zheli/A3.pdf) first put these concepts together in a coherent whole, and a paper by [Grossman and Helpman](https://www.researchgate.net/profile/Elhanan_Helpman/publication/4782959_Quality_Ladders_in_the_Theory_of_Growth/links/56adf60d08ae28588c619f4f.pdf) provided some useful infrastructure to understand how to fit that kind of growth into a broader model. There is also a nice overview that came out more recently by [Aghion, Akcigit, and Howitt](https://scholar.harvard.edu/files/aghion/files/what_do_we_learn_0.pdf) on the whole literature that Aghion and Howitt spawned. The opening and basic structure are quite readable.

Before we attach some mathematical structure, just focus on what the Schumpeterian model involves relative to the Romer model. Here, there is an explicit competition going on between the incumbent producer of a good and potential innovators. The innovators are actively replacing incumbents, something which in the Romer model didn't happen. Yes, as more varieties arrived in Romers model, that affected others, but they were not in direct competition, producing a similar intermediate good. In the Schumpeterian setting there is this competition, and that creates a new dimension to think about, which is the nature of the market power than an incumbent has, and that an innovator wants. For the Schumpeterian model, there is no strict monopoly in selling your product. Every incumbent was once an innovator, and the *old* incumbent that they replaced is still potentially out there, prepared to take back the business. So the pricing strategy of the current incumbent has to take that into account. Schumpeterian models allow for much richer industrial organization situations than in the Romer model. 

But ultimately with the Schumpeterian model we're after the same thing. Can we write down a coherent model of the economy that allows for this kind of competition between incumbents and innovators, which gives us a tangible way to understand the profits an incumbent earns, and which allows us to figure out the ultimate allocation of resources towards innovation? The answers will be yes (or I wouldn't be explaining this to you), and will look a *lot* like the answers from the Romer model, but there will be some extra features thrown in because of the competitive nature of firms trying to replace one another. 

## How productivity and final goods work
In the Schumpeterian model, we need to get our heads around a slightly different concept of productivity. Again, let's start with the same kind of final good production function as in Romer, with two twists:

$$
Y = L^{1-\alpha} A_j^{1-\alpha} x_j^{\alpha}.
$$

The first twist is that there is only one intermediate good in the economy, and we're going to leave that fixed (we can have lots of varieties at the cost of some extra algebra). If you aren't happy with that interpretation, then think of this as representing the "average" intermediate good.

The second and more important twist is that not only does the final goods firm use $x_j$ units of an intermediate good, but the productivity of that intermediate good in their production function is indexed $A_j$. $j$ index represents the "step" of the good on the "quality ladder" from the perspective of the final goods firm. A higher $j$ means a better quality good. 

What exactly does better quality mean? Larger A. And we'll assume that each time we go up a step on the quality ladder, productivity A improves by the same amount, $\gamma$. So $A_2 = (1+\gamma) A_1$, and $A_3 = (1+\gamma)A_2$, and so forth. Each time someone innovates, they push up the quality by the factor $\gamma$. 

Just like with the Romer model, we need to know the demand for the intermediate good. Without writing out the whole profit-maximizing problem, we know this will be the case where the marginal product of $x$ is equal to the price $p_j$ that the supplier of intermediate good $j$ sells to the final goods sector. 

$$
\alpha L^{1-\alpha} A_j^{1-\alpha} x_j^{\alpha-1} = p_j.
$$

## The intermediate supplier
The supplier works the same way as in the Romer model. They own the rights over a quality level $j$ of the intermediate good, and try to maximize their profits by selling it to the final goods firm. Because they are a monopolist they take into account the effect of their pricing decisions on the final goods firm. The produce a unit of $x_j$ using a unit of capital, so $x_j = K_j$. 

Their profits are

$$
\pi = p_j x_j - R K_j = \alpha L^{1-\alpha} A_j^{1-\alpha} x_j^{\alpha-1} x_j - R x_j
$$

Solving this involves setting their marginal revenue equal to their marginal cost, which gives us

$$
\alpha \left[L^{1-\alpha} A_j^{1-\alpha} x_j^{\alpha-1}\right] = R.
$$

Again, the thing inside the brackets is just the price, so we get that

$$
p_j = \frac{1}{\alpha}R
$$

or that the price is marked up over the marginal cost (R). 

That assumes that the firm producing quality $j$ of the good is the *best* quality firm. Note that the price being charged is independent of the quality, $A_j$. So from the final good firm perspective, why buy anything that isn't the best quality? 

There is a secondary consideration we glossing over here, however. Let's say you are the recent incumbent, and you have not the highest quality intermediate, but the next to highest quality (e.g. your $A_{j-1}$ is less than the best quality $A_j$.) You *could* lower your price and charge less of a markup, and perhaps steal back the business from the high quality firm. Then the question becomes how low you have to lower the price to induce the final goods firm to use your less-the-best intermediate? If the value of $\gamma$ is large enough, then it will be the case that even if the second-best firm charges exactly the marginal cost, R, the final good firm still won't buy their product. We're assuming that the size of $\gamma$ is "drastic" and that innovating makes it ludicrous to buy the old version. More nuanced models have small jumps, and more interesting strategic considerations between the firms. 

## Aggregate outcomes
Again, find the aggregate outcomes. The intermediate good supplier is the only provider of the best-quality intermediate, so all the capital is used by them. That means $x_j = K$. Put this in the production function and you get

$$
Y = K^{\alpha} (A_j L)^{1-\alpha}
$$ 

and we are back to our standard Cobb-Douglas. This is good because it keeps intact the overall structure of the Solow model. 

What about the distribution of output? Again, the final goods firms are assumed to be competitive, with zero profits, so it must be that $wL = (1-\alpha)Y$, and that the share of output going to labor is $s_L = (1-\alpha)$. That leaves $\alpha Y$ available as revenues to the intermediate good firm which are used as payment to capital or as profits. 

The ratio of capital payments to total revenues of the intermediate good firm is

$$
\frac{R K}{p_j K} = \frac{R}{p_j} = \alpha.
$$

Similar to the Romer model, we get that

$$
RK = \alpha^2 Y.
$$

That leaves profits for the single intermediate good firm as

$$
\pi_j = \alpha(1-\alpha)Y.
$$

They earn $(1-\alpha)$ of the $\alpha Y$ in revenues as profits. Note that firm $j$ gets *all* the profits in the economy, because it is the only provider. They do not split this across varieties (because there is only one variety). Thus the share of profits to an innovator is $s_{\pi} = \alpha(1-\alpha)$.

## Innovation value
We've got the information to value a new innovation that replaces an old incumbent. This again will be a stream of profits over time. However, now we've got to allow for the possibility that someone else will come along and replace any innovator in the future. Each innovator only gets to be the innovator for a little while before some new person comes along and replaces them. 

Jumping into our valuation, it now looks like this:

$$
V = s_{\pi} Y_0+ (1-\mu)\frac{s_{\pi} Y_1}{1+r} + (1-\mu)^2\frac{s_{\pi} Y_2}{(1+r)^2} + ....
$$

where we have added this extra $(1-\mu)$ term. $\mu$ is the probability that someone *else* innovates in that period and replaces you as the incumbent. So $1-\mu$ is the probability that you do not get replaced. 

Similar to Romer, we plug in the growth rate of GDP and pull out the common terms

$$
V = s_{\pi} Y_0 \sum_{t=0}^{\infty} \frac{(1+g_A+g_L)^t(1-\mu)^t}{(1+r)^t}.
$$

Simplify, 

$$
V = s_{\pi} Y_0 \sum_{t=0}^{\infty} (1+g_A+g_L-\mu-r)^t,
$$

and you end up with

$$
V = s_{\pi} Y_0 \frac{1}{r + \mu -g_L-g_A}.
$$

The valuation of an idea is slightly different now that in a Romer setting. The two new elements are $\mu$, the probability of replacement. As this goes up, the value of an idea drops, because you won't be the incumbent for as long. On the other hand, because you are the only provider, the value of $g_A$, which dictates how fast the economy grows, makes the value of an idea higher. The faster aggregate GDP grows, the more valuable it is to take a share as profits.

## Innovation effort
Innovation effort is going to work similar to the Romer, setting the marginal benefit of research against the marginal cost (the wage). But we have to stop for a moment to be clear about how the research process works. 

We already said that any innovation implies that $A$ goes up by a factor of $\gamma$. That is the growth rate of A from innovation to innovation, but it is not the growth rate of productivity *over time*. The growth rate of productivity over time depends on how *often* those innovations happen. So when we talk about research here, we're really talking about determining the pace or speed of new innovations, each of which have a size of $\gamma$. 

This means our normal accumulation equation for ideas is not about the flow of ideas, but about the probability that a new innovation occurs. Remember that $\mu$? That's the probability that an innovation occurs in a period, and we didn't define where it comes from. But now we'll say that it is

$$
\mu = \theta \frac{R^{\lambda}}{A^{1-\phi}}.
$$

That means the growth rate of *productivity*, which is the probability of an innovation times the size of that innovation, is

$$
g_A = \gamma \mu.
$$

Back to the choice of research work. The marginal benefit from a given researcher is now the value of an innovation, V, times the probability of an innovation, $\mu$, divided by the number of researchers, $R_0$. The marginal cost is again the wage, $s_L Y_0/L_0$. 

Put this all together for

$$
s_{\pi} Y_0 \frac{1}{r + \mu -g_L-g_A} \frac{\mu}{R_0} = s_L \frac{Y_0}{L_0}. 
$$

Cancel the $Y_0$ and re-arrange to 

$$
\frac{R_0}{L_0} = \frac{s_{\pi}}{s_L} \frac{\mu}{r-g_L + \mu(1-\gamma)}
$$

where I've plugged in the fact that $g_A = \gamma \mu$. 

It's similar in form to the Romer model, but with a few additional factors to consider. Note that the larger the jump in productivity, $\gamma$, for a given innovation, the more research work. That is because larger jumps in productivity mean more growth in GDP over time, which means more profits. 

The value of $\mu$ is interesting here, because it shows up twice, and with conflicting effects. The $\mu$ in the numerator captures the fact that if the probability of innovation gets higher, it pays to employ more researchers, as they will be more likely to invent something allowing you to become the incumbent. 

On the other hand, there is a $\mu$ in the denominator, and that captures the fact that the probability of innovation *also* captures how easily you will be replaced as the incumbent. If you work through the math, the positive effect of $\mu$ outweighs the negative, and so if $\mu$ goes up because innovation gets easier, that will promote more research. This occurs because innovation today yields profits *now*, while the replacement that occurs will take place in the future, which is discounted to some extent. 

## Lessons
Like the Romer model, there are a lot of mechanics. But focus on the important elements here for thinking about growth. 

1. You can have an economy where firms replace one another as providers to the final goods firms, and still have a coherent aggregate production function that helps us match the BGP facts.

2. Economic profits earned by one part of the economy (intermediate firms) imply that the returns to rival inputs (capital in this case) do *not* earn their marginal product. 

3. The nature of competition between incumbent and past incumbents matter. In the model here the innovations were drastic and so the past incumbent could not compete - but that is only one possibility. One can make the Schumpeterian model richer by allowing smaller innovations, and having competitive past incumbents keep the pressure on incumbents. If this is the case, this puts downward pressure on $s_{\pi}$, with consequences for the amount of research done.

4. The accumulation of ideas does not have to directly imply the accumulation of productivity. We can talk separately about the accumulation of *ideas* ($\mu$) and the *size* of their effects ($\gamma$). 


