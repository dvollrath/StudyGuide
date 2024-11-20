---
title: An exact solution
parent: Visualizing the Solow model
grand_parent: Solow and Balanced Growth
nav_order: 1
---

# An exact solution
{: .no_toc }

1. TOC 
{:toc}

It is possible to write down an equation for the capital/output ratio at any given point in time, and thus for GDP per capita at any given point in time. This is useful for programming a simulation, and has some intuition built in as well.

## Solving the difference equation
Start with the equation for growth in capital/output

$$
g_{K/Y} = (1-\alpha)\left[s_I \frac{Y_t}{K_t} - \delta - g_A - g_L \right].
$$

and to save some notational clunkiness define $z_t = K_t/Y_t$ for the time being. This is purely to save me some typing. Nothing important is changing. 

$$
g_{z} = (1-\alpha)\left[s_I/z_t - \delta - g_A - g_L \right].
$$

Next, expand out the $g_z$ term on the left into what we know it represents in terms of the growth rate of z.

$$
\frac{z_{t+1}-z_t}{z_t} = (1-\alpha)\left[s_I/z_t - \delta - g_A - g_L \right].
$$

Multiply through by $z_t$ and re-arrange until you have

$$
z_{t+1} = (1-\alpha)s_I + \left[1 - (1-\alpha)(\delta + g_A + g_L)\right] z_t.
$$

This is a linear, first-order difference equation. Given the value of the capital-output ratio in time $t$, it tells you what the capital/output ratio is in $t+1$. There is nothing magic about this, it is just a different way of writing the growth rate equation we started with. 

However, this linear first-order difference equation has a nice standard solution for the value of $z_t$ at any given point in time. Smarty math types tell us that if there is a linear first-order difference equation of the form:

$$
y_{t+1} = a y_t + b
$$

then the solution is

$$
y_t = a^t y_0 + (1-a^t)\frac{b}{1-a}
$$

We can apply that solution to our equation for the capital/output ratio. In that equation, $z_t$ is obviously the time-varying value. $a = 1 - (1-\alpha)(\delta + g_A + g_L)$, and $b = (1-\alpha)s_I$. The solution is therefore

$$
z_t = \left(1 - (1-\alpha)(\delta + g_A + g_L)\right)^t z_0 + \left(1-[1 - (1-\alpha)(\delta + g_A + g_L)]^t \right)\frac{s_I}{\delta + g_A + g_L}.
$$

Or, in capital/output terms explicitly

$$
K_t/Y_t = \left(1 - (1-\alpha)(\delta + g_A + g_L)\right)^t K_0/Y_0 + \left(1-[1 - (1-\alpha)(\delta + g_A + g_L)]^t \right)\frac{s_I}{\delta + g_A + g_L}.
$$

This looks very ugly, and the terms raised to the t powers are hard to get your head around. If we just use the term "a" for those, this will make more sense.

$$
K_t/Y_t = a^t K_0/Y_0 + \left(1-a^t \right)\frac{s_I}{\delta + g_A + g_L}.
$$

Now it is more clear that the capital/output ratio at time t is a weighted average of the initial capital/output ratio, $K_0/Y_0$, and the steady-state value, $s_I/(\delta+g_A+g_L)$. This just says that the capital/output ratio will be between those two values, which makes sense, as we know that from any given starting point, the capital/output ratio is going to collapse back to the steady state. 

How does those weights work? If $a<1$ (and it will given our parameters) then follow along as we look at some time values. When $t=0$, $a^0 = 1$ and so $1-a^0 = 0$. That means $K_0/Y_0 = 1 \times K_0/Y_0 + 0$. This is good, as the equation predicts that the capital/output ratio in period zero is exactly equal to the capital/output ratio in period zero. It would be kind of embarrassing if that didn't work out.

As $t$ rises, what happens? Remember, $a<1$, so this means as $t$ goes up you are multiplying a fraction (a) by a fraction over and over again. The value of $a^t$ goes towards zero, which means $1-a^t$ goes towards one. As time passes, the weight shifts away from the initial capital/output ratio and towards the steady state. The equation is capturing exactly the movement we expect, only it is giving us the exact values. As $t$ goes to infinity the $a^{\infty} \rightarrow 0$ and $K/Y$ approaches the steady state value. 

The mechanics work the way we think. What about that value of $a$. Recall that this is

$$
a = 1 - (1-\alpha)(\delta + g_A + g_L)
$$

and this dictates the *speed* at which the economy approaches the steady state. If $a$ is close to one, then it takes a long time for $a^t$ to get pushed to zero, and for the economy to hit steady state. When is $a$ close to one? When $(1-\alpha)(\delta + g_A + g_L)$ is small. The smaller are these values, the longer it takes to get to steady state. And in contrast, the larger these values, the smaller is $a$, and the faster the economy approaches steady state. 

The best way to see the effects of these terms is to go back to the [Solow app](https://dietzvollrath.shinyapps.io/TestBasic/) and play with these parameters. First, you have to set the app up to see an economy trying to converge to the steady state. Therefore you need to put the initial capital stock, $K_0$, down to something like 0.5 or 1. This will then give you an economy where K/Y is approaching steady state, and you can see how GDP per capita approaches the BGP as well. 

Second, once you've got $K_0$ set to a low value, go and play with the $\alpha$ parameter. Watch the figure on the K/Y ratio panel. As you *raise* $\alpha$, what happens? The path of K/Y gets flatter, and it takes longer for the K/Y ratio to reach steady state. Does this make sense? If $\alpha$ gets bigger, then the value of $a$ gets bigger as well, and our equation does say that things should slow down. 

To see a little better how this is operating, go to the K/Y dynamics panel. This shows you how the growth rate of K/Y relates to the level of K/Y. As you raise $\alpha$, note that this curve flattens out. While it is always negatively sloped, as $\alpha$ gets bigger the growth rate of K/Y is less affected by the level of K/Y. And for any given $K_0/Y_0$ the growth rate gets closer to zero when $\alpha$ rises. The economy approaches the steady state more slowly when $\alpha$ gets higher. 

You can also get effects like this from $\delta$, $g_A$, and $g_L$ but they are a lot harder to see in the app (I think) because they are also moving around the steady state itself, and thus it isn't obvious what is going on.

*Why* does $\alpha$ have this power over the approach to steady state? Recall that $\alpha$ is the elasticity of GDP with respect to capital. As this parameter gets bigger, it is telling us that the elasticity is larger, but also that the diminishing returns to capital are less severe. The entire reason we said that the economy approached steady state was because of those diminishing returns, and the fact that as we accumulate capital the marginal contribution to GDP keeps falling. 

The larger is $\alpha$, the less severe is the diminishing return, and so it is possible for capital accumulation to keep pushing up output by a lot. If as we add K we also get a lot of Y, then K/Y ratio doesn't rise by very much. On the other hand, the smaller is $\alpha$, the more severe are the diminishing returns. As we add K, the contribution to Y gets very small, so the K/Y ratio rises by a lot, pushing us close to steady state very quickly.

## The path of GDP per capita
It is straightforward to extend this logic to GDP per capita. Remember that the level of GDP per capita is

$$
\ln y_t = \frac{\alpha}{1-\alpha} (\ln K_t/Y_t) + \ln A_0 + g_A t.
$$

and now we can fill in an exact value for $K_t/Y_t$. We've got that

$$
\ln y_t = \frac{\alpha}{1-\alpha} \left(\ln \left[a^t K_0/Y_0 + \left(1-a^t \right)\frac{s_I}{\delta + g_A + g_L}\right] \right) + \ln A_0 + g_A t.
$$

The $g_A t$ term just chugs along every period adding to GDP per capita through productivity growth. The mess inside the parentheses captures the fact that the capital/output ratio changes as it heads to steady state. The speed with which GDP per captia approaches it's BGP depends on this capital/output ratio, and hence on $a$. If you go to the Solow app, you can look at the panel on Log GDP per capita and see how that curve "flattens" out as you raise $\alpha$. This is a little harder to see, however, as changing $\alpha$ also changes the level of the BGP due to that $\alpha/(1-\alpha)$ terms. 


