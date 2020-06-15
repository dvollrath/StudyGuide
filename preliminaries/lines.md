---
title: Logs and lines
parent: Preliminaries
nav_order: 3
---

## Log differences and slopes
One of the reasons we use logs so much in economic growth is because it is going to make it easy to visualize the growth rate. To see what I mean, go back to the toy data we used to think about growth and levels. Here, I added a new column that is the log of the level of GDP.

| Year | Level | Growth | Growth rate | Ln(GDP) |
|:-----|:------------------|:------|:----|:----|
| 2018 | 100 |    |       | 4.605 |
| 2019 | 104 | 4  | 4.00% | 4.644 |
| 2020 |  98 | -6 | -5.77% | 4.585 |
| 2021 | 103 | 5  | 5.10% | 4.635 |
| 2022 | 105 | 2  | 1.94% | 4.654 |
| 2023 | 107 | 2  | 1.90% | 4.673 |
| 2024 | 109 | 2  | 1.87% | 4.691 |

Let's take that log of GDP and plot it on a graph against the year. You can see in the figure that GDP ended up higher in 2024 than in 2018, but that there was the obvious dip in 2020 involved.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/25.embed"></iframe>

We could calculate the slope of the line in the figure between 2018 and 2019, for example. How do you calculate the slope? Rise over run, or change in y variable over the change in x variable. Because y here is the log of GDP, and x is the year, the slope of the line from 2018 to 2019 is

$$
\frac{4.644 - 4.605}{2019-2018} = \frac{0.039}{1} \approx 0.04.
$$

Notice that the slope of the line in this figure is almost *exactly* the growth rate of GDP from 2018 to 2019. By graphing the *log* of GDP against time, we can *see* the growth rate in our figure. 

The data do not follow a perfectly straight line, but there is no reason we cannot calculate the slope of a hypothetical staight line that runs from 2018 to 2024. The figure below plots this hypothetical line over the top of the actual data.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/27.embed"></iframe>

Notice the hypothetical line is perfectly straight, but is pinned down by the actual data in 2018 and 2024. What is the slope of this hypothetical line? Again, take change in y over change in x.

$$
\frac{4.691 - 4.605}{2024-2018} = \frac{0.086}{6} \approx 0.0143.
$$

0.0143 or 1.43% is exactly what we got for the annualized growth rate from 2018 to 2014. If you go back to the notes on [logs and percents](http://growthecon.com/StudyGuide/preliminaries/logs.html) and recall the equation for the annualized growth rate

$$
g_{Y,t-s} \approx \frac{1}{s-t} \left(\ln Y_{s} - \ln Y_t \right).
$$

you'll see that it is the equation for the slope of a line when the log of GDP is graphed against the time. 

This is why so often we will draw graphs of the log of GDP (or GDP per capita, or human capital, or whatever) on the y-axis and time on the x-axis. The slope of the line we draw tells us the growth rate. And we can see instantly how the growth rate changed over time. For example, in the figure above, you can see immediately that growth from 2019 to 2020 was negative (the slope is negative) and that this growth rate was way below the annualized growth from 2018-2024. You can see that the growth rates from 2020 to 2024 were *above* the annualized growth rate, because the blue line in those years has a steeper slope than the orange line. 

## Theoretical lines and slopes
This link from logs to lines is going to be used a lot when we set up models of growth, so that we can draw out what they imply. Now, rather than starting with data, we're going to start with a model. Let's say that our model of the economy is that GDP is determined by this equation

$$
Y(t) = A(t)
$$

or that total GDP depends on the size of some variable $A$. A might represent productivity, but it isn't relevant at the moment. What our model also has to tell us is how $A$ changes over time. So let's say we assume that $A$ has exponential growth with a constant growth rate of $g_A$. From the section on [exponential growth](http://growthecon.com/StudyGuide/preliminaries/logs.html) we know that we can write

$$
A(t) = (1+g_A)^t A(0).
$$

Now, go back to the original expression for GDP and take logs,

$$
\ln Y(t) = \ln A(t).
$$

Take logs of the expressions for $A(t)$ as well, and plug into this to get

$$
\ln Y(t) = t \ln (1+g_A) + \ln A(0).
$$

One last thing to assume. Let's say that $g_A$ is small, so we can use this approximation,

$$
\ln Y(t) = \ln A(0) + g_A t
$$

What is this? It's the equation for a line graphing the log of GDP against time, t. The y-variable is $\ln Y(t)$. The x-variable is $t$. What is the slope? $g_A$, or the growth rate of productivity. What is the intercept of this line? $\ln A(0)$, or the log value of the initial value of productivity.

We've taken our model of the economy and used it to construct an equation that tells us how to graph log GDP over time. It tells us what the slope of that line is, meaning it tells us the growth rate of GDP. And it tells us what the intercept of that line, meaning it tells us about the level of GDP.

You can play with the interactive figure to see how changing the values of $g_A$ or $A(0)$ would theoretically affect GDP. One thing to note in this figure is that log GDP is denoted as $f(t)$, which just means that log GDP is a function of time.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="https://www.geogebra.org/m/kaxuywsc"></iframe>

The model tells us that if the growth rate $g_A$ is higher, then the growth rate of GDP is higher, which you can see because the slope of the line in the figure is steeper. It also tells us that the level of GDP will be higher at every point in time if $A(0)$ is higher, because the economy starts out with a higher amount of productivity or capital/resources. 

This is a really boring figure. It's just a line. But what we're going to see when we look more deeply into the data on growth is that most countries have really boring figures for log GDP per capita over time. A straight line like this is going to turn out to be an okay approximation for a lot of economic growth. For the moment, know that you have to be comfortable working with figures that plot the log of something over time, and that the slope represents a growth rate, and the intercept represents the baseline level of that something.

