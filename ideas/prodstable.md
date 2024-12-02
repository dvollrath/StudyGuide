---
title: Stability and visualization
parent: Ideas and Productivity
has_children: true
nav_order: 4
---

# Is the productivity growth rate stable?
{: .no_toc }

1. TOC 
{:toc}

## Stability
The [prior section](proddynamic.html) describes the productivity growth rate along the BGP. But just as with the Solow model and the K/Y ratio, we want to know if that is a *stable* outcome. If the economy starts out with a $g_A$ above or below the BGP growth rate, does it have a tendency to return to $g_A^{BGP}$? The simulation suggests that yes, it does. But why is that? 

Go back to the expression for $g_A$

$$
g_{A} = \theta s_R^{\lambda} \frac{L_{t}^{\lambda}}{A_t^{1-\phi}}.
$$

Take a look at a dynamic figure representing this relationship. Here, I've plotted the growth rate $(1-\phi)g_A$ (the sloped line), and the growth rate $\lambda g_L$ (the horizontal line). You can use <a href="basic-AL.html" target="_blank">this link to open the app in a separate tab</a> (reommended).

<iframe height="500" width="900" frameborder="no" src="basic-AL.html"> </iframe>

No matter where you start, the system pushes you back to the point where the two lines cross, and where $g_A = g_L \times \lambda/(1-\phi)$, which is the BGP growth rate of productivity. This says that the productivity growth rate is *stable*. 

But try adjusting the value of $\phi$ up towards 1. It becomes almost horizontal, and in that case the $(1-\phi)g_A$ line may not intersect the $\lambda g_L$ line at all. In that case the system does not come to rest at a steady state. This means we've got another finding.

{: .important }
The growth rate of productivity along a BGP is stable at $g_A^{BGP} = g_L \lambda/(1-\phi)$ if the value of $\phi<1$.

$\phi<1$ essentially says that the growth rate of productivity must fall as productivity rises. It means that getting more productive cannot lead to an acceleration of productivity growth. The data suggest that this must be true. We do not see that productivity growth accelerates as productivity rises.

We'll talk a little about AI later in the course, and see what happens if we think that this changes things such that $\phi>1$ and we might have explosive growth.

## The level of productivity
Just like we did with the Solow model, we want to distinguish between the growth rate of productivity on the BGP ($g_A^{BGP}$) from the *level* of productivity on the BGP. Let's go back to our formula for how productivity growth works, and note that this still holds along the BGP.

$$
g_{A}^{BGP} = \theta s_R^{\lambda} \frac{L_{t}^{\lambda}}{A_t^{1-\phi}}.
$$

Since we know the growth rate along the BGP, this becomes

$$
\frac{\lambda}{1-\phi} g_L = \theta s_R^{\lambda} \frac{L_{t}^{\lambda}}{A_t^{1-\phi}}
$$

and this tells us how $A_t$ and $L_t$ are related along a BGP. To find the *level* of productivity at any given point in time on the BGP, start by taking logs

$$
\ln \frac{\lambda}{1-\phi} + \ln g_L = \ln \theta + \lambda \ln s_R + \lambda \ln L_t - (1-\phi) \ln A_t.
$$

Now re-arrange this so that the $(1-\phi) \ln A_t$ is by itself on the left,

$$
(1-\phi) \ln A_t = \ln \theta - \ln \frac{\lambda}{1-\phi} - \ln g_L +  \lambda \ln s_R + \lambda \ln L_t.
$$

And finally divide by $(1-\phi)$ on both sides,

$$
\ln A_t = \frac{1}{1-\phi}\ln \theta - \frac{1}{1-\phi} \ln \frac{\lambda}{1-\phi} - \frac{1}{1-\phi}\ln g_L + + \frac{\lambda}{1-\phi}\ln s_R + \frac{\lambda}{1-\phi} \ln L_t.
$$

So productivity on the BGP depends on the level of $L_t$, not surprising. Note that is *also* depends on the size of $s_R$. The bigger the fraction of workers doing R&D, the higher the *level* of $A_t$ along the BGP. We know that the *growth rate* of productivity, $g_A$, isn't affected by $s_R$. 

Devoting a bigger share of workers to R&D will get us more productivity and potentially make the economy richer, yes. But it won't necessarily increase the *growth rate* of productivity on a BGP. This is the same logic as with capital and the ratio $s_I$. Using more of GDP to build capital will make us richer, but it won't change the growth rate. 

## Visualizing the dynamics
For a different way of seeing what is going on, you can also try this [spreadsheet](https://docs.google.com/spreadsheets/d/1nN9Di392qIkza7RYq6Tp6yqBWtyxx3JAtseMaX4aDvA/edit?usp=sharing) which lays out the dynamics of productivity period by period. You can adjust the parameters and initial values of L and A to see how productivity growth evolves over time.

Or similar to the Solow model, the following app allows you to adjust parameters and see the impact on the level of productivity, the growth rate of productivity, and how the dynamic system works. Rather than using the embedded app, <a href="basic-romer.html" target="_blank">this link</a> will take you directly to the app on its own page. 

<iframe height="500" width="900" frameborder="no" src="basic-romer.html"> </iframe>