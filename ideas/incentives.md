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
f \geq (\mu-1) \frac{L}{A}
$$

or the fixed costs of entry are less than the operating profits they can earn from selling their product. This can only hold if the value of the markup $\mu > 1$. Remember, this markup is

$$
\mu = \frac{p}{c}
$$

so this means the firm has to charge a price higher than marginal cost. But as mentioned earlier, they cannot charge a price higher than marginal cost unless there is imperfect competition. In short, there have to be limits to entry by *other* firms who can *copy* these products. We need to *exclude* firms from entering and mimicking the exact idea or product of other firms to incent firms to come up with those new ideas or products.

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
f = (\mu-1) \frac{L}{A}.
$$

This is what the world looks like from the firm/product/idea level. But we know from [the dynamics](proddynamic.html) that the size of $f$ is determined by $L_R$ and $A$, as in 

$$
f = \frac{L_R^{1-\lambda}}{A^{\phi}}.
$$

If we plug this in we get that

$$
\frac{L_R^{1-\lambda}}{A^{\phi}} = (\mu-1) \frac{L}{A}
$$

or 

$$
\frac{L_R}{L}= (\mu-1) \frac{L_R^{\lambda}}{A^{1-\phi}}.
$$

What's that ratio on the right-hand side? That's just $g_A/\theta$, so we have

$$
\frac{L_R}{L}= \frac{(\mu-1)}{\theta} g_A.
$$

We already defined the ratio of $s_R = L_R/L$ so that gives us

{: .important }
>If firms/ideas/products enter until profits are zero, then
>$$
>s_R = \frac{(\mu-1)}{\theta} g_A.
>$$
>is the share of labor used to pay the fixed costs associated with innovation/development. 

That ratio holds give the current growth rate of $g_A$, which depends on the current ratio of $L$ to $A$, as that determines both the profits available to firms/ideas and the fixed costs associated with them. What we learn from this is that the higher the markup, $\mu$ - the more excludable the products or ideas are and the harder it is for competitors to enter - the more effort firms will put into the fixed costs associated with ideas/firms/products. That makes sense. They are after a profit, and being able to maintain a high markup is one determinant of that profit, the other being the scale of the market. 

We can see then that the choice of legal structures or other terms in the economy that influence excludability then dictate to some extent the level of productivity via $s_R$. As the value of $\mu$ gets bigger more and more labor gets used in developing new products. 

## Is that a good thing?
So is the right concept to push up $\mu$ as high as possible, and get $s_R$ as high as possible? Not necessarily. There are two costs we can think about in terms of the role of $\mu$ and the size of $s_R$. 

First, consider that if $s_R$ is big that means a lot of labor is getting used developing new products, but that means *less* labor is getting used to produce existing products. GDP depends on the number of workers producing existing goods and services, not necessarily on the number working on coming up with the *next* good or service. In our standard Solow setting, then, the "production workers" are $L_Y = (1-s_R)L$, the fraction of workers not doing the fixed work. Then output is

$$
Y = K^{\alpha} (A (1-s_R)L)^{1-\alpha}
$$

and now the fraction $(1-s_R)$ acts a lot like the productivity term. The higher $s_R$, the *lower* is the effective level of productivity in the economy. We can solve things out as usual for the level of GDP per capita along the BGP, as in the [Solow model](level.html) and we'd get

$$
\ln y_t^{BGP} = \frac{\alpha}{1-\alpha} \left(\ln s_I - \ln(\delta + g_A + g_L) \right) + \ln A_0 + \ln (1-s_R) + g_A t.
$$

So changing excludability to raise $\mu$ will raise $s_R$, but lower GDP per capita in this sense. But we also know from [last section](prodlevel.html) that

$$
\ln A_0 = \frac{1}{1-\phi}\ln \theta - \frac{1}{1-\phi} \ln \frac{\lambda}{1-\phi} - \frac{1}{1-\phi}\ln g_L + \frac{\lambda}{1-\phi}\ln s_R + \frac{\lambda}{1-\phi} \ln L_0,
$$

which means the level of $A_0$ depends *positively* on the size of $s_R$, because that determines how many new products we have. 

Thus there is a tension or trade-off in the economy in setting $\mu$ and making rules or legal protections too tight or too loose. There is a particular point for $s_R$ such that we can get the highest level of $\ln y_t^{BGP}$, and we could only hit that point if we get $\mu$ just right. That's hard to do because it isn't a number we can just pick, it's the outcome of all sorts of complex legal and institutional structures, and surely differs by product. 

Second, consider that the level of $\mu$ has distributional implications. That is, if we set $\mu$ to a high level to get a high value of $s_R$, so that there is a lot of entry of new products and ideas, that same $\mu$ means a lot of the benefits of those new products and idea flow as profits to the producers, and not necessarily to customers. Those producers are also customers, so that money gets spent, but we're making a decision about who "wins" in some sense through those decisions. 

## Math solution
We can establish all of this more in the math. Start with the level of $s_R$ that maximizes $\ln y_t^{BGP}$. Put everything together into

$$
\ln y_t^{BGP} = \ln (1-s_R) + \frac{\lambda}{1-\phi}\ln s_R + X + g_A t
$$

where $X$ collects all the additional stuff about capital/output ratios, $L_0$, and so forth. What value of $s_R$ maximizes GDP per capita? Take derivatives and we get

$$
\frac{-1}{1-s_R} + \frac{\lambda}{1-\phi}\frac{1}{s_R} = 0
$$

which solves to

$$
s_R^{\ast} = \frac{\lambda}{1-\phi +\lambda}
$$

as the choice of $s_R$ that maximizes GDP per capita. We know how to get there, because we know that $s_R = \frac{(\mu-1)}{\theta} g_A$, so if we set

$$
\mu^{\ast} = \frac{\theta}{g_A} \frac{\lambda}{1-\phi +\lambda} + 1
$$

we'd get the ratio $s_R^{\ast}$ that maximizes GDP per capita. That would require setting legal conditions just right so that we'd get this markup, but that is *hard* because it's political, legal, and institutional and we've oversimplified by considering there to be *one* markup, but different product markets would respond in different ways. 

Now, what about the distributional implications? Let's figure out how big wages are. Knowing the markup is $\mu = p/c$, we could write

$$
\mu = \frac{pQ}{cQ} = \frac{Y}{cQ}.
$$

The first ratio just multiplies both price and marginal cost by the quantity of products sold, $Q$, and we're making a big assumption that this holds for the whole economy. The second ratio comes from observing that total spending on products, $pQ$, is necessarily equal to GDP, by definition. We can use this relationship to say that

$$
cQ = \frac{Y}{\mu},
$$

or total costs are equal to GDP divided by the markup. The higher the markup, the lower the total costs relative to GDP, and the bigger share of GDP that is earned by the firm/idea/product owners.

From the section on [cost shares](costshares.html) we know (or you can believe me) that 

$$
wL_Y = (1-\alpha)cQ
$$

or that total wages paid to production workers is a fraction $1-\alpha$ of total costs. This means that we can write

$$
w = \frac{(1-\alpha)}{\mu} \frac{Y}{L} \frac{L}{L_Y} = \frac{(1-\alpha)}{\mu} \frac{y}{1-s_R}.
$$

Take logs of this and then along the BGP you get

$$
\ln w^{BGP}_t = \ln (1-\alpha) - \ln \mu + \frac{\lambda}{1-\phi}\ln s_R + X + g_A t
$$

using the same structure as above. Again, plug in what we know about how $s_R$ works, and we get

$$
\ln w^{BGP}_t = \ln (1-\alpha) - \ln \mu + \frac{\lambda}{1-\phi}\ln (\mu-1) - \frac{\lambda}{1-\phi} \ln \theta + \frac{\lambda}{1-\phi} \ln g_A + X + g_A t.
$$

There's a trade-off here again between the level of $\mu$. If $\mu$ is higher, then we get higher $s_R$, which means higher productivity, which means higher GDP per capita, which pushes up wages. But if $\mu$ is higher, labor earns a smaller share of GDP per capita, which pushes down on wages. What's the best possible answer for wages? Maximize this by taking the derivative

$$
\frac{-1}{\mu} + \frac{\lambda}{1-\phi} \frac{1}{\mu - 1} = 0
$$

which solves to

$$
\mu(1 - \frac{\lambda}{1-\phi} )  = 1 
$$

$$
\mu = \frac{1}{1 - \frac{\lambda}{1-\phi}} = \frac{1-\phi}{1-\phi -\lambda}
$$

$$
\mu^{\ast} = \frac{\theta}{g_A} \frac{\lambda}{1-\phi +\lambda} + 1
$$

