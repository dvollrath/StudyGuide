---
title: Is there enough innovation?
parent: Case studies
grand_parent: Ideas and Productivity
nav_order: 5
---

# What's the right amount of innovation?
{: .no_toc }

1. TOC 
{:toc}

## You can do too much innovation
We know that the level of productivity depends on R&D effort, $s_R$. And we know from playing with the dynamics of the productivity model that if we increase $s_R$ we can increase the level of productivity. So, does it follow that we can increase GDP per capita by increasing $s_R$? Yes, kind of. 

For productivity we know that

$$
\ln A_t = \frac{1}{1-\phi}\ln \theta - \frac{1}{1-\phi} \ln \frac{\lambda}{1-\phi} - \frac{1}{1-\phi}\ln g_L +  \frac{\lambda}{1-\phi}\ln s_R + \frac{\lambda}{1-\phi} \ln L_t
$$

and so it is obvious that if we increase $s_R$ we increase $\ln A_t$, the level of productivity. 

To evaluate how this impacts GDP per capita we have to tweak the Solow model just a little to allow for this endogenous productivity level. There are two changes we need to make. The first is that we'll plug in the above statement for $\ln A_t$. The second is that we have to account for the fact that if $s_R>0$, then this implies that some workers are *not* producting output but are instead doing R&D. We kind of ignored that in deriving the market $s_R$ solution, but here it matters. The production function is now

$$
Y_t = K_t^{\alpha} (A_t (1-s_R)L_t)^{1-\alpha}
$$

because only $(1-s_R)$ of the $L_t$ workers are in fact producing goods and services. Everything else about this model is the same and we know how to solve for the path of GDP per capita on the BGP. The only tweak is that we'll end up with the $(1-s_R)$ hanging out like this. 

$$
\ln y_t^{BGP} = \frac{\alpha}{1-\alpha} \left(\ln s_I - \ln(\delta + g_A + g_L) \right) + \ln (1-s_R) + \ln A_t.
$$

Now we can plug in the $\ln A_t$ term, and get

$$
\ln y_t^{BGP} = \Omega + \ln (1-s_R) +  \frac{\lambda}{1-\phi}\ln s_R + \frac{\lambda}{1-\phi} \ln L_t.
$$

where 

$$
\Omega = \frac{\alpha}{1-\alpha} \left(\ln s_I - \ln(\delta + g_A + g_L) \right) + \frac{1}{1-\phi}\ln \theta - \frac{1}{1-\phi} \ln \frac{\lambda}{1-\phi} - \frac{1}{1-\phi}\ln g_L
$$

is just a big collection of parameters that aren't really important here. For $\ln y_t^{BGP}$, what we are interested in are the two terms involving $s_R$. Note that if you *increase* $s_R$ there are conflicting effects. This *lowers* GDP per capita because it takes workers out of producing goods and services, but it *raises* GDP per capita because it means higher productivity growth. This means that the answer is *not* to push up R&D as much as humanly possible. At some point it is counter-productive for us. It's no good inventing millions of new cool products if there is no one to make them. 

What's the right level? Let's not take this too seriously, but you could maximize the value of $\ln y_t^{BGP}$ with respect to $s_R$ and get a first order condition of

$$
\frac{-1}{1-s_R} + \frac{\lambda}{1-\phi}\frac{1}{s_R} = 0
$$

which you could solve for

$$
s_R^{\ast} = \frac{\lambda}{1-\phi+\lambda}.
$$

This optimal amount gets smaller if $\lambda$ gets close to zero, which makes sense. If researchers are just creating frictions for one another, then it doesn't make sense to put a bunch of them into the lab. It makes more sense to have them produce things. If $\phi$ gets very negative, then the optimal $s_R$ also goes down. This also should make sense. This tells us that the drag on productivity growth from new ideas (the next idea gets harder to find) is big, and so again why put lots of people into that effort when they could instead work producing the things we already know about. 

Don't get too hung up on the exact number here. The important concept is this:

{: .important }
> The optimal share of labor doing R&D, $s_R$, is less than one, and potentially quite small.

## Do we get this right?
A reasonable question is whether the economy is hitting the optimal level of $s_R$. Are we maximizing GDP per capita? The answer is "probably not".

There are three distortions to that cause $s_R$ to differ from its optimal level. First, the market values research according to the stream of profits that are earned from the new design. What the market misses, though, is that the new invention may affect the productivity of future research. Recall that $\phi>0$ implies that the productivity of research increases with the stock of ideas. The problem here is one of a missing market: researchers are not compensated for their contribution toward improving the productivity of future researchers. For example, subsequent generations did not reward Isaac Newton sufficiently for inventing calculus. Therefore, with $\phi>0$, there is a tendency, other things being equal, for the market to provide too little research. In this sense, it is very much like a classic positive externality: if the bees that a farmer raises for honey provide an extra benefit to the community that the farmer doesn't capture (they pollinate the apple trees in the surrounding area), the market will underprovide honey bees. On the other hand, if $\phi<0$, then the reverse could be true and the market over-provides R&D because firms do not take into account that each innovation makes future innovation harder.

The second distortion, the ``stepping on toes'' effect, is also a classic externality. It occurs because researchers do not take into account the fact that they lower research productivity through duplication when $\lambda$ is less than one. In this case, however, the externality is negative. Therefore, the market tends to provide too much research, other things being equal.

Finally, the third distortion can be called a "consumer-surplus effect." The intuition for this distortion is simple and can be seen by considering a standard monopoly problem. An inventor of a new idea captures some monopoly profit (or has some market power) but produces less than the amount of the good that would be produced under perfect competition. The potential gain to society from a new or improved good is the consumer surplus in the competitive outcome, but society only receives a portion of that because of the innovator under-producing. From this perspective there is too little innovation, as the firms who undertake R&D worry only about the possible monopoly profits they can earn.

## We probably do way too little R&D
In a [paper by Ben Jones and Larry Summers](https://www.nber.org/papers/w27863) they try to calculate whether the economy is doing too little or too much R&D. What they are trying to do is calculate the whole *social* benefit of innovation - including all the externalities - and compare that to the costs. 

Their concept is straightforward. Let's say that we are on a BGP, with a GDP per capita of $y_0$ today. That GDP per capita grows at rate $g_A$, as we've determined before, and let the interest rate that we discount the future at be $r$. The present discounted value of GDP per capita is

$$
PDV_{RD} = \frac{y_0}{r-g_A}.
$$

If you aren't familiar with a present discounted value, it's like trying to find the market value of a stock based on the series of dividends it is going to pay. Those might grow over time ($g_A$) but because they come over time we have to discount them ($r$).

Now, imagine that starting today (time 0), we stopped doing all innovation. Ignoring transition effects, which the authors argue are small, the level of GDP per capita would remain at $y(0)$ forever. The present discounted value of this counter-factual stream of GDP per capita is

$$
PDV_{NoRD} = \frac{y_0}{r}
$$

The net benefits of R&D are the difference in these values

$$
\text{Benefits} = PDV_{RD} - PDV_{NoRD} = y_0\left(\frac{1}{r-g_A} - \frac{1}{r}\right)
$$

This is like the dollar value of the benefits of R&D. What about the costs of R&D? These come from the fact that we use a fraction of our labor force, $s_R$, to generate new ideas rather than producing more output. In our model, we can measure the loss with the wage paid to these workers. The cost of R&D today are $w_0s_RL$, and the costs per capita are $w_0s_R$. Along the BGP the wage grows at the rate $g_A$ as well, so in present discounted value terms the costs of R&D are

$$
\text{Costs} = \frac{w_0s_R}{r-g_A}
$$

These are the net costs as well, as in our counter-factual situation we are shutting down all R&D, and in that case the costs are zero.

Jones and Summers then calculate the average social return as the benefit/cost ratio of R\&D,

$$
\text{Social Return} = \frac{\text{Benefits}}{\text{Costs}}
$$

Which if we plug in gives us

$$
\text{Social Return} = \frac{y_0\left(\frac{1}{r-g_A} - \frac{1}{r}\right)}{\frac{w_0s_R}{r-g_A}}
$$

Remember that $w_0 = (1-\alpha)y_0$ (wages are a fraction of GDP) and we can reduce that to

$$
\text{Social Return} =\frac{g_A/r}{(1-\alpha)s_R}
$$

The numerator is the growth rate discounted at rate $r$, effectively a measure of the benefits. The denominator is the share of resources we spend on R&D, which is made up of wages for the R&D workers.

Given this setup, Jones and Summers then provide various calculations of this social return under different assumptions. The value of $g_A \approx 0.018$, which we've seen before. They use a return on capital of $r \approx 0.05$, consistent with the evidence on returns to capital. Finally, they use a value of $(1-\alpha)s_R \approx 0.027$, or that the costs of R&D are equivalent to about 2.7% of GDP. Jones and Summers consider a broader concept of the costs of R&D, which includes both wages and other costs. In practice this does not create a material difference in the outcomes. Thus the social return to innovation is

$$
\text{Social Return} \approx \frac{0.018/0.05}{0.027} = 13.3. 
$$

This says that 1 dollar of spending on R&D yields about 13.3 dollars of benefits. The social returns to innovation appear to be enormous, because today's R&D produces benefits that last forever. Jones and Summers then consider a variety of adjustments to this calculation, including things like lags in implementation of ideas, requiring ideas to be embedded in capital goods (so that it takes time to build them), or taking into account that innovations tend to spill over international borders. In every case, the social benefits of innovation are at least 4 dollars per dollar of R&D, and can reach values of around 30 dollars under some assumptions.

{: .important }
> The social return to R&D is massive and we likely do far less than optimal.
