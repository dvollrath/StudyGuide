---
title: Dynamics of productivity
parent: Ideas and Productivity
has_children: true
nav_order: 4
---

# Dynamics of productivity
{: .no_toc }

1. TOC 
{:toc}

![Meme](meme_dynamics.png)

## More sophisticated fixed costs and productivity
What we can and will do now is embellish the basic structure we have in place to look more at how the dynamics of productivity growth work. The ultimate point is going to remain the same, but we'll see that these basic intuitions survive a lot of variations on the theme. The basic assumptions made were not crucial.

The basic concept was that firms (or products or ideas) enter the market until their fixed cost offsets the operating profits firms can earn selling the products. That looked like this

$$
f = \frac{s_{\pi}}{s_L} \theta \frac{L}{A}.
$$

Want to allow for $f$ to vary depending on conditions, and want to establish what happens when L and A are such that fixed costs are less than operating profits, or more than. That is, how does the economy get to the point where there are zero profits from entry? 

We also want to think about how $A$ evolves according to the entry of firms. That was a black box in the sense that we said A went up with more firms because it only made sense if new firms were entering if they could do something better than others. How many firms? How much of an effect on A will that entry have? 

First, let's establish a few assumptions about how the world works. This first one makes more explicit how productivity is related to the number of entrants. 

{: .assumption }
> The change in productivity depends on the number of ideas/firms introduced, which depends in turn on the total amount of labor used for fixed costs, $L_R$, and the size of fixed costs per firm, $f$:
>$$
>dA = \theta\frac{L_R}{f}
>$$

which says that the change in A, $dA$, is proportional to the number of new firms that enter, which is $L_R/f$. The value of $\theta$ just scales this relationship. Firms/ideas are not necessarily identical to A, but move up and down with it. 

Then, we're going to make a weird assumption about fixed costs, which is that they look like this

{: .assumption }
> The size of fixed costs depends on both the number of workers covering fixed tasks and the size of productivity:
>$$
>f = \frac{L_R^{1-\lambda}}{A^{\phi}}
>$$

The important part here is that fixed costs are assumed to go up with $L_R$. The more people working on new ideas or building new locations out or whatever, the higher the fixed costs for all the firms. The value of $\lambda$ tells us how powerful this is, so it's a measure of crowding. If $\lambda$ is about one, then there is no crowding, and if $\lambda$ goes to zero, there is a lot. You can think of this as measuring literal crowding, like bidding up costs for good locations, or duplication of efforts, or other things. 

At the same time, fixed costs are related to the current level of $A$. If $\phi >0$, then as the economy gets more productive fixed costs go down. Maybe it means some of the new ideas and products make it easier to establish new ideas and products, as with something like cheaper accounting software or a way to map out possible demand for a Panera location, or gene editing helping to make cheaper drugs. It could also be that $\phi <0$ and higher productivity makes fixed costs *higher* for firms. That could be because others have already used the good locations, or the good ideas, or gotten a foothold in an industry and you have to do extra marketing to introduce your new product, and so on. We will end up putting some conditions on the value of $\phi$ later that are necessary for things to work, but the intuition there will be that $phi$ can't be so big that it makes fixed go down too fast.

The combination of these two assumptions means that we have

$$
dA = \theta L_R \frac{A^{\phi}}{L_R^{1-\lambda}} = \theta L_R^{\lambda} A^{\phi}. 
$$

Given this, the growth rate of productivity is $g_A = dA/A$, so we have

$$
g_A = \theta \frac{L_R^{\lambda}}{A^{1-\phi}}. 
$$

The growth rate of productivity depends on the ratio of workers used to do all those fixed tasks associated with innovation, R&D, or building new firms relative to the level of productivity. This is a dynamic setup that tells us how $g_A$ reacts, and hence how that ratio will evolve. That's similar to what we got in the simpler setup, where $g_A$ is proportional to $g_L$, but here modified by those parmaeters that dictate how fixed costs evolve. The last thing we'll do is define

{: .assumption }
>The fraction of total workers, $L$, doing fixed cost work, $L_R$, is $0<s_R<1$, or
>$$
>L_{R} = s_R L
>$$

That ratio $s_R$ need not be a constant, but in the long-run we will see that it has to settle down to a constant. That will mean that $L_R$ grows at the same rate as the scale of the economy. Putting all this together we have

{: .important }
>The growth rate of productivity can be written as
>$$
>g_A = \theta s_R^{\lambda} \frac{L^{\lambda}}{A^{1-\phi}}.
>$$

## Dynamics of productivity growth
The last equation describes how the growth rate of productivity changes over time. It depends on the interaction of the number of workers covering fixed costs for firms, $s_R L$, and the size of current productivity, $A$. Just like we did with the capital/output ratio, let's take a look at a simulation first to see how the growth rate of productivity changes as $L$ and $A$ change. 

For this simulation, I set the value of $\theta = 1$ and the value of $s_R = .01$, or about 1% of people do R&D. Remember, this just translates the growth in ideas produced by researchers into productivity terms. Set $\lambda = 1$, and $\phi = 0$. This makes the growth rate equation simple, $g_A = .01 \times sL/A$. Finally, let the growth rate of the number of population be $g_{L} = 0.02$, so the number of workers grows by 2% per year. The initial population is $L_0 = 10$. 

Just like with capital/output, the simulation is set up with two separate economies, A and B. In economy A, initial productivity is $A_0^A = 2$, so the ratio of $L_{0}/A_0^A = 5$. Economy has higher initial productivity, $A_0^B = 10$, and a ratio of $L_{0}/A_0^B = 1$. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="../plotly/me-gA-dynamics.html"></iframe>

We know that because economy A has a higher ratio of workers to productivity it will start with a higher growth rate of $g_A = .01 \times 5 = .05$ or 5%. But the next period, productivity will be higher by 5%, and the number of workers will only grow by 2%, so the ratio of L/A in economy A will *fall*, which will lower the productivity growth rate. 

In economy B, the initial growth rate of productivity is $g_A = 0.01 \times 1 = .01$, or only 1%. Because $L_R$ grows at 2%, and productivity only grows at 1% in economy B, the L/A ratio for economy B will *rise*, and this will increase the productivity growth rate. 

When you play the simulation you see that both economies collapse towards a ratio of population/productivity of 2, and a common growth rate of productivity of 0.02, or 2%. This growth rate is identical to the growth rate of population, and that, it turns out, is not an accident. 

## Implications
The simulation showed that both economies have a common growth rate of productivity. Let's solve more generally for what that common growth rate is. 

What we are after here is a value for $g_A$ such that $g_A$ no longer changes. In the Solow model, we found a steady state for the K/Y ratio, and at that ratio $g_{K/Y} = 0$. We're doing something similar here, looking for a steady state. But here the steady state will involve a ratio of L to A such that $g_A$ is *constant* (but not necessarily zero like with the capital/output ratio). This is an important point for us because we know from the data that along a BGP the growth rate of productivity is positive but also roughly constant. 

Intuitively, from the equation for $g_A$ we know that it will stay the same if $L^{\lambda}$ grows at the same rate as $A^{1-\phi}$, so that their ratio stays the same. This is the more sophisticated version of what we looked at earlier in this section when we established that $A$ had to be proportional to $L$. 

What's the growth rate of $L^{\lambda}$? Mechanically, we know that this is

$$
\lambda g_{L}.
$$

What's the growth rate of $A^{1-\phi}$? Mechanically, we know that this is

$$
(1-\phi)g_A.
$$

So for the ratio $L^{\lambda}/A^{1-\phi}$ to stay constant (so that the growth rate of productivity stays constant) it must be that

$$
(1-\phi)g_A = \lambda g_{L}
$$

We can just flip this around to find that

$$
g_A^{BGP} = \frac{\lambda}{1-\phi} g_L.
$$

I labelled this $g_A^{BGP}$ because this is the growth rate of productivity along a balanced growth path, when it is at steady state. Let's just confirm that our simulation is working the way we want. With $\lambda = 1$ and $\phi = 0$, and $g_L = 0.02$, then it must be that $g_A^{BGP} = 1/(1-0) \times .02 = .02$. Yes, the simulation delivers the result we expect. Or, the equation matches what we saw in the simulation.

This gives us a pretty clean result in determining the productivity growth rate.

{: .important }
Along a BGP the growth rate of productivity depends on the growth rate of population according to $g_A^{BGP} = \frac{\lambda}{1-\phi} g_L$.

We should keep in mind that "population" here is a rough term meaning the scale of the economy, which is definitely influenced by population size, but might also depend on other things like transportation networks or institutional rules. But $L$ is a good proxy for scale.

## Some simple correlations
More workers means more ideas, firms, and products that push up the growth rate of productivity. But recall that higher productivity tends to push down $g_A$, so those two forces are fighting against one another. The economy can sustain a higher growth rate of $g_A$ along the BGP if it has a faster growth rate of population to keep overcoming the drag from the higher *level* of productivity. But simply having more population does not, by itself, lead to faster growth in productivity along the BGP.

And this is crucial in matching what we saw in the data. Recall the prior section said that while the absolute effort spent on fixed cost rose over time, the growth rate on productivity did not, across a number of countries. We can make this more tangible by plotting the growth rate of productivity against the log of R&D workers for several countries.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="../plotly/pwt-oecd-rd-tfp.html"></iframe>

Yes, there is some sense that in China there are both a lot of researchers *and* a relatively high productivity growth rate, but across most of this data there is no clear relationship. The US and Japan have substantially more R&D workers than Korea, Germany, or Great Britain, but their productivity growth is not higher. 

On the other hand, if we plot the growth rate of productivity against the *growth rate* of the number of researchers, we get a more robust picture. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="../plotly/pwt-oecd-rd-gtfp.html"></iframe>

Here, there is a tendency to see higher productivity growth when R&D workers grow faster (which is tied to population growth in part) is higher. This doesn't prove the theory is right. First, this is just a handful of countries, and a simple correlation in the data is not the same thing as a causal relationship. Second, the theory was *designed* to produce this result. We were trying to come up with something that can mimic this relationship, and we did.

There isn't a great way to plot the firm-level data on fixed costs against the growth rate of countries, as the firms we have data on are only those publicly traded and their fixed costs might be associated with their own innovation, but that doesn't tell us directly about the connection of that to overall economic growth. But we do know that despite the tendency for SGA costs (which were our proxy for fixed costs) to go up relative to revenues over time, there was no matching tendency for the growth rate in those countries to go up. The model we just put together can handle that fact. It just says that the *growth rate* of productivity is tied to the growth of the scale of the economy, and not necessarily to the scale itself. 
