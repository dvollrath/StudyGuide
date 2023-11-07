---
title: Incentives to innovate
parent: Ideas and Productivity
has_children: true
nav_order: 5
---

# Incentives to innovate
{: .no_toc }

1. TOC 
{:toc}

![Meme](meme_competition.png)

## Profits!
This isn't hard. We think innovation occurs because people want to get *paid*. Companies get started with new products because the founders want to make money. Existing comparies hire R&D workers to invent or improve products so that they can make more money. Individual workers will generate new ideas and ways of doing things to get noticed by a boss and ... make more money. 

The motivation is straightforward, but there are some subtleties to it, which in this clip the underpants gnomes don't quite get. Warning, salty language at the end:

<iframe width="560" height="315" src="https://www.youtube.com/embed/bxiCCZXhuRQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Let's generalize this. The first step, "collect underpants" is a highly specific activity that may or may not generate innovation (who knows?). Think of this first step instead as "do research and development", or even more generally "exert some effort to try and come up with a new idea". The gnomes are putting in that effort.

The second step is where things break down for these guys, and where we need to fill in more information. What allows the generator of a new idea get to stage 3 and profit from that idea? The answer is that they need some form of ownership. They need to make that idea *exclusive* to them, so they can force others to *pay* them for using that idea.

## Excludable things
This notion of exclusivity is the key to generating profits from innovation. If refers to a property of goods, services, or ideas. Something is *excludable* if you have some legal or physical way of preventing someone from using that something (i.e. excluding them). In practice, this means that you can force someone to *pay* your to use that something. In order for you to make money selling *anything*, it has to be excludable. Non-excludable means the opposite, and refers to things that it is hard or impossible to prevent people from using, and therefore hard or impossible to charge them for.

You might be thinking of the concept of rivalry and non-rivalry right now. But be careful, excludability and rivalry are *different*. I like this video because Rohen (who does a lot of good economics tutoring videos) does a nice quick job of explaining the distinction, and in giving you some idea of how the two concepts of rivalry and excludability interact.

<iframe width="560" height="315" src="https://www.youtube.com/embed/Dzcpt6HG5Y4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

The key square for us here is the non-rival, excludable square, which are "artifically scarce" goods. The ideas that generate productivity growth are non-rival, as discussed before. That non-rivalry is what allows growth to occur. But to provide incentives for people to spend effort (R&D spending and time) those non-rival ideas have to be made excludable, or artifically scarce. 

How do we do that? The most obvious answer is intellectual property (IP) law: patents, copyrights, trademarks, and the like. This video is an explainer from out of the UK, so some of the minor details are not going to be true for the US. However, it gives you a good introduction to the separate types of intellectual property rights that create excludability for non-rival ideas.

<iframe width="560" height="315" src="https://www.youtube.com/embed/EQsZf2G4Sdc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

We could go deep down the rabbit hole of IP and innovation. For the moment, though, we're just interested in the idea that IP creates the excludable characteristic of non-rival ideas. Note that nothing here says that *more* IP or *stronger* IP necessarily increases innovation. We probably need *some* IP to incent innovation, but it is an open question of how much. We'll come back to that later.

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

Growth and rival inputs
{: .label .label-green }
**Economic growth in a constant-returns to scale economy implies that rival inputs are not paid their marginal products.**

Based on this, rival inputs like labor and capital need to be "underpaid" relative to their contribution to producing GDP so that we can provide incentives to innovators to come up with better ways to do things. That doesn't mean this must be unfair to labor or capital. It depends on their outlook. It may be that labor and capital are agreeing to take a smaller slice of the pie, in return for the pie growing even faster over time.

Don't endow this with some kind of mystic truth. It is a statement that *if* the economy is constant returns to scale, and *if* innovation requires profits, then rival inputs cannot be paid their marginal products. Those assumptions could be wrong. 

But let's operate as if the assumptions are true, and think about more possible consequences. We've taken the supply of labor and capital to be fixed, for the most part. That is, we haven't provided any model of why people would supply labor or capital to the market, they just do. But it isn't hard to imagine that the supply of these rival inputs would depend on what they are paid. So if wages and capital rents are pushed *down* in order to make room for profits for innovators, then this would presumably push *down* the willingness of people to supply labor and capital. 

If this is true, then allowing profits for innovations doesn't just change the size of the slices of pie, it makes the pie smaller today. Again, this might be worth it. We might accept a smaller pie today, and labor and capital might accept smaller slices of that smaller pie today, if in return we get more innovation and a rapidly growing pie over time. 

## The amount of research
The general result of the prior sub-section indicates that the profits behind innovation necessitate some deviation from perfect factor markets. But that general result doesn't inform us about how much research and development effort will be put in. We can try and be a little more specific about that by thinking about the incentives for innovators. In the textbook there are very specific models (Romer, Schumpeter) about how those profits arise, what the imperfect markets look like, and what this does to R&D choices. Here we're going to treat things from a slightly higher level.

Think of things from the perspective of a firm deciding whether to employ some workers in R&D, in the hopes of generating an innovation that will in turn generate profits. Our basic economic intuition is that they will employ R&D workers until the marginal benefit of R&D (the extra profits they could earn from their innovations) is equal to the marginal cost of those R&D workers, which is their wage. 

We can use that condition to come up with a rough idea of how many R&D workers, R, firms will employ relative to the number of regular workers, L. To do that we have to describe the marginal benefit, profits, and the marginal cost, the wage. 

Start with the profits. Let $s_{\pi} = \Pi/Y$ be profit's share of total GDP. Those are the total profits available to earn given the market power granted to innovators through IP rules and/or other means of making ideas excludable. To keep our lives simple, let's also assume that the profit each separate idea earns is equal to the total profits divided by the level of productivity, A. This is like saying that the size of productivity is exactly equal to the number of ideas. That isn't true, of course, but as long as they are proportional in some way, we are good. Put that together and we have a profits per idea in some given period $t$ of $s_{\pi} Y_t/A_t$. 

Hold onto that for a moment. Now, how many ideas would any given researcher - if hired - produce? Well, we modeled the total flow of ideas with $dA = \theta R_{t}^{\lambda} A_t^{\phi}$. Note two things. First, I'm just using $R$ here to denote the number of R&D workers. That is just to keep this distinct from the $L$, the number of regular old workers. Second, that this isn't the growth rate of ideas, this is the raw change in ideas given some total number of researchers and an initial value for productivity. 

The number of *new ideas per researcher* is this divided by $R_t$, or $dA/R_t$. How many ideas can a firm get per each R&D worker they employ.

Now hold onto *that* for a moment. What is the wage rate that you have to pay a researcher? We're assuming they are similar to everyone else, so they earn the regular wage. The wage per person is the total share of GDP earned by labor divided by the number of workers, or $w_t = s_L Y_t/L_t$. Note that I'm ignoring here any effect of moving researchers out of the labor force (which would presumably lower the number of workers and push wages up), because the fraction of R&D workers relative to the workforce is so small that it cannot matter that much. 

Okay, we've got three pieces of information to work with. Put them together into this equilibrium condition,

$$
\frac{s_{\pi} Y_t}{A_t}\frac{d A}{R_t}  = \frac{s_L Y_t}{L_t}.
$$

The left-hand side has the profits-per-idea times the ideas-per-researcher, or profits-per-researcher. The right-hand side has wages per worker, and as we said above we expect these to be equal so that the marginal benefit to a firm (the left) is equal to the marginal cost (the right). This equation allows us to solve for the size of $R_t$ relative to $L_t$. 

Stary by noticing that the $Y_t$ terms cancel. This is a little bit of a fudge, by the way. Note that the profits you earn for a new idea probably only come in the *future* (and we should have something like $Y_{t+1}$ on the left side), but we're acting as if they arrive immediately. We can allow for that forward-looking behavior, and in some cases that will become interesting. But for starters we're ignoring it. 

Cancel the $Y_t$ terms and then re-arrange the equation to

$$
\frac{s_{\pi}}{s_L}\frac{dA}{A_t}  = \frac{R_t}{L_t}.
$$

We've got what we want on the right-hand side now, the ratio of researchers to workers. And we can make one more substitution on the left. Note that we have the ratio $d A/A_t$, which is just the growth rate of productivity. We can denote this $g_A$ to keep things simpler, and find that

$$
\frac{R_t}{L_t} = \frac{s_{\pi}}{s_L}g_A.
$$

What does this tell us? It says that the number of people employed as researchers, relative to the labor force, depends on two things. 

1. Profits relative to the cost of labor. The ratio $s_{\pi}/s_L$ tells us about the benefits of innovation relative to the costs. The larger this ratio is, the more you get out of a researcher, in short. So the higher this ratio, the more researchers will be employed. 

2. The growth rate of productivity. The $g_A$ term is telling us how fast ideas arrive. If this is high, then it pays to invest in researchers, as they are likely to deliver a lot of new ideas to you, and hence profits. But if this is low, why bother hiring them? 

Changes in IP laws or rules adjust the size of $s_{\pi}$ relative to $s_L$, and thus affect the size of the research effort over time. The argument for IP is that by protecting the profits of innovators, it induces more innovation (higher R). The counter-argument is that by raising $s_{\pi}$ relative to $s_L$, the share of GDP going to workers (or capital) is going down, and those workers are thus getting a smaller share of what may be a bigger pie. Whether that is good for the workers depends on whether the boost to innovation outweights the smaller slice.

This gives us one way of interpreting the growth of research effort over time in most developed countries, and in particular the growth in the fraction of workers involved in research. Our little model here suggests that this must have involved either an increase in the fruitfulness of research ($g_A$ going up) or in a larger payoff to innovation ($s_{\pi}$ going up). 

By the way, note that the ratio $s_R$ we used in the dynamics is the share of workers employed in R&D, or that roughly

$$
s_R \approx \frac{R}{L}
$$

so what we've done here is solve for the value of $s_R$ that firms hunting down profits will choose to employ. 

### Rising research effort
The logic in this section gives us some insight into why the data show that the value of $s_R$ went up over time. One possibility is that the share of GDP going to profits rose relative to the share going to labor. If firms felt they were able to capture a bigger share of GDP then it makes more sense to try and innovate. 

A second possibility is that the size of $g_A$ went up, which from the *firm* perspective just looks like a higher change of getting lucky with R&D. From the aggregate perspective we know that this is tied to the growth rate of population, $g_L$. 

Now, over the last few decades we know that $g_L$ has slowed down across most major economies, while at the same time $s_R$ went up. One story is therefore that $s_R$ went up becaues profits went up relative to wages, which you can find some support for in the data. 

On the other hand, as mentioned before on population, the "right" value of $g_L$ is probably some kind of worldwide growth rate related to all populations who produce research, and in that sense the arrival of China and India as major R&D producers is significant. $s_R$ might have gone up *everywhere* because the additional flow of smart people from China and India made it easier and cheaper to innovate. There isn't a clear answer on this, but the equations help us frame the question and narrow down the plausible answers.


