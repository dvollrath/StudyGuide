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

The model is identical at this point to the Solow model with just a change of a variable name. You know exactly how to solve this out already. You know (or you can look at the Solow section) to know that along a balanced growth path it must be that 

{: .important}
$$
g_y^{BGP} = g_D
$$

And you also know that for this production function we could write an equation for GDP per capita along the BGP like this:

$$
\ln y_t^{BGP} = \frac{\alpha}{1-\alpha} \left(\ln s_I - \ln(\delta + g_A + g_L) \right) + \ln D_t.
$$

where all that stuff in the first term is just establishing the steady sate value of $K/DhL$, which we know will be constant. What really matters here is the term $D_t$, the productivity level. So what we need to understand the level of GDP per capita for a country is the size of $D_t$, their productivity.

## Ideas can be copied
Recall that one of the key properties of ideas was their non-rivalry. You can copy an idea (i.e. use calculus or just-in-time inventory systems) without stopping anyone else from using them. Ideas about how to use factors of production efficiently could be copied by relatively poor countries to make themselves more efficient. We want to be more deliberate about describing how production works in a relatively poor country to try and understand why they might not always reach rich country levels of productivity - meaning they don't adopt all the best ideas.

This is going to inform the determination of $D_t$. We're going to link it to the productivity level of frontier countries, $A_t$, because we assume there is some kind of copying that can occur.

{: .assumption}
$$
dD = \psi h A_t^{\gamma} D_t^{1-\gamma}
$$

This says the change in productivity, $dD$, depends on some parameter $\psi$, which is just for scaling. It also depends on $h$, human capital, implying that the higher is human capital, the bigger the change in productivity. This allows for the idea that higher skills/education allow countries to adopt technologies more easily. Then the last terms tell us that the accumulation of productivity is a combination of the number of frontier ideas, $A_t$, and the existing level of ideas domestically, $D_t$. The parameter $\gamma$ determines how important those two parts are. The higher is $\gamma$, the more the frontier matters, and vice versa.



## Convergence again