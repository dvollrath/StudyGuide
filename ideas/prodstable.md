---
title: Stability and visualization
parent: Ideas and Productivity
has_children: true
nav_order: 5
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

$\phi<1$ essentially says that the growth rate of productivity must fall as productivity rises. It means that getting more productive cannot lead to an acceleration of productivity growth. The data suggest that this must be true. We do not see that productivity growth accelerates as productivity rises. We saw last section that the fixed costs of introducing a new firm were assumed to be

$$
f = \frac{L_R^{1-\lambda}}{A^{\phi}}
$$

and what this assumption that $\phi<1$ is saying is that fixed costs cannot go *down too fast* as productivity goes up. If $\phi$ were bigger, then as productivity went up, $f$ would drop by a lot, and lots of firms or products or ideas would enter the market, making $A$ go up a lot, and the cycle would get out of control, and the growth rate of productivity would accelerate. We don't see anything like that in the data.

We'll talk a little about AI later in the course, and see what happens if we think that this changes things such that $\phi>1$ and we might have explosive growth.

## The level of productivity
Just like we did with the Solow model, we want to distinguish between the growth rate of productivity on the BGP ($g_A^{BGP}$) from the *level* of productivity on the BGP. Let's go back to our formula for how productivity growth works, and note that this still holds along the BGP.

$$
g_{A}^{BGP} = \theta s_R^{\lambda} \frac{L^{\lambda}}{A^{1-\phi}}.
$$

Since we know the growth rate along the BGP, this becomes

$$
\frac{\lambda}{1-\phi} g_L = \theta s_R^{\lambda} \frac{L^{\lambda}}{A^{1-\phi}}
$$

and this tells us how $A$ and $L$ are related along a BGP. To find the *level* of productivity at any given point in time on the BGP, start by taking logs

$$
\ln \frac{\lambda}{1-\phi} + \ln g_L = \ln \theta + \lambda \ln s_R + \lambda \ln L - (1-\phi) \ln A.
$$

Now re-arrange this so that the $(1-\phi) \ln A$ is by itself on the left,

$$
(1-\phi) \ln A = \ln \theta - \ln \frac{\lambda}{1-\phi} - \ln g_L +  \lambda \ln s_R + \lambda \ln L.
$$

And finally divide by $(1-\phi)$ on both sides,

$$
\ln A_t^{BGP} = \frac{1}{1-\phi}\ln \theta - \frac{1}{1-\phi} \ln \frac{\lambda}{1-\phi} - \frac{1}{1-\phi}\ln g_L + + \frac{\lambda}{1-\phi}\ln s_R + \frac{\lambda}{1-\phi} \ln L_t.
$$

I added in here time subscripts to be clear that it is $A_t^{BGP}$ and $L_t$ that are linked, and that $L_t$ is what drives the growth of $A_t$. The superscript "BGP" is there to ensure we see this is just the BGP level, and not the precise level of $A_t$ at all times (sometimes it won't be on the BGP). Recall that

$$
L_t = L_0 e^{g_L t}
$$

and we can write

$$
\ln A_t^{BGP} = \ln A_0 + \frac{\lambda}{1-\phi} g_L t,
$$

where

$$
\ln A_0 = \frac{1}{1-\phi}\ln \theta - \frac{1}{1-\phi} \ln \frac{\lambda}{1-\phi} - \frac{1}{1-\phi}\ln g_L + + \frac{\lambda}{1-\phi}\ln s_R + \frac{\lambda}{1-\phi} \ln L_0.
$$

This gives us some ways of seeing what drives that initial productivity term, $A_0$, which is just the intercept of the $A_t^{BGP}$ line. note from the prior equation that the *slope* of that line is $\lambda/(1-\phi)g_L$, which we already knew, as that's the growth rate of $A$ along a BGP. 

The level of productivity on the BGP depends on the level of $L_0$, not surprising. But don't get hung up on this being a precise measure of population size at some initial period (when?). Rather, think of this as the overall initial *scale* of the economy dictating how many ideas or products or firms the economy can support. That $L_0$ scale does depend to some extent on the raw number of people (there's one reason New York City has a higher level of productivity and GDP per capita than Topeka), but it also depends on how integrated those people are with one another (transport, communications, etc.). 

What also matters for the *level* of $A^{BGP}_t$ are things like the fraction of workers covering fixed costs, $s_R$. The more effort the economy puts into doing this, the higher is productivity. We'll see that this share depends a lot on market conditions, because the people deciding this have to ensure they earn at least zero overall profits, but more $s_R$ would tend to push up this level.

## Visualizing the dynamics
For a different way of seeing what is going on, you can also try this [spreadsheet](https://docs.google.com/spreadsheets/d/1nN9Di392qIkza7RYq6Tp6yqBWtyxx3JAtseMaX4aDvA/edit?usp=sharing) which lays out the dynamics of productivity period by period. You can adjust the parameters and initial values of L and A to see how productivity growth evolves over time.

Or similar to the Solow model, the following app allows you to adjust parameters and see the impact on the level of productivity, the growth rate of productivity, and how the dynamic system works. Rather than using the embedded app, <a href="basic-romer.html" target="_blank">this link</a> will take you directly to the app on its own page. 

<iframe height="500" width="900" frameborder="no" src="basic-romer.html"> </iframe>