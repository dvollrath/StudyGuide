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



