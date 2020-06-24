---
title: Production
has_children: true
nav_order: 1
---

# Production
{: .no_toc }

1. TOC 
{:toc}

## The production function
Real GDP depends on the amount of each product that is produced, so we need some way of describing how all that producing of products occurs. In practice, we know that real GDP is calculated using *many* products. Conceptually, we could set up a production function for each individual product that describes how each is produced using capital, labor, natural resources, and perhaps other products. 

For example, we could describe a production function for a Taco Cabana restaurant that depends on capital (e.g. the building, the refigerators, the registers, the grill), labor (e.g. those lovely people who assemble your tacos), energy (something has to power the spinning tortilla machine), and other products (e.g. the lettuce and beans they purchase from some food supplier like Sysco). And now that we've done that, we could describe the production function for the Starbucks located next door. And then describe production at the Verizon store across the street, and so on and so on and so on. 

We could do that in theory, but in practice it is unmanageable. What we're going to do instead is concentrate on an *aggregate production function* that summarizes all of the individual production going on at each individual location (the Taco Cabana, the Starbucks, the Verizon store, and so on) and relates that to the *sum* of all the inputs used like capital and labor. We're not ignoring the fact that real GDP is really the summation of the relative values of all the different products, but we are sweeping that detail under the rug so we can concentrate on the larger picture. Think of it a little like weather models. While a weather forecaster cannot tell you *exactly* where each drop of rain is going to fall, they can give you a decent idea of roughly where it is going to rain and when. 

Here is our aggregate production function, and it is so central to what we're going to do that I'm going to set it off with it's own little marker.

Aggregate production function
{: .label .label-green }
**Real GDP at time $t$, $Y_t$, is produced according to the following Cobb-Douglas aggregate production function:**

$$ 
Y_t = K_t^{\alpha} (A_t L_t)^{1-\alpha}
$$

Let's go through each of the pieces of this.

1. $K_t$ is the total stock of capital in the economy at time $t$. This combines the values of all structures, equipment, and intellectual property used by all the establishments. More capital, more real GDP.
2. $L_t$ is the total amount of labor in the economy at time $t$. This could be a count of the number of workers, or we can get fancy and think of it as a combined stock of skills and abilities that those workers bring with them. Either way, more labor, more real GDP.
3. $A_t$ is the level of productivity at time $t$. We'll have more to say later about what this really measures, but for now keep in mind that is measures how efficiently we use the capital and labor in the economy. Higher productivity, higher real GDP.

Notice that I didn't include anything explicit about natural resources or raw materials here. We could, but they tend to not be as important for growth in real GDP as we tend to think. For the time being we'll leave them out, and later on can incorporate information about them into the production function.

What about the remaining parameters, $\alpha$ and $1-\alpha$? Those dictate how sensitive real GDP is to the amount of capital ($\alpha$) or to productivity and labor ($1-\alpha$). Their role is quite important, and will be easiest to see if we do a little mathematical work first.

## Production, growth, and elasticities
Take the aggregate production function given above, and see what it implies not just about real GDP, but about how real GDP *grows*. To do this, use the mathematical [tools](http://growthecon.com/StudyGuide/preliminaries/calculus.html) developed before to take logs and growth rates of that production function. 

$$
\ln Y_t = \alpha \ln K_t + (1-\alpha) \ln A_t + (1-\alpha) \ln L_t
$$

and therefore

$$
g_Y = \alpha g_K + (1-\alpha) g_A + (1-\alpha) g_L.
$$

This tells us that growth in real GDP depends on growth in capital, growth in productivity, and growth in labor. Not surprising. Notice that the effect of growth in capital, $g_K$, on growth in real GDP depends on the size of $\alpha$. If capital grows at 10%, then real GDP grows at $\alpha$ times 10%. If $\alpha=0.3$, then real GDP would only grow 3% when capital grows 10%. A similar story holds for productivity and labor and the parameter $(1-\alpha)$.

If you recall from earlier economics classes, and *elasticity* measures the percent change of one thing with respect to the percent change in another. The values $\alpha$ and $1-\alpha$ are elasticities. Since I'm enjoying using these markers, let's use another

Production function elasticities
{: .label .label-green }
**$\alpha$ is the elasticity of real GDP with respect to capital. $1-\alpha$ is the elasticity of real GDP with respect to labor. We assume that $0<\alpha<1$, which implies that $0<1-\alpha<1$ as well.**

Cool. We can say a little more about production given these parameters. The first concept here relates to returns to scale.

Constant returns to scale
{: .label .label-green }
**Because $\alpha + (1-\alpha) = 1$, the aggregate production function has constant returns to scale with respect to capital and labor.**

What does this mean? Think of what happens if *both* capital and labor grow by 10% (but productivity doesn't grow at all). Then $g_Y = \alpha 10% + (1-\alpha)10% = 10%$. Constant returns to scale means that if you scale up both inputs by the same percent, output goes up by that percent as well. This is different than increasing returns to scale, which would imply that output went up by 20%, say, if you increased capital and labor by 10%. 

Now why am I ignoring productivity in all this? That's because productivity is really a different animal than the inputs capital and labor. The guide is going to spend a *lot* of time talking about why productivity is so different, so hang on to that question for the time being. The quick version is that capital and labor are tangible things that can only be used in one place at one time, but productivity is something less tangible that applies everywhere at once. 

## Per-capita growth and capital/output ratios