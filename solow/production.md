---
title: Production
parent: Solow and Balanced Growth
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

Notice that I didn't include anything explicit about natural resources or raw materials here. We could, but they tend to not be as important for growth in real GDP as we think. For the time being we'll leave them out, and later on can incorporate information about them into the production function.

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

Okay, one last thing about these elasticities. I set them up as parameters that appear to be fixed over time. That is, $\alpha$ doesn't have a subscript $t$, implying that the elasticity of real GDP with respect to capital (and therefore with respect to labor) is the same in 1970, 1980, 1990, ... and 2020. Does that make sense? 

It does to some degree. The reason is that these elasticities should be roughly equal to the cost shares of their respective inputs. In other words, $\alpha = \phi_K = RK/(wL+RK)$ and $1-\alpha = \phi_L = wL/(wL+RK)$. Recall that one of the four facts about a BGP was that labor's cost share (and hence capital's) [was constant](http://growthecon.com/StudyGuide/facts/income.html#labors-share-of-costs). If those cost shares are constant, then the parameters $\alpha$ and $1-\alpha$ are constant.

I'm going to punt the explanation for *why* elasticities should equal cost shares to a sub-page, as that gets us into the weeds a little. But it will be worth reading through that explanation to understand why I'm not just making this up. 

Elasticities and cost shares
{: .label .label-green }
**The elasticity $1-\alpha$ is roughly equal to the cost share of labor, $\phi_L$, which in the data is in the range 0.6-0.8 and stable. The elasticity $\alpha$ is roughly equal to the cost share of capital, $\phi_K$, which in the data is about 0.2-0.4 and stable.**

We are using the Cobb-Douglas production function above precisely because it has stable elasticities, which match the data on cost shares.

## KAL and the Capital/Output Ratio
When we start working with the Solow model, it will turn out to be easier to deal with the production function by thinking of it in a slightly different arrangement. Start with the typical function

$$ 
Y_t = K_t^{\alpha} (A_t L_t)^{1-\alpha}
$$

and re-arrange based on the exponents to

$$ 
Y_t = \left(\frac{K_t}{A_t L_t}\right)^{\alpha} A_t L_t.
$$

This says that GDP depends on the $K/AL$ ratio, or capital relative to the size of productivity and labor. This is sometimes called the "capital per efficiency unit of labor" ratio. But we will stick with $K/AL$. 

Why do we use this? It turns out the ratio $K/AL$ is relatively easy to analyze, and that it will end up becoming stable (e.g. unchanging) in the long-run. Economically, the reason is that capital $K$ is itself going to be built using GDP, and so it evolves over time based on how big GDP gets. Productivity and labor, AL, are determinants of GDP, and so they help determine the size of the capital stock. The capital stock will have to grow in proportion to productivity and labor because of this, and hence their ratio is relevant to us. 

In practice, this form of the production function can be used to write GDP per capita.

$$ 
y_t = \left(\frac{K_t}{A_t L_t}\right)^{\alpha} A_t.
$$

And using this, we can write the growth rate of GDP per capita using the logs-derivatives method as

$$
g_y = \alpha (g_K - g_A - g_L) + g_A.
$$

This is identical to what we have above, just re-arranged a little again. This separates the growth rate of GDP per capita into two parts. The first, $\alpha(g_K - g_A - g_L)$, is the growth rate of the $K/AL$ ratio itself, and depends on how fast capital grows relative to productivity and labor. The second, $g_A$, is just straight productivity growth. Note that productivity growth has two effects: one on the $K/AL$ ratio and one directly on GDP per captia. This will turn out to be important when we look at the long-run growth rate.

The last thing to do here is to talk about another way to refer to the $K/AL$ ratio. Start with the capital-output ratio, $K/Y$,

$$
\frac{K}{Y} = \frac{K}{K^{\alpha}(AL)^{1-\alpha}} = \frac{K^{1-\alpha}}{(AL)^{1-\alpha}} = \left( \frac{K}{AL}\right)^{1-\alpha}.
$$

In other words, the capital-output ratio is just the $K/AL$ ratio raised to a power. The $K/AL$ ratio and $K/Y$ are *basically* capturing the same thing, just with some slight variation. What this means is that sometimes we'll slip in a mention of the capital/output ratio to save some time, rather than writing out or talking about the $K/AL$ ratio. 

Why do we care about the $K/Y$ ratio? It is useful in finding the rate of return on capital, for one. 