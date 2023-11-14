---
title: The Romer model
parent: Incentives to innovate
grand_parent: Ideas and Productivity
nav_order: 2
---

# The Romer model
{: .no_toc }

1. TOC 
{:toc}

## Growth of new varieties of goods
Paul Romer developed a theory of innovation and growth in two main papers, the first in [1986](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.589.3348&rep=rep1&type=pdf) and the second in [1990](http://web.stanford.edu/~klenow/Romer_1990.pdf). The 1990 paper has, I think, a very readable introduction and section on non-rivalry that underpins Romer's whole concept of growth. These papers were two key elements of creating the field of endogenous growth theory, and are in large part responsible for Romer's recent Nobel prize. 

So what did Romer do specifically in this paper that differs from the general model we've used so far? The key difference is that Romer provides a precise definition of how to interpret an "idea" and therefore how that relates to the concept of productivity. By making this definitive, it allows Romer to write down a much more precise mathematical model of economic growth. One part of that precise mathematical model was a much more nuanced description of the choice about how many people to allocate to doing R&D. The toy model covered [here](incentives.html#the-amount-of-research) is a stripped-down version of what Romer did.

On to specifics. Romer's model conceived of ideas as recipes for new products or varieties of products. So the value of $A$ - what we call productivity - is a count of the number of types of products available. By itself, that doesn't do much for us. 

Romer set up a production structure just like the varieties [model of production](https://growthecon.com/StudyGuide/gdp/varieties.html). All the interpretations are the same as in that section, only Romer called the number of varieties $A$ rather than $N$. Where Romer expands on that simple model of production is in describing the economics behind how intermediate good firms act, how much they charge, and so forth, in order to develop a means of measuring how big their profits were. 

So step back in that model for a moment and as how much of each variety does the final good firm (e.g. Target) want to buy from intermediate suppliers? Well, here Romer assumes that the final goods firm is a normal profit-maximizing firm, and takes the price of each of those varieties as given. In other words, final goods firms are not so big that their orders change the price they pay for intermediates. (This is arguable for a place like Wal-mart). 

Think about the final goods firm profits

$$
\pi = L^{1-\alpha} \sum_{j=1}^A x_j^{\alpha} - w L - \sum_{j=1}^A p_j x_j.
$$

Their revenues are the value of output they produce, Y. There is no price here because we're using the price of GDP as the numeraire. Their costs consist of labor and they have to pay $p_j$ for each unit of $x_j$ that they purchase. 

Think of the normal condition for a firm like this. They'd set the marginal revenue of $x_j$ equal to the marginal cost of $x_j$. That condition is as follows (take the derivative of the profit function with respect to $x_j$),

$$
\alpha x_j^{\alpha-1} L^{1-\alpha} = p_j.
$$

And for the final goods firm, we've got everything we want for the moment. This last equation tells us the demand function of the final goods firm for good $x_j$. It tells us how much the firm would purchase at any given price $p_j$. 

## Intermediate good firms
Hold onto that for the moment, and now let's think about these suppliers. Suppliers are going to operate very simply. Their production function is going to depend *only* on capital, no labor. This is obviously unrealistic, but adding in labor for them complicates things without generating any differences in the results. So their production function looks something like this

$$
x_j = K_j
$$

where $k_j$ is the amount of capital that supplier firm $j$ uses. 

The profits of an intermediate good supplier are as follows

$$
\pi_j = p_j x_j - R K_j
$$

where their revenues are the price of their good times the quantity sold, but their cost is the amount of capital they use, which has a rental rate of R. 

These supplier firms *also* want to maximize profits. But they are very different that the final goods firms. These supplier firms are *monopolists* in providing their intermediate good. Coca-cola, for example, is a monopolist in supplying Diet Coke. Yes, people can buy other soda at Wal-mart, but no one else can sell Diet Coke. Same story for all the other products Wal-mart carries, in this model. 

This means that the supplier firms understand the effect they have on $p_j$. They know that if they raise their price, the final good firm will reduce their order, and vice versa. So just like any monopolist, they take this into account to maximize their *own* profits. 

In math, this means that they use their knowledge of the demand curve from the final goods firm above, and "plug it in" their profit function:

$$
\pi_j = \alpha x_j^{\alpha-1} L^{1-\alpha} x_j - R x_j
$$

where I've also replaced $K_j$ with $x_j$ based on the production function. Now, the choice of the intermediate good firm is to maximize their profits by choosing the optimal amount to produce, $x_j$. In principle that is to set the marginal revenue equal to the marginal cost. In math that is

$$
\alpha \left(\alpha x_j^{\alpha-1}L^{1-\alpha}\right) = R.
$$

This looks like a bit of a mess. But that is because it packs together a few things. What is the term in the parentheses? That is just the price that the final goods firm pays for $x_j$ units of goods. So this profit-maximizing condition for the supplier is equivalent to saying

$$
\alpha p_j = R
$$

or

$$
p_j = \frac{1}{\alpha} R
$$

The price that the supplier charges is equal to $1/\alpha$ (a number larger than one) times R. This means that the supplier is charging a *markup* over its marginal cost (R). Because it is a monopolist, it takes into account the demand of the final goods firm, and uses that to reap some profits. Those profits are going to end up being the incentive to innovate.

## Aggregate outcomes
We know now how the final goods firm demands goods, and we know how the supplier supplies them. Now we want to put this all back together to see what it means for the aggregate economy. 

First, note that every supplier charges the same price. And then notice that the demand curve for every intermediate good is the same. This means that every supplier provides exactly the same amount of intermediate good. This isn't necessary, but saves us some tedious algebra. All the $x_j = x$. And remember that all intermediate goods firms produce using capital only. With a given capital stock of $K$ in the economy, it has to be that

$$
K = \sum_{j=1}^A x_j = \sum_{j=1}^A x = Ax.
$$

In turn, this implies that each variety produces $x = K/A$ units. The more varieties, the smaller the amount of each that is produced, given a capital stock. 

Second, using our knowledge that $x = K/A$ for all varieties, go back to the final goods firm production function and plug in,

$$
Y = L^{1-\alpha} \sum_{j=1}^A (K/A)^{\alpha} = L^{1-\alpha} A (K/A)^{\alpha} = L^{1-\alpha} K^{\alpha} A^{1-\alpha}.
$$

Look familiar? If you just re-arrange this a little you get

$$
Y = K^{\alpha}(AL)^{1-\alpha}
$$

or our standard Cobb-Douglas production function. This wasn't luck, Romer designed the model to come out this way. But nevertheless the cool part is that we can have a rich description of how suppliers and final goods producers work (closer to reality) while still maintaining the overall aggregate production structure that we're used to. 

Here, Romer has provided a concrete interpretation of what A stands for - the number of intermediate goods. And as we suspected, the larger is A, the more productive is the economy. That is because Romer assumed that these varieties have diminishing marginal products by themselves, and thus the final goods firm (or consumers) are better off when they have lots of types of goods to purchase. 

The third thing we want to establish in the aggregate is the distribution of that GDP across wages, rents to capital, and profits. 

Start with the final goods firms, and while we didn't say this before, let us assume that *they* are competitive with one another (Walmart and Target compete), and therefore earn zero profits. Remember from [this section](costshares.html) that the share of costs associated with an input like labor is equal to the elasticity. So for final goods firms, $1-\alpha$ of their costs will get paid to wages. Given that they are competitive and have zero profits, their costs = output, and so total wage payments will be

$$
wL = (1-\alpha)Y.
$$

In our terminology from before, this means that $s_L = (1-\alpha)$. This means that there is $\alpha Y$ of GDP is used to pay for intermediate goods. 

Let's jump over to the suppliers of intermediate goods. What fraction of their output, $p_j x_j$, is used to pay for capital goods? They pay $R x_j$ for capital, so we have

$$
\frac{R x_j}{p_j x_j} = \frac{R}{p_j} = \alpha.
$$

In other words, the fraction $\alpha$ of intermediate good revenues are used to pay for capital goods. That means $(1-\alpha)$ of their revenues are kept as profits. 

Put all this together. If $\alpha Y$ is the amount spent on intermediate goods (their revenues), and $\alpha$ of that is spent on capital goods, then

$$
RK = \alpha^2 Y.
$$

As an aside, note that the marginal product of capital in the economy is $MPK = \alpha Y/K$, so we get that $K\times MPK = \alpha Y$. Thus it has to be that $R < MPK$, or the return on capital is less than its marginal product.

This means that total profits in the economy are

$$
\Pi = (1-\alpha)\alpha Y,
$$

because $(1-\alpha)$ of intermediate revenues are set aside for profits, and intermediate good firms get $\alpha Y$ in revenue. The share of profits in GDP is thus $s_{\pi} = (1-\alpha)\alpha$.

Last (I swear), what are the profits for any individual intermediate firm? Since there are A of them, and they are identical, it must be that

$$
\pi_j = (1-\alpha)\alpha \frac{Y}{A}.
$$

## Innovation value
We're not done! There's more. Using all the machinery in place here, we can come up with the economic logic behind choosing to innovate or not. The first part of that is to establish what the value of an innovation will be. Let's call that value V, and think of V as the amount you could see a patent or copyright for. Remember an innovation here is a new product line, and since Wal-mart and Target value variety, if you come up with a new product line, they will carry it and pay your for it, and you will earn profits every period of time after you introduce that product. 

How do we value a stream of profits over time? We can look at the present discounted value. 

$$
V = \pi_0 + \frac{\pi_1}{1+r} + \frac{\pi_2}{(1+r)^2} + ....
$$

where $\pi_0$ are the profits you earn immediately, and then $\pi_1$ and so on are the profits in each future period, discounted back to today's terms by the interest rate $r$. 

We can plug in a few items here to make sense of this. First, we know how profits are formed for a given firm, so we have

$$
V = s_{\pi} \frac{Y_0}{A_0}+ \frac{s_{\pi} Y_1/A_1}{1+r} + \frac{s_{\pi} Y_2/A_2}{(1+r)^2} + ....
$$

and you can see that the value of the idea or innovation depends on how fast GDP grows over time (because you get a cut of it as an innovator) relative to how fast A grows over time (because that implies sharing with others). 

To make headway, we can work on the assumption that we are on or close to a balanced growth path. Along a balanced growth path A should be growing at a constant rate, $g_A$. Yes, we know that this is based on the growth rate of R, but for the moment just think of an innovator who doesn't really worry about that. With A growing at the rate $g_A$, that means that total GDP grows at the rate $g_A + g_L$, which we discussed way back in the Solow model. GDP grows faster than the number of innovations, so in principle the flow of profits is increasing over time. We can put this into our valuation.

$$
V = s_{\pi} \frac{Y_0}{A_0}+ \frac{s_{\pi} Y_0(1+g_A+g_L)/A_0(1+g_A)}{1+r} + \frac{s_{\pi} Y_0(1+g_A+g_L)^2/A_0(1+g_A)^2}{(1+r)^2} + ....
$$

and this is looking messy, but it is getting easier to deal with. Pull out all the common elements for the different terms

$$
V = s_{\pi} \frac{Y_0}{A_0} \left[ 1+ \frac{(1+g_A+g_L)/(1+g_A)}{1+r} + \frac{(1+g_A+g_L)^2/(1+g_A)^2}{(1+r)^2} + ....\right]
$$

and notice that everything inside the brackets is just a summation. We can write this as

$$
V = s_{\pi} \frac{Y_0}{A_0} \sum_{t=0}^{\infty} \frac{(1+g_A+g_L)^t}{(1+g_A)^t(1+r)^t}.
$$

That stuff inside the summation is a mess, but because we're talking about a lot of small growth rates and interest rates, we can simplify that a little. 

$$
V = s_{\pi} \frac{Y_0}{A_0} \sum_{t=0}^{\infty} (1+g_L-r)^t.
$$

The value of that summation, assuming that $r>g_L$, is

$$
V = s_{\pi} \frac{Y_0}{A_0} \frac{1}{r-g_L}
$$

which means the value of the new idea or product is something like the infinitely discounted value of the initial profits, with the discount rate being $r-g_L$. 

## Innovation effort
Are we done? No! We know the value of patent or idea, but now we want to use that to figure out how much effort is put into doing research. We're back now to the concepts used in to discuss this topic of selecting research effort, $R_t$, [here](incentives.html). 

What is the marginal benefit of hiring a new researcher at time 0? The value of each idea they come up with is V. The number of ideas they come up with is the total flow of ideas divided by the number of researchers. Romer uses a similar model to ours (well, we use one similar to his) with $\Delta A_{1} = \theta R_0^{\lambda} A_0^{\phi}$, so ideas per researcher at time 0 are $\Delta A_{1}/R_0$. 

What is the marginal cost of a researcher? The wage. We know the wage from above at time 0 is $w_0 = s_LY_0/L_0$. Set this equal to the marginal benefit and you get

$$
s_{\pi} \frac{Y_0}{A_0} \frac{1}{r-g_L} \frac{\Delta A_{1}}{R_0} = \frac{s_L Y_0}{L_0}.
$$

Cancel the $Y_0$. Note that $\Delta A_{1}/A_0$ is just equal to $g_A$, the growth rate of productivity (or varieties in this case). And then shuffle everything around until you get to

$$
\frac{R_0}{L_0} = \frac{s_{\pi}}{s_L}\frac{g_A}{r-g_L}.
$$

This is very, very similar to what we got in our [simple version](incentives.html). That simple version was designed to come up with something similar to this, in fact. The only real difference here is the addition of the discounted factors, $r-g_L$. These help determine the number of researchers. 

If $r$ is big, then people discount the future a lot, so the stream of profits from a new innovation isn't as valuable (it pays off a lot in the fuure). Hence innovation effort will be lower in this case. On the other hand, if $g_L$ is higher, this means the scale of the economy is growing, meaning the absolute profits are growing faster, and hence the value of an innovation is bigger. Thus more research effort. 

The fact that this holds for time zero is unimportant. We're on a BGP, so this is the same logic that holds at any given point in time. Meaning that just like we saw before the growth rate of researchers, $g_R$, has to be equal to the growth rate of workers, $g_L$. 

## Lessons
That was a lot of mechanics. But note this was a way to ensure all those fuzzier concepts about innovation introduced in the class hold together. Here's what I mean by "hold together":

1. You can have an economy with two layers (final goods and intermediates) that still leads to an aggregate production function that is consistent with the Solow model and all the elements of a BGP.

2. Economic profits earned by one part of the economy (intermediate firms) imply that the returns to rival inputs (capital in this case) do *not* earn their marginal product. 

3. There is a reasonable interpretation of what productivity actually means. Here, it is the count of varieties of goods that are used/provided in the economy.

4. The value of profits earned by one part of the economy (intermediate firms) provide incentives for innovators, and that value can be used to establish the amount of research effort done. That research effort solution is consistent with constant growth in productivity along a BGP.

One thing to note is that the Romer model didn't really depend on exactly what the form of the idea accumulation function was. All we needed was that the flow of ideas per researcher was $\Delta A_1/R_0$ and we could proceed. In fact, Romer originally assumed (implicitly) that $\phi=1$ and in his model that meant other policies (like the size of $\theta$) could impact the growth rate of productivity.