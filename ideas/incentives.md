---
title: Incentives to innovate
parent: Ideas and Productivity
has_children: true
nav_order: 7
---

# Incentives to innovate
{: .no_toc }

1. TOC 
{:toc}

![Meme](meme_competition.png)

## Profits!
We know a lot about the dynamics of productivity growth and how it must settle down in the long run to depend on population growth. That was consistent with the [simple model](fixed.html) we set up earlier. But that model was predicated on the idea that firms or ideas only get added if it there are profits to be had. Remember, we said that firms or products or ideas will only enter if

$$
f \leq \frac{s_{\pi}}{s_L} \theta \frac{L}{A},
$$

or the fixed costs of entry are less than the operating profits they can earn from selling their product. We also assumed that firms would enter until this relationship became and equality (so the marginal firm earned zero profits) but we need the entrants to earn some profits to want to enter. There can only be entry if $s_{\pi} > 0$. 

But as mentioned earlier, they cannot charge a price higher than marginal cost and earn profits unless there is imperfect competition. In short, there have to be limits to entry by *other* firms who can *copy* these products. We need to *exclude* firms from entering and mimicking the exact idea or product of other firms to incent firms to come up with those new ideas or products.

## Excludable things
This notion of exclusivity is the key to generating profits from innovation. If refers to a property of goods, services, or ideas. Something is *excludable* if you have some legal or physical way of preventing someone from using that something (i.e. excluding them). In practice, this means that you can force someone to *pay* your to use that something. In order for you to make money selling *anything*, it has to be excludable. Non-excludable means the opposite, and refers to things that it is hard or impossible to prevent people from using, and therefore hard or impossible to charge them for.

You might be thinking of the concept of rivalry and non-rivalry right now. But be careful, excludability and rivalry are *different*. I like this video because Rohen (who does a lot of good economics tutoring videos) does a nice quick job of explaining the distinction, and in giving you some idea of how the two concepts of rivalry and excludability interact.

<iframe width="560" height="315" src="https://www.youtube.com/embed/Dzcpt6HG5Y4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

The key square for us here is the non-rival, excludable square, which are "artifically scarce" goods. The ideas that generate productivity growth are non-rival, as discussed before. That non-rivalry is what allows growth to occur. But to provide incentives for people to spend effort (R&D spending and time) those non-rival ideas have to be made excludable, or artifically scarce. 

How do we do that? The most obvious answer is intellectual property (IP) law: patents, copyrights, trademarks, and the like. This video is an explainer from out of the UK, so some of the minor details are not going to be true for the US. However, it gives you a good introduction to the separate types of intellectual property rights that create excludability for non-rival ideas.

<iframe width="560" height="315" src="https://www.youtube.com/embed/EQsZf2G4Sdc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

We could go deep down the rabbit hole of IP and innovation. For the moment, though, we're just interested in the idea that IP creates the excludable characteristic of non-rival ideas. Note that nothing here says that *more* IP or *stronger* IP necessarily increases innovation. We probably need *some* IP to incent innovation, but it is an open question of how much. We'll come back to that later.

## Effort on fixed costs
For us, the shorthand way to explain the notion of excludability is going to be through the markup, $\mu$. The higher the markup, the more "protected" a firm or idea, and the more "excluded" competitors are from making exact or near copies of their products. At the same time, we are letting new products and firms enter into the economy that have *new* ideas (that get protected by the same IP laws and things). That new entry will continue until the marginal new firm/product/idea earns zero profits, or

$$
f = \frac{s_{\pi}}{s_L} \theta \frac{L}{A},
$$

This is what the world looks like from the firm/product/idea level. But we know from [the dynamics](proddynamic.html) that the size of $f$ is determined by $L_R$ and $A$, as in 

$$
f = \frac{L_R^{1-\lambda}}{A^{\phi}}.
$$

If we plug this in we get that

$$
\frac{L_R^{1-\lambda}}{A^{\phi}} = \frac{s_{\pi}}{s_L} \theta \frac{L}{A}
$$

or 

$$
\frac{L_R}{L}= \frac{s_{\pi}}{s_L} \theta \frac{L_R^{\lambda}}{A^{1-\phi}}.
$$

What's that ratio on the right-hand side? That's just $g_A$, so we have

$$
\frac{L_R}{L}= \frac{s_{\pi}}{s_L} g_A.
$$

We already defined the ratio of $s_R = L_R/L$ so that gives us

{: .important }
>If firms/ideas/products enter until profits are zero, then
>$$
>s_R = \frac{s_{\pi}}{s_L} g_A
>$$
>is the share of labor used to pay the fixed costs associated with innovation/development. 

That ratio holds give the current growth rate of $g_A$, which depends on the current ratio of $L$ to $A$, as that determines both the profits available to firms/ideas and the fixed costs associated with them. What we learn from this is that the higher the profit share, $s_{\pi}$ - the more excludable the products or ideas are and the harder it is for competitors to enter - the more effort firms will put into the fixed costs associated with ideas/firms/products. That makes sense. They are after a profit, and being able to maintain a high markup is one determinant of that profit, the other being the scale of the market. 

We can see then that the choice of legal structures or other terms in the economy that influence excludability then dictate to some extent the level of productivity via $s_R$. As the value of $s_{\pi}$ gets bigger more and more labor gets used in developing new products. 

## Is that a good thing?
So is the right concept to push up $s_{\pi}$ as high as possible, and get $s_R$ as high as possible? Not necessarily. There are two costs we can think about in terms of the role of $s_{\pi}$ and the size of $s_R$. 

First, consider that if $s_R$ is big that means a lot of labor is getting used developing new products, but that means *less* labor is getting used to produce existing products. GDP depends on the number of workers producing existing goods and services, not necessarily on the number working on coming up with the *next* good or service. In our standard Solow setting, then, the "production workers" are $L_Y = (1-s_R)L$, the fraction of workers not doing the fixed work. Then output is

$$
Y = K^{\alpha} (A (1-s_R)L)^{1-\alpha}
$$

and now the fraction $(1-s_R)$ acts a lot like the productivity term. The higher $s_R$, the *lower* is the effective level of productivity in the economy. We can solve things out as usual for the level of GDP per capita along the BGP, as in the [Solow model](level.html) and we'd get

$$
\ln y_t^{BGP} = \frac{\alpha}{1-\alpha} \left(\ln (K/Y)^{\ast} \right) + \ln A_0 + \ln (1-s_R) + g_A t.
$$

So changing excludability to raise $s_{\pi}$ will raise $s_R$, but lower GDP per capita by reducing the work done producing goods and services. But we also know from [last section](prodlevel.html) that

$$
\ln A_0 = \frac{1}{1-\phi}\ln \theta - \frac{1}{1-\phi} \ln \frac{\lambda}{1-\phi} - \frac{1}{1-\phi}\ln g_L + \frac{\lambda}{1-\phi}\ln s_R + \frac{\lambda}{1-\phi} \ln L_0,
$$

which means the level of $A_0$ depends *positively* on the size of $s_R$, because that determines how many new products we have. 

Thus there is a tension or trade-off in the economy in setting $s_{\pi}$ and making rules or legal protections too tight or too loose. There is a particular point for $s_R$ such that we can get the highest level of $\ln y_t^{BGP}$, and we could only hit that point if we get $s_{\pi}$ just right. That's hard to do because it isn't a number we can just pick, it's the outcome of all sorts of complex legal and institutional structures, and surely differs by product. 

{: .important }
>There is an optimal level of $s_R$ less than one that maximizes GDP per capita along a BGP, because workers assigned to develop new firms/products/ideas are not producing current goods and services. That means there is an optimal level of the profit share, $s_{\pi}$, which maximizes GDP per capita, and that optimal level is bigger than zero (firms need incentives to enter) but is definitely less than one (which would mean no one produces goods or services).

Second, consider that the level of $s_{\pi}$ has distributional implications. The ratio $s_{\pi}/s_L$ is what really matters here for the share of labor introducing new products/ideas/firms. And $s_{\pi} + s_L + s_K = 1$, so in some sense there is a trade-off of $s_{\pi}$ versus $s_L$ (although it depends on $s_K$ too). If we raise $s_{\pi}$ to raise $s_R$, we are probably lowering $s_L$. That would get us a higher $s_R$ too, but it means labor is earning a lower share of a possibly bigger pie. The value of $s_{\pi}$ might increase GDP per capita, but it also going to determine who "wins" from this increase. 
