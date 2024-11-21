---
title: Growth with natural resources
parent: Population and Resources
nav_order: 2
---

# Growth with natural resources
{: .no_toc }

1. TOC 
{:toc}

![Meme](meme_versus.png)

Now let's try to put together a model of economic growth that includes these resources, and then see how it maps into some of the facts we established with the data in the last section.

## Dynamics of nonrenewable resources
Understanding growth when resources are required for production is just an extension of our standard model. Let $X_t$ be the stock of a resource, and this stock could be agricultural land, oil, trees, copper, the ocean, or it could represent a composite of all resources. This stock could decline over time.

Let $E_t$ be the flow of resources used in production each year (think "Energy"). So $E_t$ is like the oil we pump this year, and $X_t$ is the stock of known reserves this year. Last, let's have $s_X$ be the share of $X_t$ used in any given year, so 

$$
E_t = s_X X_t
$$

We'll assume that $s_X$ is constant, in the sense that it doesn't respond to $X$ directly. We could decide to pump a larger fraction of the oil in the ground in a given year, but that is up to us, and not mechanically related to how much oil there is (we're assuming). 

We're going to want the growth rate of $E_t$, as that will matter for the growth rate of GDP. Taking logs, we know

$$
\ln E_t = \ln s_X + \ln X_t
$$

and therefore

$$
g_E = g_X
$$

because we assumed that $s_X$ is constant. So in order to know the growth rate of E, we need to know the growth rate of X. What is that?

The accumulation (actually, decumulation) dynamics of $X$ are

$$
X_{t+1} = X_t - E_t,
$$

or the stock tomorrow is the stock today minus whatever we use. Subtract $X_t$ from both sides, and then divide by $X_t$, and you get

$$
g_X = \frac{X_{t+1}-X_t}{X_t} = - \frac{E_t}{X_t} = -s_X.
$$

or the growth rate of this resource is just the negative of the share of the resource used each period. This means that

$$
g_E = -s_X
$$

as well. But we can go further, and also talk about the level of $E_t$ over time. To do that, we need to talk about the level of $X_t$. 

Since $X_t$ has a constant growth rate of $-s_X$, we can write

$$
X_t = X_0 (1-s_X)^t.
$$

Why can we write that? Because it's the basic formula for the level of something that grows exponentially, and we used a similar formula for population, with $L_t = L_0 (1+g_L)^t$. The only difference here is that the growth rate is negative, as opposed to positive. 

Take logs of $X_t$ and you get

$$
\ln X_t = \ln X_0 - s_X t
$$

and therefore we've got

$$
\ln E_t = \ln s_X + \ln X_0 - s_X t.
$$

The level of resource use (energy) in each period depends on the initial stock of resources, $X_0$, and the speed at which we draw those down. The slope of this relationship is $-s_X$. Note that the intercept also depends on $s_X$ positively. That is, if $s_X$ is higher, the amount of energy we draw out is *higher* today, but then declines at a faster rate.

Note that this formulation can be used to deal with different types of resources. If we were talking about the actual acreage of agricultural land, then $s_X$ might be close to zero. That doesn't decline just because we use it. But if we were talking about soil fertility, then $s_X>0$ and we are drawing down the stock of soil fertility when we plant crops. For oil or copper or lithium, it is more obvious that $s_X>0$ and the stock falls over time.

The fraction $s_X$ is going to be a lot like the fraction $s_I$, in a sense, because it tells us how a stock of something (here, natural resources) evolves over time. But we'll see that it has a slightly different effect on growth.

## Production and growth with resources
Now we want to incorporate natural resources into production and see what impact that has. Modify the regular Cobb-Douglas production function to be

$$
Y_t = K_t^{\alpha} E_t^{\beta} (A_tL_t)^{1-\alpha-\beta} ,
$$

where recall $E_t$ is the flow of resources we use in a year. Note that the elasticity on labor is different now. It depends on $\alpha$ *and* $\beta$. We use this formulation so that the production function still has constant returns to scale. And this is going to be important for what we find below.

This is more complicated that our normal production model, as we've got two different stocks - K and E - growing. But we can get most of the solution we need by noting a key thing, which is that the growth rate of E, $g_E$, is a fixed number $g_E = -s_X$. It doesn't depend on other things the way that the growth rate of capital depended on the size of GDP. 

Rewrite the production function like this

$$
Y_t = K_t^{\alpha} (B_t L_t)^{1-\alpha} 
$$

where $B_t$ is a composite term that is 

$$
B_t = A_t^{\frac{1-\alpha-\beta}{1-\alpha}} \left(\frac{E_t}{L_t}\right)^{\frac{\beta}{1-\alpha}}.
$$

All I've done is collect all of the "weird" things in our production function into the B term. What we are left with is a production function that looks exactly like what we've always worked with, $Y_t = K_t^{\alpha} (B_t L_t)^{1-\alpha}$, just with B in the place of A. 

Ignore what's going on in B for the moment. If I showed you this production function and said that it was the Solow model, you'd be able to solve it. You'd tell me that the growth rate of GDP per capita with this production function would - along a BGP - turn out to be

$$
g_y^{BGP} = g_B.
$$

So now we need to know what $g_B$ is. Look at the equation above, take logs and derivatives, and we get (after some re-arranging)

$$
g_B = \left(1 - \frac{\beta}{1-\alpha}\right)g_A - \frac{\beta}{1-\alpha}\left(s_X + g_L \right).
$$

The growth rate is a weighted average of $g_A$ - actual productivity growth - and *negative* $s_X + g_L$. The second two are negative for different reasons. $s_X$ has a negative effect because it tells us that the amount of energy use is falling over time as we exhaust the stock of X, which pushes down production. $g_L$ is negative because we're trying to spread that resource use over a larger number of people. 

Growth along the BGP is positive only if

$$
\left(1- \frac{\beta}{1-\alpha}\right)g_A > \frac{\beta}{1-\alpha}(s_X + g_L)
$$

or if 

$$
g_A > \frac{\beta}{1-\alpha-\beta}(s_X + g_L).
$$

If productivity growth is high enough, then this can overcome the drag on growth from resource use and rising population. 

{: .important }
Using natural resources in production can create a drag on the growth rate of GDP per capita. Growth is only positive if produtcivity growth is sufficiently high and/or population growth is sufficiently low.

It's important to see that this relationship depends on the size of $\beta$, which dictates the elasticity of resource use in production. It essentially tells us how relevant resources are for GDP. If $\beta$ is close to zero, then essentially resources don't matter, and we're back to our original Solow model. Growth is positive so long as $g_A>0$ in that case.

Here, the higher is $\beta$, and the more important resources are, the harder it is to achieve growth in GDP per capita on a BGP. We'll look more at this when we try to use this model to explain some real-world data.

You can also see that the size of $s_X$ matters. If the resource we're talking about is renewable and $s_X \approx 0$, then growth is higher and there is less of a "drag" on growth from using the resource. As $s_X$ gets bigger, it becomes more a drag and harder to get positive growth.

## Level effects
To be clear on what this model implies for the use of resources per capita, and the level of both resources per capita and GDP per capita, let's work out a few values. First, let's look at the *stock* of resources per capita, using small letters to denote per-capita amounts, as normal.

$$
x_t = \frac{X_t}{L_t}
$$

and therefore in logs we've got $\ln x_t = \ln X_t - \ln L_t$, and using what we know from above, we've got

$$
\ln x_t = \ln X_0 - s_X t - \ln L_t
$$

and if we use what we know about population growth, $\ln L_t = \ln L_0 + g_L t$, gives us

$$
\ln x_t = \ln X_0 - \ln L_0 - (s_X + g_L) t.
$$

The level of resources per capita at any given time depends on the initial stock of resources per capita (the $X_0$ and $L_0$ terms), and then this declines at the rate $s_X + g_L$, which captures the fact that the stock of resources is declining and that stock is getting spread across more and more people.

How about the flow of resources per person (i.e. energy use per person)? This is

$$
e_t = \frac{E_t}{L_t}
$$

and similar logic to above is going to give us

$$
\ln e_t = \ln s_X + \ln X_0 - \ln L_0 - (s_X + g_L) t.
$$

Again, this is falling, and is basically identical to the stock per capita over time, except for the addition of the $\ln s_X$ term showing us what fraction of the resource is getting used.

We can use some of this information to tell ourselves what the productivity level $B_t$ looks like over time. $B$ was defined as 

$$
B_t = A_t^{\frac{1-\alpha-\beta}{1-\alpha}} \left(\frac{E_t}{L_t}\right)^{\frac{\beta}{1-\alpha}},
$$

so in log terms this is

$$
\ln B_t = \frac{1-\alpha-\beta}{1-\alpha} \ln A_t + \frac{\beta}{1-\alpha} \ln E_t - \frac{\beta}{1-\alpha} \ln L_t.
$$

We know how to describe $E_t$ from the first sub-section. Put this together to the mess that is

$$
\ln B_t = \frac{1-\alpha-\beta}{1-\alpha} \ln A_t + \frac{\beta}{1-\alpha} (\ln s_X + \ln X_0 - s_X t) - \frac{\beta}{1-\alpha} \ln L_t.
$$

What are we looking at? B is the effective level of productivity in this economy, accounting for energy use. That effective productivity level depends on actual productivity, A, and it depends negatively on the size of the population, L, due to dilution of resources. What we also see is that effective productivity depends positively on the initial *stock* of resources, $X_0$. If we have more to use overall, our extraction can be bigger and we can use more energy and be more productive. 

More interesting, note that there are two effects of $s_X$ here. The $\ln s_X$ term is positive, and the higher the extraction rate, the higher is $B_t$. This is the direct effect of pulling more out of the resource stock. More energy at any given time, more productive. But note that that $s_X t$ term is telling us about how $B$ evolves over time in reaction. This term is negative, and the bigger is $s_X$ the *slower* that B will grow, because we are running down the resource stock.

## Resources and living standards
Finally, let's go back to the level of GDP per capita. This will get messy, but what we are after here is some sense of the role of $s_X$. There is going to be a positive *level* effect, meaning that the higher is $s_X$ the richer we are to start, as we use more resources. But there is a negative *growth* effect, as the higher is $s_X$ the slower is the growth rate due to resources declining faster. So the impact on living standards is somewhat ambiguous. High $s_X$ (a big negative number) can mean short-run production but low growth, while low $s_X$ gives low GDP per capita today but allows for higher GDP per capita in the future. 

How do we see this in the math? Use the production function with $B$ and we've got

From above, this was

$$
\ln y_t = \frac{\alpha}{1-\alpha} (\ln K_t/Y_t) + \ln B_t.
$$

We already know that $B_t$ depends in multiple ways on $s_X$. But we also know that the choice of $s_X$ will influence the level of $K/Y$ that we end up at. We know from the Solow model that in this production function the steady state capital/output ratio will be

$$
K/Y^{ss} = \frac{s_I}{g_B + g_L + \delta}.
$$

The growth rate $g_B$ shows up here again, and from above we found that

$$
g_B = \left(1 - \frac{\beta}{1-\alpha}\right)g_A - \frac{\beta}{1-\alpha}\left(s_X + g_L \right).
$$

So here we see *another* influence of $s_X$. A higher extraction rate will lower the capital/output ratio in the long-run, as it pushes up on GDP. 

Stepping back from the math, the overall point is that the impact of resource extraction on GDP per capita is ambiguous in some sense. Higher $s_X$ can generate higher living standards *now*, but lowers the growth rate. Lower $s_X$ keeps living standards low now, but has a higher growth rate. We can't say for sure that one is better than another - from the perspective of GDP per capita - unless we take a stand on how important the present is compared to the future. 

And so far we've said *nothing* about the possible environmental impact of that resource use. 

## Matching the facts
Lots of moving parts here. But let's ask how this model does in matching what we see in the data. First, we estabalished that $\beta$ is kinda-sorta constant over time. That's fine, our model is just taking $\beta$ as given, so none of our results rely on it changing. 

Next, the data suggest that energy intensity, E/Y, was *falling* over time. Does our model deliver that result? Let's think about this in terms of growth rates. If E/Y is falling, then it has to be that

$$
g_E < g_Y
$$

We already know that our model matches to this. Way back at the beginning we said that $g_E = -s_X$, or that energy use declines over time - by assumption. Even if we think that $s_X$ is close to zero, either because of new discoveries or because we're considering renewable energy as well, then this just means $g_E$ is close to zero as well. We know that our model can deliver positive growth in GDP, $g_Y >0$ so long as productivity growth, $g_A$ is big enough. So yes, this model is consistent with falling energy intensity over time. 

What about the longer-run rise in relative price of energy, $p_E$? Here we don't have anything to say. The model doesn't have any explicit choice being made on how much energy to use, so we have no way of addressing the apparent price of that energy. So the model is incomplete, but to the extent that it works, it works.

## Visualizing
To see how all these pieces interact to shape the path of GDP per capita and growth when resources are used, there is yet another app. <a href="basic-resource.html" target="_blank">This link will take you directly to the app on its own page</a>, or the app is embedded here to play with.

<iframe height="500" width="900" frameborder="no" src="basic-resource.html"> </iframe>
