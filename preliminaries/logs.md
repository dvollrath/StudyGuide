---
title: Logs and percents
parent: Preliminaries
nav_order: 2
---

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

## Logs and level differences
We can use logs to make sense of differences in levels as well. For example, perhaps we want to compare the GDP per capita of the US (60) to the GDP per capita of China (13). An obvious way is to take their ratio. 60/13 = 4.62, or US GDP per capita is about 4.62 times higher than in China. 

Let's do that in a little more math-y way. If $y_{US}$ is GDP per capita in the US, and $y_{CH}$ is GDP per capita in the US, then $y_{US}/y_{CH}$ is the ratio. Now, using the properties of logs and exponentials, we can write

$$
\frac{y_{US}}{y_{CH}} = e^{\ln y_{US} - \ln y_{CH}}.
$$

This just made things more complicated. So why did I bother? Because most of the time we're going to be looking at the log of GDP per capita (and of some other data). So it is useful to understand how to use data on logs and quickly arrive at a comparison of the relative levels that they imply. When you take a look at the data in the [growth facts](http://growthecon.com/StudyGuide/facts/facts.html) section, almost everything is plotted in terms of logs. Differences in logs represent relative levels of variables, just like the difference in log GDP per capita between the US and China captures the relative level of GDP per capita in the two countries.

One last thing to note here is that the units of GDP per capita become irrelevant once we are looking at the ratio or log difference. Above, I said GDP per capita was 60 and 13 for the US and China, respectively. 60 and 13 what? In practice it would be thousands of international dollars, but for our purposes that doesn't matter. If we did measure it in dollars, then we'd get $60,000/13,000 = 4.62$, the same ratio as before. 

Logs differences preserve the fact that the units of measurement don't matter. Let's do this in dollars, and get

$$
\frac{y_{US}}{y_{CH}} = e^{\ln y_{US} - \ln y_{CH}} = e^{\ln 60000 - \ln 13000} = e^{\ln 60 + \ln 1000 - \ln 13 - \ln 1000} = e^{\ln 60 - \ln 13} = e^{1.529} = 4.62.
$$

You should be comfortable about all steps in this calculation. The study guide appeals a lot to differences in logs to see the relative size of two values, and an important reason for that is because it makes the units (1000's of dollars or just dollars) irrelevant to the discussion. Our conclusions about growth should not hinge on whether we measure things by the 1000 or not.

## Logs and exponential growth
The above sections used logs as a way of calculating something (a growth rate, a ratio) from existing data. When we get to writing down models of growth, we'll also be using logs to help us represent the path of some variable over time. 

Here's an example. When we model the economy we'll want to allow for the fact that the population grows over time. In reality, the population growth rate varies year by year, but for our *modeling* purposes we might assume that population grows at exactly the same rate every year. We'd want to confirm that this assumption is plausible by looking at real data on population growth, but if we can justify the assumption then it makes our lives a lot easier.

So let's say we make that assumption, that population $L$ grows at the rate $g_L$ every year. This implies that population experiences exponential growth. Our assumption means that

$$
g_L \approx \ln L_{t+1} - \ln L_t
$$

no matter what year we plug in for $t$. We also know from above that this statement involves an approximation, and we can be more exact with

$$
\ln (1+g_L) = \ln L_{t+1} - \ln L_t
$$

If we start at some base year we denote 0, then we can write $\ln (1+g_L) = \ln L_1 - \ln L_0$ and manipulate this into

$$
L_1 = (1+g_L)L_0.
$$

Now, apply the same logic and we get $L_2 = (1+g_L)L_1$. Plug in for $L_1$ from above, and we get

$$
L_2 = (1+g_L)^2 L_0.
$$

And if we were to keep going, we'd get

$$
L_t = (1+g_L)^t L_0.
$$

For exponential growth, we can find the value of population in period $t$ by just knowing the initial population size ($L_0$) and the growth rate ($g_L$). 

This holds just fine with discrete years. We could also talk about exponential growth where the units of time get arbitrarily small. This would mean we take time to be continuous. The equivalent way to start the continuous time version is to say

$$
g_L = \frac{d \ln L(t)}{dt}
$$

or that the derivative of population with respect to time is constant and equal to $g_L$. Note that the derivative is very much like our approximation above. $d \ln L(t)$ means "the change in log population", much like $\ln L_{t+1} - \ln L_t$. The $dt$ is the "change in time", which above was just equal to one, for one year. Here, the $dt$ refers to an almost infinitely small increment of time. 

Without working through the calculus on this, we can use the last equation given to solve for

$$
L(t) = e^{g_L t}L(0)
$$

which says that the population at moment $t$ can be solved for by knowing initial population size and the growth rate. Both $L_t = (1+g_L)^t L_0$ and $L(t) = e^{g_L t}L(0)$ say roughly the same thing. The first just assumes that time moves in discrete chunks (e.g. years) while the second assumes that time moves continuously.

Our assumption of constant growth in population thus gives us a way of pinning down the size of population in any period of time $t$ we want to think about. We'll use equations like these in our models to describe how certain variables act over time.