---
title: Artificial Intelligence
parent: Case studies
grand_parent: Ideas and Productivity
nav_order: 4
---

# Artificial intelligence
{: .no_toc }

1. TOC 
{:toc}

> I've come up with a set of rules that describe our reactions to technologies:
>
> 1. Anything that is in the world when you’re born is normal and ordinary and is just a natural part of the way the world works.
> 2. Anything that's invented between when you’re fifteen and thirty-five is new and exciting and revolutionary and you can probably get a career in it.
> 3. Anything invented after you're thirty-five is against the natural order of things.

> ― Douglas Adams, The Salmon of Doubt: Hitchhiking the Galaxy One Last Time

Does the advent of large language models for interactive AI - like ChatGPT - change the way we look at economic growth? Does it make extremely rapid economic growth possible? Matt Clancy and Tamay Besiroglu have a good debate on the question in [Asterisk Magazine](https://asteriskmag.com/issues/03/the-great-inflection-a-debate-about-ai-and-explosive-growth). They defined explosive growth as "a minimum of tenfold the annual growth rate observed over the past century, sustained for at least a decade." Given that the annual growth rate of GDP per capita was around 2% per year for much of the last century, that means they were arguing over whether growth can reach about 20% per year for the next 10 years. Besiroglu argued this was very possible, while Clancy gave this a much lower chance of happening. 

How do we understand the debate, and possibly come to a conclusion, using the concepts from studying economic growth. First, we know that in the long run productivity growth is what matters for growth in GDP per capita, so we'll just worry about the growth rate of productivity, $g_A$. 

We described the growth rate of productivity something like this:

$$
g_A = \theta s_R^{\lambda} \frac{L^{\lambda}}{A^{1-\phi}}
$$

and that led to the conclusion that $g_A = \lambda/(1-\phi)g_L$ in the long run; productivity growth depended on population growth. 

## Make R&D workers more effective
One way AI could boost growth is by simply making R&D workers more effective - let them generate more ideas per unit of time. This could be like a jump in $\theta$. What's the impact of that? 

Well, going back to the dynamics studied [here](https://growthecon.com/StudyGuide/ideas/proddynamic.html) we know that immediately this would raise the growth rate of productivity. But ultimately as $A$ accumulated the growth rate would get pushed back down and we'd go back to a growth rate of $g_A = \lambda/(1-\phi)g_L$ in the long run.

This isn't bad! A higher growth rate of productivity for a while is definitely going to raise the long run level of productivity. In the long run, the *level* of productivity can be solved for from this relationship

$$
\frac{\lambda}{1-\phi}g_L = \theta s_R^{\lambda} \frac{L^{\lambda}}{A^{1-\phi}}
$$

giving

$$
A= \left(\frac{\theta s_R^{\lambda} L^{\lambda}}{\frac{\lambda}{1-\phi}g_L}\right)^{1/(1-\phi)}
$$

The level of productivity depends positively on $\theta$. The higher that is, the higher is productivity, and the higher is GDP per capita. 

How much higher does $\theta$ have to get to create the 20% growth? Well, if currently growth is about 2% per year, and given $L$ and $A$, then it has to be that $\theta$ goes up by a factor of 10 to get to $g_A$ of 20% per year just at the start before it starts decaying to 19%, 18%, etc.. over time. 

What does that do to the level of productivity? To answer that we need to know the size of $\phi$, because $A$ depends on theta in the long run, but raised to the $1/(1-\phi)$ power. On [this page](https://growthecon.com/StudyGuide/ideas/phi.html) I gave you some evidence that $\phi$ could be like -1.67. Let's say it is just -1, so that $1/(1-\phi)$ is equal to 1/2. Then the boost to the level of productivity is $10^{1/2} = 3.16$. That's incredible. 

If AI can make R&D work 10 times more productive, then in the long run the level of productivity could be like 3 times higher than it is today. Even in the short run, a growth rate of productivity of like 20% is amazing, and would be immediately noticeable. 

## Replacing labor with capital
But is it plausible? It's hard to believe that simply having ChatGPT around (or other AI-like entities) is going to jack up the growth rate of productivity to 20%, if only because it already hasn't. In 2024, when I'm writing this, they've been available widely for about 2 years. The US economy is doing great, but it isn't growing at 20%. 

Probably a better way to think about AI is that it might replace some labor in the R&D process with capital (servers) that do similar work. Let's say that ideas form like this now with AI:

$$
dA = \theta s_R^{1-\beta} K^{\beta} L^{1-\beta} A^{\phi}
$$

where I've set $\lambda = 1$ (no crowding, even though that seems more likely with AI) and the effort put into R&D is now a combination of $K$ and $L$, using $\beta$ to tell us how important the two are. Our original model was something like $\beta = 0$, so all that mattered was labor. 

Divide through by $A$ and do a little re-arranging and we have

$$
g_A = \theta s_R^{1-\beta} \left(\frac{K}{AL} \right)^{\beta} L A^{\phi + \beta - 1}.
$$

The fraction $K/AL$ is just the same ratio we used in the Solow model, and we know regardless of $g_A$ it will settle down to a constant. The same rationale that got us an answer before will indicate that the long-run growth rate after AI will be

$$
g_A = \frac{1}{1-\phi - \beta}g_L.
$$

The bigger is $\beta$, the more important AI is in R&D, and the higher the growth rate. Given that we have some evidence in this [section](https://growthecon.com/StudyGuide/ideas/phi.html), though, that $\phi$ is something like -1.67, it isn't possible for $g_A$ to become infinite. 

In fact, with a negative $\phi$, it's hard to get the growth rate in the long run to change by much at all. Let's say that $g_L = 0.04$, which represents rapid growth in the entire pool of brains doing R&D, and that $\phi = -1$. Then without AI this delivers growth of $g_A = 0.02$, roughly the right number we see now. 

What happens if $\beta = 1$, or AI does *all* the R&D? Then in the long run $g_A = 0.04$. That's amazing! It's double the growth rate, and a substantial upgrade. In the short run it's hard to say what happens, because going from $\beta = 0$ to $\beta = 1$ means we are really jumping to a new function for $g_A$, and it isn't obvious that the growth rate has to go up in that switch, as it depends on the size of $K/AL$. 

If $\beta$ just goes to 1/2, then the long-run growth rate is like 2.7% per year. That's also amazing! But not really the 20% that the debate was worried about. 

Overall, it's harder than you think to talk yourself into AI being transformative for economic growth. There are a lot drags on the R&D process that still exist ($\phi$, for example) no matter how effective it is. 