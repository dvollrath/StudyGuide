---
title: Simple dynamics
parent: Preliminaries
nav_order: 5
---

# Simple dynamics
{: .no_toc }

1. TOC 
{:toc}

## Changes depend on levels
Almost every model we're going to work with involves dynamics, meaning how a variable changes as time passes. For example, we want to know how GDP per capita (the variable) changes year to year. The dynamic models we use are going to tell us what the change in a variable is (or it's growth rate) in terms of the level of the same variable and perhaps a few others. For example, the change in GDP per capita might depend on how big GDP per capita is to begin with. 

A different analogy for you is that the change in your height might depend on how tall you currently are. If you are a baby, and are only about 30 inches long, then you might easily grow another 3 inches in a few months. But if you are me, and are already about six feet tall (and pushing 50), then it is reasonable to expect that I won't grow at all in the next few months. The change depends on the level when it comes to height. 

Almost every model we come across is going to look something like this.

$$
g_X = \frac{Z}{X} - s
$$

where $g_X$ is the growth rate of variable X (GDP, height, capital, etc..) and $X$ is the level of that variable. $s$ is "extra stuff that lowers the growth rate". So this equation captures that the growth rate depends on the level. And in particular, this equation captures that the growth rate of X depends *negatively* on the level of X, just like height. As X gets bigger, the growth rate of X gets smaller. 

The $Z$ here is some *other* variable that might matter for the growth rate in X. If X is GDP, Z might be the level of productivity. If X is height, Z might measure the level of nutrition. Regardless of the definition, this extra variable is positively related to the growth rate of X. 

## The "spreadsheet" method
To analyze the dynamics of X, you have to understand that the equation above holds at any given period in time. So to be more careful, we should write this as

$$
g_{Xt} = \frac{Z_t}{X_t} - s
$$

or that the growth rate of $X$ *at time period t*, depends on the size of Z and X *at time period t*, and also on that extra stuff s that doesn't have to do with Z or X. The growth rate of GDP in 2020 depends on the level of GDP starting 2020 (X) and perhaps on some measure of public health (Z) in 2020. The growth rate of height in a baby's first year of life depends on their height at the beginning of that year (X) and perhaps on nutrition in that first year (Z). It doesn't have to be that simple; the growth rate of height at age 18 could depend on nutrition at ages 0-18. But for our purposes most models will keep it this simple.

One way to analyze what happens with this system is to just plug it into a spreadsheet. How? Well, by the definition of a growth rate, we know that

$$
X_{t+1} = \left(1+g_{Xt}\right)X_t,
$$

and given our simple growth rate formula that means that

$$
X_{t+1} = \left(1+\frac{Z_t}{X_t}\right)X_t = X_t + Z_t - sX_t = (1-s)X_t + Z_t.
$$

In other words, X tomorrow is equal to X today plus some addition due to Z. In the little table that follows we start with X = 100 in 2018. I've made up a bunch of values for Z. We can track how X evolves over time - the dynamics - by applying our formula. The growth rate is easy to calculate given that we know X and Z.

| Year | Xt | Zt | s | gXt |
|:-----|:----|:---|:----|:----|
| 2018 | 100 | 4  | .01 | .030   |
| 2019 | 103 | 3  | .01 | .019  |
| 2020 | 104.97 | 4  | .01 | .028  |
| 2021 | 107.92 | 5  | .01 | .036  |
| 2022 | 111.84 | 5  | .01 | .035  |

And you could keep going as long as I kept feeding you values of Z. If you did keep going, you could draw figures of $X_t$ over time, or $g_{Xt}$ over time, and use those to describe how $X_t$ evolves. You'd have good pictures of the dynamics of $X_t$.

And....that's it. That's all dynamics are. In a brute force sort of way, they just tell you how to program a spreadsheet to keep iterating one period after another, and find the next value of $X_{t+1}$. The models can get really complex, and you can have Z depend on X as well, or add some other variable if you want, but ultimately we're just programming a spreadsheet to take one step at a time, and watching what happens. 

## A picture is worth .... 
The spreadsheet method is fine. But we'd like to have a little better understanding of how the dynamics work, and we'd also like to be able to *predict* where $X_t$ is going to go without having to program a computer every time. So a lot of the analysis we'll do in class is built around understanding what will happen to $X_t$ over time in theory, even without pushing things through the spreadsheet. The beauty of this is that we can see *why* the spreadsheet works the way it does.

So how does one analyze the dynamics of X? This boils down to one main question, and then a few follow-ups once we know the answer to that main question. 

Here's the main question: as time goes on and $t$ gets big, does the growth rate $g_{Xt}$ eventually become constant? 

And here's the possible answers and follow-ups:

1. No. Then we really don't know anything. In this case the only real option is to plug it into the spreadsheet and watch the fun. The system may just be too complex to guess what will happen.

2. Yes, and the growth rate becomes zero. If the growth rate eventually reaches zero, then we know $X_t$ stops changing. The follow-up question will be: how big is $X_t$ at the point when it stops changing. The example here is height. Once you figure out that the growth rate of height goes to zero for everyone, the next question is "how tall are you when you stop growing?". 

3. Yes, and the growth rate is not zero. In this case the variable $X_t$ keeps changing, but at least it keeps changing at a constant rate. The follow-up question will be: what is the "level" of $X_t$ at the point when the growth rate becomes constant? By "level" we mean whether the $X_t$ values tend to be very large, or tend to be very small, or tend to be some medium value, once the growth rate $g_{Xt}$ becomes constant. This one will be easier to see in a picture.

So how do we go about answering the main question. How do we decide if the growth rate eventually becomes constant? There are some fancy math ways to solve what is essentially a differential equation, but in practice it is easier to just look at a picture.

The figure will have the growth rate $g_{Xt}$ on the y-axis, and the ratio $Z/X$ on the x-axis. Given that our equation is very simple, when we graph it we'll just see a straight line that intersects the y-axis at $-s$ and slopes upwards. 

We can draw this out by hand, and will when we talk about this during a class. But ultimately being able to manipulate this system will help it make more sense. This [page](<a href="https://dietzvollrath.shinyapps.io/BabyBasic/" target="_blank">) will take you to an app that draws the figure I'm talking about for you, and allows you to manipulate things like the initial value of Z/X, and the size of the "other stuff" effect coming from $s$. 

If you look at that app, the first panel ("Dynamics") shows an upward-sloping line that graphs $g_{X}$ against $Z/X$. This is the green/blue dashed line, and it has a bunch of black dots on it that we'll get to in a bit. By itself, that dashed green/blue line is pretty boring, and it doesn't tell us anything about what *will* happen. 

Here's the thing that may not be very intuitive. In order to answer our question, we have to know something about the growth rate of $Z_t$. The growth rate of X depends on both X *and* Z, so to know what happens to $g_{Xt}$, we need to know whether Z is changing over time as well. Depending on our model, Z could depend on X itself, and they interact. But in a lot of cases we'll make an easier assumption, which is that $Z$ has a growth rate that is constant. 

$$
g_{Zt} = g_Z,
$$

meaning that at any time $t$, and *regardless of the value of Z or X*, the growth rate of Z is just some constant $g_Z$. The important part here is that it doesn't depend on Z, X, or their ratio. 

We can plot this growth rate in the same figure. The y-axis just measures growth rates. And since $g_Z$ doesn't depend on $Z/X$, we can draw this as a horizontal line. In the app, this horizontal line is green and has a "dot-dash" pattern to it. I've set the value of $g_Z = 0.02$ as the baseline.

Now we are in business. We now know, for any value of Z/X, how big $g_X$ will be, and how big $g_Z$ will be. Which means we know how Z/X will *change*. And once Z/X changes, we're at a different spot along the x-axis. And at that new Z/X value, we can again read off the $g_X$ and $g_Z$ and find again how Z/X will change, and so on and so on. This figure is just a picture of what is going on in the spreadsheet. 

Those black dots in the app show exactly the pattern of $g_X$ and $Z/X$ over time. The app starts with a value of $Z/X$ of 0.2, a value of $g_Z$ of 0.02, and a value for the other stuff $s$ of 0.02. So the growth rate of X at this initial point - time zero - is

$$
g_{X0} = 0.2 - 0.02 = 0.18. 
$$

X start out in period 0 growing by 18%. You can see that in the app as the black point that is farthest to the right. Now what happens? Well, X grows by 18%, and we know that Z grows by 2%. X grows faster than Z, so the *ratio* of Z/X must *fall*. The denominator grows faster than the numerator, so the fraction shrinks. 

But at that lower ratio of Z/X, the growth rate of X must be lower too, right? So we get the second black dot from the right. And the process continues over and over again. The black dots track this period by period, and you can see how they collapse to the left. 

The growth rate $g_X$ collapses towards the horizontal green line, which remember was the growth rate of $g_Z$. So it looks like the answer to our big question is "Yes, the growth rate of X becomes constant, and it becomes constant at a value equal to the growth rate of Z." 

You can see this as well in the second panel of the app, which plots the growth rate of X over time. This figure is just showing you the $g_X$ indicated by the black dots, but not plotting them against the time period, rather than against the Z/X ratio. This figure shows clearly that the growth rate drops over time and is headed towards the value of $g_Z$. 

Okay, it seems that $g_X$ collapses to $g_Z$ over time, but is that just a special case given the parameters I chose? We could use math to solve the differential equation and prove that it is a general result, but here we can use the app to see that this has to work no matter what. 

First, try using the sliders on the left to change the initial Z/X ratio. No matter what, the black dots collapse to the point where $g_X$ is equal to $g_Z$. That's because if Z/X is big enough, the growth rate of X is higher than the growth rate of Z (the green/blue dashed line is above the horizontal green line) and so the Z/X ratio falls. If Z/X is *small* enough (set the initial Z/X to like .005) then the growth rate of X is *lower* than the growth rate of Z, and the ratio Z/X rises. No matter what, the dynamics of Z and X push the system to the point where $g_X$ collapses to $g_Z$. 

Second, try adjusting the values of $g_Z$, or the value of the "other stuff" that affects the growth rate. This doesn't change the fact that the black dots always end up approaching the value of $g_Z$, even if $g_Z$ changes. You'll see that the size of the Z/X ratio at which this happens is moving around, but nevertheless we always see that the growth rate of X collapses to the growth rate of Z. 

Note that the geometry of this dictates the outcome. Because the growth rate of X is *increasing* in Z/X, and the growth rate of Z is constant with respect to Z/X, it will *always* be the case that the growth rate of X always ends up at the growth rate of Z. 

## Follow-up
Now, given that we know the growth rate collapses to $g_Z$, what about our follow-up question? What is the "level" of X? That is, how big is X over time? Go back to the Dynamics panel of the app. You can see that the ratio of Z/X is collapsing towards the red vertical line. 

The system eventually comes to rest at this point. From that we know that the level of X is just proprtional in the long-run to the value of Z. In the figure, it looks like that ratio is about Z/X = 0.04. So the "level" of X in the long run is just going to be equal to X = Z/.04. 

This is another counter-intuitive (or maybe not) consequence of the dynamics. The size of X in the long-run depends on the size of Z. Z is very important to the value of X because it determines the growth rate of X. And because it determines the growth rate of X, it ultimately determines how big X will be. 

You can plot the level of X over time, but only if you know the initial value of Z. Remember, all our dynamics tell us is the steady state ratio of Z/X. So to know X specifically, we have to know Z specifically. Given a starting value of Z of 2, we can figure out Z at any given point in the future (remember, it has a constant growth rate), and thus we can figure out X at any given point in time. That's the last panel of the app, on the level. The black line shows you how the log of X (remember, that's how we study things over time) shows it growing quickly at first (the high slope) and then that growth rate collapses to $g_Z$. The level of X is captured by that green dashed line, which shows us where X is headed over time. The intercept of that green line depends on the size of Z to start with. 

## Math and definitions
Now that we can see how this dynamic system works, we can be a little more specific about some mathematical outcomes, and about some definitions we'll use when talking about dynamic systems. 

### State variable
First, let's define something called a "state variable", which in our example is the *ratio* Z/X. The state variable almost always *involves* the variable we care about - X in this case - but often also involves other variables - like Z. A lot of the work involved with dynamic models lies in figuring out what the right state variable to look at is. The state variable, if you like, is the thing we put on the x-axis of our figure. Every dynamic system has a state variable.

### Steady state
Second, define the "steady state" of a dynamic system. A steady state has a couple of ways to define it. But the common way is to say that the steady state is a value of the state variable that ensures that next period the state variable is exactly the same - the state variable is "steady". A different way to say this is that the steady state is the value of the state variable such that the growth rate of the state variable is zero.

In our example, the steady state was at the value of Z/X where the red vertical line was located. Notice the system "came to rest" there. The value of Z/X was "steady" here. We can do a little math and figure out exactly what the value of Z/X is. 

To see that, start by asking what the growth rate of Z/X - the state variable - is. We know how to do this with logs and derivatives. The growth rate of Z/X, $g_{ZX}$, is

$$
g_{ZX} = g_Z - g_X.
$$

We just said that a steady state is where the growth rate of the state variable is zero. So set the left-hand side to zero, and this means that the steady state is where

$$
g_Z = g_X.
$$

That confirms to what you can see in the app. The system comes to rest at the point where $g_X = g_Z$. Plug in what you know about $g_X$, and this means the steady state is

$$
g_Z = \frac{Z}{X} - s
$$

which you can solve for the ratio Z/X. This gives you

$$
\frac{Z}{X} = g_Z + s
$$

as the *steady state* value of the state variable Z/X. This is the ratio that ensures the growth rate of X equals the growth rate of Z, and so the ratio Z/X stays constant. From the baseline in the app, $g_Z = 0.02$ and $s= 0.02$, so this means the steady state value of Z/X = 0.02 + 0.02 = 0.04. 

### Stability
The third concept to consider is stability. A steady state is said to be "stable" if the dynamic system ensures that if the state variable is not at the steady state, it will head towards the steady state. In more simple terms, a dynamic system is stable if it always ends up at a steady state, no matter where we start the state variable.

In the app, you moved around the initial Z/X ratio and saw that no matter what the dynamics ensured we always ended up at Z/X = 0.04 and with $g_X = g_Z = 0.02$. Even if you changed the exact values of parameters, the system always ended up at a steady state.

In our system this is because the growth rate of X *increases* with Z/X, which if you think about it means that the growth rate of X *decreases* as X gets bigger (holding Z constant). In general, stability is going to require that the growth rate of something (X) gets smaller as X gets bigger. This is what keeps things from spiralling out of control.

Establishing stability in math involves more advanced math than we are interested in doing. For us, we will always analyze stability by just examining figures like the one in the app.

### Level
The last concept to define is the "level" of a variable X in a dynamic system. This isn't a well-defined term across fields, this is a definition that *I* use in this class, but it would make sense to a lot of economists. 

The "level" of variable X is the value it would have *if the system started in steady state*. So this level is a hypothetical value that asks you to essentially ignore all the cool dynamics, and just think about what X would be if the system had already settled into the steady state. 

In our case, what is the level of X? If the system were in steady state, then we know that the state variable Z/X would be equal to $g_Z + s$, 

$$
\frac{Z}{X} = g_Z + s
$$

which you can re-arrange to 

$$
X = \frac{Z}{g_Z + s}.
$$

This is the "level" I'm talking about. This is the hypothetical value of X we'd have if we were in steady state at the first period. It tells me "how big" X is - or would be - in our dynamic system when it settles down. 

What's the level of X at any specific time period? That depends on the value of Z at that period. Remember, we said that Z grew at a constant rate, so it must be that

$$
Z_t = Z_0 (1+g_Z)^t
$$

so the level of X at some point in time t is

$$
X_t^{Level} = \frac{Z_0 (1+g_Z)^t}{g_Z + s}.
$$

We like to graph things in logs, so take logs of this

$$
\ln X_t^{Level} = \ln Z_0 - \ln (g_Z + s) + t \ln (1+g_Z)
$$

and using our approximation that for small growth rates that $\ln (1+g_Z) \approx g_Z$ we can write

$$
\ln X_t^{Level} = \ln Z_0 - \ln (g_Z + s) + t g_Z.
$$

This is the equation for a line, and in fact is the line graphed in the "Level" panel of the app in the green dashed line. If you change the paramters, then the blue dashed line shows you the new level of X at any given point in time with those parameters. 

The level is something like a target for the actual path of X. It is what the real X approaches over time.

## Revisit the questions
Go back to the big questions I said we'd ask about. The first was whether X had a constant growth rate eventually. That question is really, "Does this dynamic system have a steady state?". 

Once we know that answer, the follow-up question was really "What is the equation for the level of X in the steady state". 

Note that it really doesn't matter for us here whether the growth rate of X in the long-run was zero or not. If you set $g_Z = 0$ in our model, then the level of $X_t^{Level}$ is fixed by $Z_0$ and $g_Z +s$. If $g_Z \neq 0$, then it either grows or shrinks over time. 