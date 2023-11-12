---
title: Diffusion of ideas
parent: Comparative Development
nav_order: 2
---

# Idea diffusion and relative productivity
{: .no_toc }

1. TOC 
{:toc}

![Meme](meme_diffusion.png)

## Simple model of developing country
Let production for a developing country be

$$
Y_t = K_t^{\alpha}(D_th_tL_t)^{1-\alpha}.
$$

This is very similar to what we've used before, but replaced $A_t$ with the term $D_t$. The only reason for the change in naming is that we're going to reserve $A_t$ for the productivity in the rich world, or representing the best possible ideas. The term $D_t$ is going to stand for productivity in the developing country, and represents how many of the best ideas have diffused to this country. As usual, the higher is $D_t$ the higher is GDP (and GDP per capita). 

The model is identical at this point to the Solow model with just a change of a variable name. You know exactly how to solve this out already. 

{: .important}
Along a BGP the growth rate of GDP per capita is
$$
g_y^{BGP} = g_D
$$

And you also know that for this production function we could write an equation for GDP per capita along the BGP like this:

$$
y_t^{BGP} = \left(\frac{K}{Y}\right)^{\alpha/(1-\alpha)} h_t \frac{L_t}{N_t} D_t.
$$

The value of $K/Y$ is going to be a steady state value depending on $s_I$, $g_L$, and $g_D$. But we know it will be constant. What really matters here is the term $D_t$, the productivity level. So what we need to understand the level of GDP per capita for a country is the size of $D_t$, their productivity. $h_t$ and $L_t/N_t$ function just like in a regular model. 

## Ideas can be copied
Recall that one of the key properties of ideas was their non-rivalry. You can copy an idea (i.e. use calculus or just-in-time inventory systems) without stopping anyone else from using them. Ideas about how to use factors of production efficiently could be copied by relatively poor countries to make themselves more efficient. We want to be more deliberate about describing how production works in a relatively poor country to try and understand why they might not always reach rich country levels of productivity - meaning they don't adopt all the best ideas.

This is going to inform the determination of $D_t$. We're going to link it to the productivity level of frontier countries, $A_t$, because we assume there is some kind of copying that can occur.

{: .assumption}
The accumulation of ideas based on diffusion is
$$
dD = \psi h A_t^{\gamma} D_t^{1-\gamma}
$$

This says the change in productivity, $dD$, depends on some parameter $\psi$, which is just for scaling. It also depends on $h$, human capital, implying that the higher is human capital, the bigger the change in productivity. This allows for the idea that higher skills/education allow countries to adopt technologies more easily. Then the last terms tell us that the accumulation of productivity is a combination of the number of frontier ideas, $A_t$, and the existing level of ideas domestically, $D_t$. The parameter $\gamma$ determines how important those two parts are. The higher is $\gamma$, the more the frontier matters, and vice versa.

{: .important}
Given the accumulation equation the growth rate of $D$ is
$$
g_D = \psi h \left(\frac{A_t}{D_t}\right)^{\gamma}
$$

This has the same kind of dynamic structure that all our models have. The growth rate of something (D) depends on the ratio of two levels, here those are A and D. The growth rate of one of those levels, A, is given exogenously, $g_A$. We know all sorts of theories about what determines $g_A$ in the frontier countries, but from the perspective of the developing country this rate is a given. They only know or determine the size of $g_D$.

Knowing how dynamics work, we know that this has to settle down to a steady state growth rate for $D$, or $g_D$ will be cosntant. Why? Because note that $g_D$ depends negatively on $D$, and positively on $A$. So this is again one of these horse races between the two parts of the ratio. You can draw a diagram with $g_D$ and $g_A$ on the y-axis, and $A/D$ on the x-axis, and work this out. 

For $g_D$ to be constant in steady state, it has to be that $A/D$ is constant. That will only be true if $g_D = g_A$. So in that sense we already know the answer. 

{: .important}
Along a BGP the growth rate of GDP per capita is
$$
g_y^{BGP} = g_D = g_A
$$

In a developing country, the growth rate of their ideas or technology (D) is exactly the same as the growth rate of the frontier technology or ideas (A). Even though they can borrow ideas, and as A goes up $g_D$ goes up, the developing country will not grow faster than the frontier. Why?

It's just down to the dynamics. The problem is that even though A keeps going up, providing mroe ideas to borrow, this just makes D go up, which pushes down on the growth rate $g_D$. There's a similar base effect we see everywhere in our models. As D goes up it's hard to keep the growth rate high. 

We still want to know $D_t$ to establish how rich this country can get. Along the BGP it is that $g_D = g_A$, so we can solve the growth rate equation 

$$
g_A = \psi h \left(\frac{A_t}{D_t}\right)^{\gamma}
$$

for the following.

{: .important}
Along a BGP the size of productivity in the developing country is
$$
D_t = \left(\frac{\psi h}{g_A}\right)^{1/\gamma} A_t.
$$

From this we see that if their human capital is higher, $h$, then $D_t$ will be higher. They can borrow faster, and hence can sustain a higher level of technology. The faster the frontier grows, $g_A$, the *lower* their technology - kind of - because it is hard to keep up borrowing ideas. But at the same time, $D_t$ is rising with $A_t$, so the higher is $g_A$, the faster $D_t$ grows.

Go back to the BGP level of GDP per capita and you get

$$
y_t^{BGP} = \left(\frac{K}{Y}\right)^{\alpha/(1-\alpha)} h_t \frac{L_t}{N_t} \left(\frac{\psi h}{g_A}\right)^{1/\gamma} A_t.
$$

Now think again about why these countries look poor in terms of productivity. Note that $A_t$ is assumed to be the value of productivity in rich countries. So why does measured productivity in our development accounting table differ between countries? It has to be that remaining term $\psi h / g_A$. The diffusion model implies that human capital has an *additional* effect on countries, which is through determining how fast they can borrow ideas. So one reason that the comparison of productivity is so bad for developing countries is that their human capital has this extra effect of limiting their technology.

In addition, $g_A$ is not helping, in the sense that the faster $A$ grows, the poorer the borrowing countries will be. Finally, the value of $\psi$ captures ... everything else that determines borrowing. There are a few ways to account for this, which we can talk about in different sections.

The major point is that productivity need not be *random*, but probably depends in part on some economic features of the develoing countries.
