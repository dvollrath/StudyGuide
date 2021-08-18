---
title: Logs and percents
parent: Preliminaries
nav_order: 2
---

# Logs and percents
{: .no_toc }

1. TOC 
{:toc}

## Natural logs
You should be familiar with how logs work. You'll recall that logs have a base (e.g. "log base 10"). In economics we almost always work with logs that have a base of $e$, the mathematical constant that is approximately 2.718. The *natural log* of something is the log using base $e$. This is often denoted using $\ln$, as opposed to $log_e$. In this study guide, every time you see a reference to "log", I mean "natural log", and I'll use $\ln$ at all times to refer to taking the natural log of something. 

If we say that that the natural log of $z$ is equal to $x$,

$$
\ln z = x
$$

then this means that

$$
z = e^x.
$$

There are several properties of natural logs that we will use over and over again, and you need to know these well.

* $\ln 1 = 0$
* $\ln e = 1$
* $\ln 0 \rightarrow -\infty$
* $\ln (1 + z) \approx z$ when $z$ is small (e.g. $z<.1$). 
* $\ln xz = \ln x + \ln z$
* $\ln x/z = \ln x - \ln z$
* $\ln x^{\alpha} = \alpha \ln x$
* $d \ln x/dx = 1/x$, or the derivative of $\ln x$ with respect to $x$ is $1/x$.

___
Reminder 
{: .label } 
This is some more mathematical material you have to be comfortable with to work through the study guide. If this doesn't ring a bell, look to do some math review before this course.

___

## Using logs to calculate annualized growth rates
Logs are handy because they allow us to turn multiplication and division problems into addition and subtraction problems. This can be really useful in calculating annualized growth rates, where if you recall from the [prior section](http://growthecon.com/StudyGuide/introduction/levels.html) involved a pretty annoying formula,

$$
g_{Y,t-s} = \left(\frac{Y_{s}}{Y_{t}}\right)^{1/(s-t)} - 1.
$$

Let's manipulate this using logs. First, add one to both sides so we have

$$
1+g_{Y,t-s} = \left(\frac{Y_{s}}{Y_{t}}\right)^{1/(s-t)}
$$

and then take the log of both sides

$$
\ln(1+g_{Y,t-s}) = \ln \left[\left(\frac{Y_{s}}{Y_{t}}\right)^{1/(s-t)}\right].
$$

Now we need to apply several of our rules about natural logs. Start with the right-hand side. First, we can bring down the exponent. Second, we can turn the division into a subtraction.

$$
\ln(1+g_{Y,t-s}) = \frac{1}{s-t} \left(\ln Y_{s} - \ln Y_t \right).
$$

Then, since the annualized growth rates we work with tend to be small, we can convert the left-hand side into $g_{Y,t-s}$, and we have

$$
g_{Y,t-s} \approx \frac{1}{s-t} \left(\ln Y_{s} - \ln Y_t \right).
$$

This says that the annualized growth rate is approximately equal to the difference in the log of GDP in the two end points, divided by the number of years.

Confirm this using the numbers from the table in the [prior section](http://growthecon.com/StudyGuide/introduction/levels.html). We has $Y_t = 100$ and $Y_s = 109$. This gives us

$$
g_{Y,t-s} \approx \frac{1}{6} \left(4.691 - 4.605 \right) = .01433
$$

or very close to 1.45%. If you used more decimal places in the natural logs of 100 and 109, you'd get an even closer approximation. 


## Logs and exponential growth
The above sections used logs as a way of calculating something a growth rate (which is like a percent change) from given data on the level of some variable (like GDP). We can also go the other way, and if you are given a growth rate you can work out the level of some variable. 

Here's an example. Let's say we are talking about population over time, denoted by $L_t$. You know the initial population at time zero is $L_0$, and you know that it has a constant growth rate of $g_L$ (maybe like 1% or 2%). What's the size of the population at any given time $t$? 

Well, start from period 0. This would then imply that population in period 1 was

$$
L_1 = (1+g_L)L_0.
$$

From period 1 to period 2 it would be that $L_2 = (1+g_L)L_1$, and so on. But if we know how to write $L_2$ this way, and it depends on $L_1$, and $L_1$ depends on $L_0$, then we can write

$$
L_2 = (1+g_L)^2 L_0.
$$

$L_2$ is just the base level of population, $L_0$, with the growth rate applied twice. This holds in general, and therefore

$$
L_t = (1+g_L)^t L_0.
$$

The value of population in any period $t$ just depends on the growth rate $g_L$, the number of periods $t$, and the initial value, $L_0$. We don't need to write down the value in every period to find the value in period $t$. If you have the growth rate and initial value, you can find the value in any subsequent period. 

If you take logs of this, you get the handy solution that

$$
\ln L_t = t \ln (1+g_L) + \ln L_0. 
$$

Apply our favorite trick to logs of $1+g_L$, and you get

$$
\ln L_t \approx \ln L_0 + g_L t.
$$

The log of $L_t$ depends on the log of initial population plus an adjustment which is just the growth rate $g_L$ times the number of periods. We'll get to this next section, but note that this is a lot like an equation for a line, where $t$ is the x variable. This just says that given the growth rate and initial level of a variable, you can find the *log* value of that variable in some period t. 

This holds just fine with discrete years. We could also talk about exponential growth where the units of time get arbitrarily small. This would mean we take time to be continuous. The equivalent way to state the continuous time version is to say

$$
L(t) = e^{g_L t}L(0)
$$

which says that the population at moment $t$ can be solved for by knowing initial population size and the growth rate. Both $L_t = (1+g_L)^t L_0$ and $L(t) = e^{g_L t}L(0)$ say roughly the same thing. The first just assumes that time moves in discrete chunks (e.g. years) while the second assumes that time moves continuously.

Note that if you take the log of this continuous time version you get

$$
\ln L(t) = \ln L(0) + g_Lt
$$

which is identical to what you get with the discrete time version. Once we know the growth rate and initial level, we can find the *log* value of a variable at any point in the future. 

Our assumption of constant growth in population thus gives us a way of pinning down the size of population in any period of time $t$ we want to think about. We'll use equations like these in our models to describe how certain variables act over time.

## Logs and level differences
A last way to use logs is related to using logs to find percentage growth. Here instead we're interested in how logs related to ratios of variables, like the ratio of GDP per capita in the US to that in China. Let's say that GDP per capita in the US is 60, but in China is only 15. Then the ratio is 60/15 = 4. Or US GDP per capita is 4 times higher than in China.

What we'll often encounter in this class is that things like GDP per capita are shown in a graph or figure in log terms. That is, a figure might show that *log* GDP per capita is 4.094 (the natural log of 60), while the *log* GDP per capita in China is 2.708 (the natural log of 15). You'll see in the next section of the Study Guide why a lot of figures will work with logs. When you take a look at the data in the [growth facts](http://growthecon.com/StudyGuide/facts/facts.html) section, almost everything is plotted in terms of logs. For now, take it as a given. 

If you know the log GDP per capita in both, can you find the ratio? Sure. But let's do that in a little more math-y way. If $y_{US}$ is GDP per capita in the US, and $y_{CH}$ is GDP per capita in the US, then $y_{US}/y_{CH}$ is the ratio we want (and we know is equal to 4). Using the properties of logs and exponentials, we can write

$$
e^{\ln y_{US} - \ln y_{CH}} = \frac{y_{US}}{y_{CH}}.
$$

This looks complicated, but it is just an application of the various rules about logs. You can work out on the right that this reduces to the ratio. But notice that on the right we have the difference in logs. This just tells us how to translate the difference in logs into the ratio. 

Plug in what we know. 

$$
e^{4.094 - 2.708} = e^{1.386} = 3.999 \approx 4.
$$

The only reason the answer isn't exactly right is because we only used three decimal places for the logs. But once we know the difference in log values, we know the ratio. 
