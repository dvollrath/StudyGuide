---
title: Why is growth slowing down?
parent: Applications and Questions
nav_order: 5
---

# Why is growth slowing down?
{: .no_toc }

1. TOC 
{:toc}

## 21st century slow growth
You may be vaguely aware of the complaint that the growth rate of GDP per capita (and of GDP) has slowed down. Here is the 10-year rolling growth rate of GDP per capita to illustrate when this really kicked in.

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/155.embed"></iframe>

From peaks of 2.5-3 percent per year in the 1960s, the growth rate of GDP per capita fell to below or around 1% during the 21st century. One thing to note here is that this predates the financial crisis of 2009 (or the coronavirus epidemic of 2020), and that growth was slowing down early in the 21st century. 

You can also see this in the log GDP per capita plot. In the 21st century the path of log GDP per capita dropped below the BGP it was on in the 20th century, apparently. So far we haven't returned to the old BGP, and hence it is worth wondering if this represents a permanent shift to a lower growth rate. 

<iframe width="900" height="600" frameborder="0" scrolling="no" src="//plotly.com/~dvollrath/61.embed"></iframe>

Let's think about what might be going on here. There are two possibilities, really. One, perhaps the growth rate of productivity, $g_A$, is now permanently lower. This might be the case if population growth slowed down (both in the US and around the world) meaning that the growth rate of researchers slowed down ($g_R$), and we are not innovating as quickly as before. Two, this might represent the beginnings of transitional growth to a lower BGP, but eventually we will return to a growth rate of GDP per capita around 1.8% once we get to that new, lower BGP.

I tend to favor the second option, as it isn't obvious (yet) that innovation slowed down. The evidence presented below suggests that what is going on is more of a one-time shift in demographics and the pattern of spending, and not some permanent change in how innovative we are as an economy. 

## Accounting for the slowdown
The first step here is to see what actually drove the slowdown. We can do this using the same kind of accounting that we did [here](https://growthecon.com/StudyGuide/solow/account.html). First, establish that the production function is

$$
y_t = \left(\frac{K_t}{Y_t})^{\alpha/(1-\alpha)}h_t A_t
$$

and we can break down the growth rate of GDP per capita into 

$$
g_y = \frac{\alpha}{1-\alpha}g_{KY} + g_h + g_A.
$$

In what is about to follow, I'm going to do things over different periods. That is, I'll calculate the annualized growth rate of GDP per capita, $g_y$, from 1960-1970, say. And then I'll calculate the three growth rates on the right for the same periods, using $\alpha = 0.3$ as my assumption about the elasticity. 

| Period | $g_y$  | $\alpha/(1-\alpha)g_{KY}$ | $g_h$ | $g_A$ |
| :----- | :----- | :----- | :----- | :----- | 
|1950-2000 |     2.25|    -0.22|     0.96|     1.51 |
|          |         |         |         |          |
|1950-1960 |     1.78|     0.05|     0.08|     1.65 |
|1960-1970 |     2.92|    -0.21|     0.96|     2.16 |
|1970-1980 |     2.07|    -0.08|     1.63|     0.52 |
|1980-1990 |     2.32|    -0.37|     1.25|     1.44 |
|1990-2000 |     2.17|    -0.52|     0.88|     1.81 |
|          |         |         |         |          |
|2000-2016 |     1.03|    -0.13|    -0.14|     1.31 |
|2006-2016 |     0.67|    -0.15|    -0.25|     1.06 |
|1998-2008 |     1.62|    -0.09|     0.27|     1.43 |
|2000-2008 |     1.21|     0.05|     0.05|     1.11 |

