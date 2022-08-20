---
title: Calculus for growth rates
parent: Preliminaries
nav_order: 4
---

# Calculus for growth rates
{: .no_toc }

1. TOC 
{:toc}

![Meme](meme_calc.pdf)

## Take logs and time derivatives
When we're building a model of economic growth, we'll start with some kind of expression for GDP (or GDP per capita). This might take the form of a production function like

$$
Y(t) = A(t) K(t)^{\alpha} L(t)^{1-\alpha}
$$

which says that GDP at time t, $Y(t)$, depends on three things: $A(t)$, $K(t)$, and $L(t)$. We might give those three terms names, like productivity, capital, and labor, but for the moment all we really care about is the mathematics. You're going to see the effect of $\alpha$ on the different terms once we go a little further.

If we start with this production function, what does it tell us about the growth rate of GDP? Just looking at the expression, we can see that $Y(t)$ will grow if some combination of $A(t)$, $K(t)$, or $L(t)$ grow. That is, if productivity, capital, and/or labor all grow, then GDP will be higher. 

But we want to make this more explicit. To do that we'll take two standard steps. First, take logs of both sides. Second, take the derivative of both sides with respect to time. The first step is algebra, while the second step involves calculus. We're not going to go deep into the theory of calculus or anything. I'm just going to show you the "recipe" for doing these derivatives. 

Start by taking logs

$$
\ln Y(t) = \ln A(t) + \alpha \ln K(t) + (1-\alpha) \ln L(t),
$$

which just uses the rules associated with logs covered [here](http://growthecon.com/StudyGuide/preliminaries/logs.html#natural-logs). 

Now, let's take the time derivative. All the time derivative involves is asking what the change in a term (like $Y(t)$) is over a very short amount of time. Here's your recipe for "the derivative of $\ln Y(t)$ with respect to time".

$$
\frac{d \ln Y(t)}{dt} = \frac{d Y(t)/dt}{Y(t)} = g_Y
$$

In the first fraction, "d" means the change or derivative of something. So $d \ln Y(t)$ is the change in $\ln Y(t)$, and this change is relative to $dt$, the change in time. So the fraction is the change in log GDP with respect to a change in time - growth.

The second fraction is where some actual calculus knowledge comes in handy. For those of you who know calc, we need to apply the chain rule here. The change in $\ln Y(t)$ with respect to anything is $1/Y(t)$, which is just a property of natural logs. But then we need to allow for the fact that it is time that is changing, and so $Y(t)$ itself is changing. The $dY(t)/dt$ in the numerator captures that. So the second fraction says it is the change in GDP over a small amount of time, divided by the level of GDP. 

The last equality in that expression just notes that if we're talking about the change in GDP over the initial level of GDP, we're just talking about the growth rate of GDP. This is precisely the reason we take logs first. Derivatives of log terms with respect to time are just growth rates.

Let's go back to the original production function. We can apply these rules across the entire expression. 

First,

$$
\frac{d\ln Y(t)}{dt} = \frac{d\ln A(t)}{dt} + \alpha \frac{d\ln K(t)}{dt} + (1-\alpha) \frac{d\ln L(t)}{dt}.
$$

Notice that we ignore the parameters $\alpha$ and $(1-\alpha)$. We do that because we know (well, I just told you) that there are constants, so they do not change over time. 

Next, 

$$
\frac{d Y(t)}{Y(t)} = \frac{dA(t)}{A(t)} + \alpha \frac{d K(t)}{K(t)} + (1-\alpha) \frac{dL(t)}{L(t)}.
$$

And finally,

$$
g_Y = g_A + \alpha g_K + (1-\alpha) g_L.
$$

We're home. This says that the growth rate of GDP is equal to the growth rate of A (productivity) plus the growth rate of K (capital), adjusted by $\alpha$, and the growth rate of L (labor), adjusted by $1-\alpha$. This is what we knew intuitively at the start, but this makes it explicit how they are related. 

This also shows us the importance of those $\alpha$ terms. With $\alpha<1$, this says that the growth rate of capital gets scaled down. If $\alpha = 1/3$, then if $g_K = .12$, it only contributes $1/3 \times 0.12 = 0.04$ to growth in GDP. This will come up when we talk about production, but this is because of the diminishing marginal product of capital. There is a similar story for labor.

Regardless, the last expression tells us what drives the growth in GDP, given our assumption about the production function in the very first equation I showed.

## Discrete time changes
A different way to see what is going on with the time derivative is to avoid the "very small changes in time" thing going on with the calculus method. Go back to this expression

$$
\ln Y(t) = \ln A(t) + \alpha \ln K(t) + (1-\alpha) \ln L(t).
$$

Now, let's write down a similar expression for GDP in period $t+1$. 

$$
\ln Y(t+1) = \ln A(t+1) + \alpha \ln K(t+1) + (1-\alpha) \ln L(t+1).
$$

And remember that the annual growth rate of something can be approximated by the difference in logs.

$$
g_Y = \ln Y(t+1) - \ln Y(t).
$$

Here, let's plug in what we know about the log of GDP in both those periods

$$
g_Y =  \ln A(t+1) + \alpha \ln K(t+1) + (1-\alpha) \ln L(t+1) - \ln A(t) - \alpha \ln K(t) - (1-\alpha) \ln L(t).
$$

Let's re-arrange this a little to

$$
g_Y =  \left[\ln A(t+1) - \ln A(t)\right] + \alpha \left[\ln K(t+1) -\ln K(t) \right] + (1-\alpha) \left[\ln L(t+1) -\ln L(t)\right].
$$

And notice that what we've got on the right-hand side are just differences in logs. Those are growth rates, so we can write

$$
g_Y =  g_A + \alpha g_K + (1-\alpha) g_L.
$$

We're right back where we got using calculus. The calculus method tends to be a little quicker to apply, but if you are more comfortable doing differences in logs, you'll get to the same answer in the end. The important thing to know is that you can start with an expression like $Y(t) = A(t) K(t)^{\alpha} L(t)^{1-\alpha}$ and figure out what it says about the growth rate of $Y(t)$.
