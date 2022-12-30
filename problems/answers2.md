---
title: Chapter 2
parent: Problems
nav_order: 1
---

# Chapter 2 Problems
1. TOC 
{:toc}

## Question 1
These are short questions to check your understanding of the basics of the Solow model.

### Part A
{: .no_toc }
If $s_I = 0.2$, $g_L = 0.01$, $g_A = 0.02$, and $\delta = 0.05$, what is the steady state capital/output ratio? 

**Answer:** Using equation 2.19, the steady state capital ratio is $K/Y = s_I/(\delta + g_A + g_L)$, so in this case the specific answer is $K/Y = 0.2/(0.05 + 0.02 + 0.01) = 2.5$.

### Part B
{: .no_toc }
In steady state, what is the growth rate of the capital stock, $g_K$, in the Solow model? 

![Figure 2.2](/figures/fig-ch2-fig2.png)

**Answer:** Figure 2.2 established that regardless of the starting value of $K/AL$, it always moves until it reaches a steady state. At that steady state it must be that $g_K = g_A + g_L$, such that the numerator and denominator of $K/AL$ grow at the same rate. 

### Part C
{: .no_toc }
If the economy is at the Golden Rule level of consumption, what is the rate of return on capital, $r$?

**Answer:** If the economy is at the Golden Rule, then it must be that $s_I^{GR} = \alpha$, as in equation 2.24. From equation 2.20 we know that in steady state the return on capital is $r^{ss} = \alpha (g_A + g_L + \delta)/s_I$. Combining those two pieces of information, then $r^{ss} = g_A + g_L + \delta$ at the Golden Rule.

### Part D
{: .no_toc }
Along a balanced growth path, what is the growth rate of consumption per capita?

**Answer:** Along a BGP it is the case that $g_C = g_Y$, so therefore $g_C = g_A + g_L$. The growth rate of consumption per capita is $g_c = g_C - g_L$, so $g_c = g_A$ along a BGP. In other words, consumption per capita has to grow at the same rate as GDP per capita along a BGP to be consistent with the assumption that the fraction of GDP consumed stays constant.

### Part E
{: .no_toc }
Along a balanced growth path, does $s_I$ affect the growth rate or the level of GDP per capita?

**Answer:** Section 2.3.1 went over the effect of $s_I$ on the economy. In Figure 2.5 it shows that changing $s_I$ would impact the *level* of GDP per capita along a BGP, but that the growth rate of GDP per capita would remain equal to $g_A$.

### Part F
{: .no_toc }
In the expression $g_y = \alpha(g_K - g_A - g_L) + g_A$, what term(s) capture the concept of "transitional growth".

**Answer:** The $\alpha(g_K - g_A - g_L)$ term captures transitional growth that takes place while the economy moves from an initial value of $K/AL$ towards the steady state.

## Question 2
For each of the following scenarios, assume that the economy begins in a steady state. For each scenario, draw three figures showing how each of the following terms evolve over time: the growth rate of GDP per capita, the log of GDP per capita, and the size of the $K/AL$ ratio. 

### Part A
{: .no_toc }
The gross capital formation rate, $s_I$, drops to a lower value and stays there permanently.

**Answer:** Answering this requires you to evaluate the dynamics of the Solow model as in Section 2.3.1 or 2.3.2. In this case, the situation inovlves a shift *down* in $s_I$, the opposite of what is discussed in Section 2.3.1. Hence the results should look opposite as well. In words, what happens is that after this change, the actual $K/AL$ ratio is now higher than the steady state $K/AL$ ratio. By lowering $s_I$ the economy is saying it wants a lower capital stock relative to productivity and labor.

How does the economy get to this lower $K/AL$ ratio? $g_K$ falls to something less than $g_A + g_L$, so $K/AL$ shrinks. But slower capital growth means slower growth in GDP per capita, given $g_y = \alpha(g_K - g_A - g_L) + g_A$, so it must be that $g_y < g_A$ as the economy transitions to the new steady state. The economy has growth in GDP per capita slower than trend as it adjusts. 

Ultimately the *level* of GDP per capita will be lower, as the slower growth in GDP per capita pushes the economy down to a lower BGP. 

To see this in figures that the problem asks for, it is helpful to use <a href="https://dietzvollrath.shinyapps.io/SolowBasic/" target="_blank">this app</a>, which will open in a separate window if you use the link, or is embedded below. This app is a simulation of the Solow model, and allows you to adjust the parameters to see what happens in response. 

<iframe height="800" width="100%" frameborder="no" src="https://dietzvollrath.shinyapps.io/SolowBasic/"> </iframe>

In that app, the economy begins at steady state, and is on a BGP. When you adjust a parameter, like $s_I$, you'll see how the economy responds. In the app, the economy starts with $s_I = 0.20$. For this problem, use the slider on the left to adjust $s_I$ down to 0.10, a lower value. You'll see several things happen in the four tabs of results ("K/AL ratio", "Log GDP pc", "Growth rate", and "K/AL dynamics").

- "K/AL ratio": The $K/AL$ ratio falls over time. It starts at a value of about 3.5 and slowly drifts down to a lower value. Note that it doesn't drop immediately, it takes time for the $K/AL$ ratio to adjust to the new value of $s_I$.

- "Growth rate": The economy adjusts to the lower $s_I$ by having $g_K$ fall, which is what ensures that $K/AL$ drifts down. Because $g_K$ is now less than $g_A + g_L$, it must be that $g_y$ is less than $g_A$. In the "Grotwh rate" tab you can see that the growth rate, $g_y$ falls below the long-run value, but slowly recovers back to the the long-run value of $g_A$. The effect of lowering $s_I$ on the growth rate is temporary. 

- "Log GDP per capita": The effect of the changes in the growth rate show up in the level of GDP per capita. In this tab, the temporary lower growth rate results in log GDP per capita moving slowly to a lower BPG (from the blue dashed line to the green dashed line). The slopes of those two BGP lines are both $g_A$, the long-run growth rate. In the long run the economy will be on the lower BGP, with a growth rate of $g_A$ again. But it will have a lower *level* of GDP per capita than before. The effect of $s_I$ on the level of GDP per capita is permanent, but the effect of $s_I$ on the growth rate is temporary.

- "K/AL dynamics": This figure wasn't asked for in the problem, but reflects the shift that occurs in Figure 2.2 of the book. The blue dashed line is the original position of the $g_K$ curve, and the original steady state of $K/AL$ was where it intersected the dotted green line (at about 3.5) which measures the size of $g_A + g_L$. When $s_I$ falls, it shifts the $g_K$ curve to the left (lower). That's represented by the solid green line, which shows a lower steady state $K/AL$; note that it intersects the dotted green line at a lower value of $K/AL$ (at about 1.5). In terms of dynamics, the black dots represent the actual position of the economy period by period. Immediately after $s_I$ falls, the $g_K$ *curve* falls, but the actual value of $K/AL$ is still at the old steady state. The growth rate $g_K$ immediately falls below $g_A + g_L$, which starts pushing $K/AL$ to the left. The black dots track period by period that $K/AL$ falls, and $g_K$ slowly rises as the economy approaches the steady state. 

As an alternative to the app, you can also use [this spreadsheet](solowmodel.xlsx) to evaluate the change. In that spreadsheet, on the first tab, you can adjust the parameters of the model

### Part B
{: .no_toc }
The population growth rate, $g_L$, rises to a higher value and stays there permanently.

**Answer:** To analyze this change, you can use the same app. Hit "Reset to baseline" at the top left to put the parameters back to their starting point. Then adjust the slider for population growth to a higher value. You'll be able to cycle through the tabs to see the impact of this, which will reflect a temporary effect of lowering the growth rate of GDP per capita, and a permanent effect of lowering the level of GDP per capita and lowering the steady state value of $K/AL$.

### Part C
{: .no_toc }
The growth rate of productivity, $g_A$, rises to a higher value and stays there permanently.

**Answer**: Again, you can use the app to see what happens, just make sure you hit "Return to baseline" before you adjust $g_A$ to a higher value. Note that this example looks slightly different than the other two. By increasing $g_A$, the economy will now have a permanently higher growth rate. Increasing $g_A$ also *lowers* the steady state size of $K/AL$, as it becomes harder for capital growth to keep up with productivity and labor growth. Despite the drop in steady state $K/AL$, because of the higher growth rate $g_A$ the economy grows faster in the long run.

## Question 3
For each of the following scenarios, assume that the economy begins in a steady state. For each scenario, draw three figures showing how each of the following terms evolve over time: the growth rate of GDP per capita, the log of GDP per capita, and the size of the $K/AL$ ratio. 

### Part A
{: .no_toc }
There is a one-time increase in the size of the labor force, $L$ (e.g. a war causes a sudden in-migration of refugees). The growth rate of population before and after this shock remains the same, $g_L$. 

**Answer**: This problem has the same structure as Question 2, asking you to evaluate the dynamic effects of a change to the economy. But here the shock or change to the economy affects one of the variables *directly*, and not through a parameter. In this case the labor force increases outside of the normal process of growth. 

The distinct "jump" in $L_0$ immediately affects the size of $K/AL$ at time zero. So $K/AL$ "jumps" to a new value when, in this case, there is in inflow new people. But note that none of the fundamental parameters ($g_L$, $s_I$, $g_A$, $\delta$) have changed, so there the steady state value of $K/AL$ has not changed. In this case the economy is pushed "off" of the steady state, and then slowly moves back towards steady state. This has implications for $g_K$, $g_y$, and the size of GDP per capita. 

You can use the app again to see how this works. When $L_0$ jumps up, this makes $K/AL$ *lower*, meaning the economy is now below the steady state value. This means in turn that $g_K$ will be larger than normal, as the economy scrambles to build enough capital to keep up with the new population. This means, in turn, that the growth rate of GDP per capita, $g_y$, will be above normal for a while as the economy grows rapidly. But in the long run the $K/AL$ ratio will go back to the same original steady state, and the growth rate of GDP per capita will be equal to $g_A$.

What happens to the level of GDP per capita? Here there is an immediate "jump" as well because we adjusted one of the variables in the production function. GDP per capita *falls* because we push more people into an economy that has the same amount of capital and productivity as before. GDP per capita falls immediately, but then as noted above it grows more rapidly than normal after that. Ultimately GDP per capita will end up back on the same BGP as before the shock. The inflow of labor does not have a permanent impact on the living standard, only a temporary one. 

### Part B
{: .no_toc }
There is a one-time decrease in the size of the capital stock, $K$ (e.g. a natural disaster destroys millions of homes and businesses). 

**Answer**: This is another case of a shock to a variable, capital. Destroying $K$ lowers the actual $K/AL$, again making $g_K$ higher than normal, and so $g_y$ is higher than normal. But eventually growth will go back to $g_A$. Also similar to the above problem, the drop in $K$ lowers GDP per capita immediately, but eventually the economy returns to the original BGP.

### Part C
{: .no_toc }
There is a one-time increase in the level of productivity, $A$ (e.g. a unique innovation like fusion power results in an immediate increase in productivity). The growth rate of productivity before and after this shock remains the same, $g_A$.

**Answer**: Again, a shock to a variable. Here, increasing $A$ lowers the actual $K/AL$, which generates higher $g_K$ and higher $g_y$. But different than the prior answers the increase in $A$ *raises* GDP per capita. And unlike the prior problems this increase in $A$ permanently makes the economy better off, as it ends up on a higher BGP. You can see this in equation 2.22, which tells us that the level of the BGP depends on the initial level of $A_0$ (but not on the initial level of $K_0$ or $L_0$). Don't be fooled by the fact that an increase in $A$ lowers $K/AL$ initially, the economy benefits immediately and in the long run from a higher baseline level of productivity. 

## Question 4
The government decides to levy an income tax wage and capital income at the rate $\tau$. This means that the amount spent on gross capital formation is now $I = s_I (1-\tau) Y$ rather than $I = s_I Y$.

### Part A
{: .no_toc }
What is the effect of this on the growth rate of GDP per capita in the short and long run? What is the effect of this on the level of GDP per capita in the long run?

**Answer**: This tax acts to lower the share of GDP that is used for gross capital formation. Effectively, it lowers the share from $s_I$ to $s_I(1-\tau)$. We can apply the logic in Section 2.3.1 in reverse to understand the effect of this. By lowering the share of GDP going to gross capital formation, this will lower the steady state level of $K/AL$. In the short run, the economy has a higher $K/AL$ than steady state, $g_K$ will be less than $g_A + g_L$. The growth rate of GDP per capita is $g_y = \alpha(g_K - g_A - g_L) + g_A$, and therefore the growth rate of GDP per capita will be \textit{lower} than $g_A$. 

In the long run we know that no matter what fraction of GDP is spent on gross capital formation, the growth rate of GDP per capita is equal to $g_A$, which has not changed. 

### Part B
{: .no_toc }
Imagine that the taxes are spent by the government on puchasing new capital capital goods (e.g. infrastructure), so that capital accumulation was now $dK = I + \tau Y - \delta K$. What is the effect of this tax on the growth rate of GDP per capita in the short and long run? What is the effect of this on the level of GDP per capita in the long run? 

**Answer**: This modified version of the capital accumulation equation means we need to start over a bit and ask again what fraction of GDP is spent on gross capital formation. In the equation $I + \tau Y$ is gross capital formation, before we adjust for depreciation. From above we know that $I = s_I(1-\tau)Y$, so gross capital formation is $s_I(1-\tau)Y + \tau Y = [s_I(1-\tau) + \tau] Y$. This tells us that the faction of GDP spent on gross capital formation is $s_I(1-\tau) + \tau$. Note that this is \textit{higher} than $s_I$ alone. In other words, when the government spends all of this tax on capital, that raises the fraction of GDP going to capital formation. 

We're now back in the world of the example in Section 2.3.1, an increase in the share of GDP spent on capital. In the short run the growth rate will be higher as the economy moves to a higher steady state value of $K/AL$. In the long run the growth rate will be equal to $g_A$. The \textit{level} of GDP per capita will be higher because more of GDP is spent on capital.

One broader point on this question is that the effect of a given tax on the growth rate and level of GDP per captia depends on how it is spent. In the first part of this question, the taxes were not spent on capital goods, and so growth slowed down and the level of GDP per capita ended up lower. In the second part, by spending the taxes on capital goods of some kind the taxes raised growth and the level of living standards.

## Question 5
You have the following data to work with, all from the year 2020 (period 0). In each country, the value of $\alpha = 1/3$. 

| Country | $A_0$ | $K_0$ | $L_0$ | $s_I$ | $g_L$ | $\delta$ | $g_A$ |
| ------------|:--:|:--:|:--:|:----:|:----:|:----:|:----:|
| Adelphia    | 1 | 2 | 4 | 0.25 | 0.01 | 0.05 | 0.03 |
| Brogeria    | 2 | 1 | 4 | 0.20 | 0.02 | 0.05 | 0.02 |
| Candastan   | 3 | 2 | 3 | 0.20 | 0.01 | 0.05 | 0.01 |

### Part A
{: .no_toc }
Which country has the highest level of GDP per capita in 2020? 

**Answer**: To answer this, you need to find the value of $y$, which from equation 2.2 is $y = (K/AL)^{\alpha} A$. At this point you can "plug-and-chug" into that equation to find the values. The embedded sheet below implements this in a simple spreadsheet. If you go through and plug in each country's numbers, you'll find that Candastan has the higher GDP per capita. 
 
<iframe src="https://rows.com/embed/1GdqNgUh9ldtjJtq2AGRlXWl5jnkcdURf0NUGJeuVXSB/7c8087c6-f7ef-43a2-8fc7-9dff47b3c8f2" class="rows-embed" frameborder="0" width="100%" height="450" style="max-width: 100%; border: 0px solid #EAEAEA; border-radius: 4px;"></iframe>

### Part B
{: .no_toc }
Which country has the highest growth rate of GDP per capita in 2020?

**Answer**: To answer this you need to know the growth rate $g_y = \alpha(g_K - g_A - g_L) + g_A$, and the only piece of this you don't know is $g_K$. You can find $g_K$ according to equation 2.11. This is again a "plug-and-chug" situation, and the calculator above will allow you to find answers for each country. If you do that, you'll find that Brogeria has the highest growth rate. Why? It has both a relatively high value for $g_A$ and it's $K/AL$ ratio is relatively far below steady state, so $g_K$ is quite high.

### Part C
{: .no_toc }
Which country has the highest growth rate of GDP per capita in the long run?

**Answer**: Now we're not worried about the growth rate in the initial period, but what happens after $K/AL$ is at steady state. We know from Chapter 2 that in the long run the growth rate of GDP per capita equals $g_A$. This means that Adelphia will grow the fastest in the long run, at 3% per year. Even though it starts out the poorest, and with the lowest growth rate, in the long run it will grow faster than the others.

### Part D
{: .no_toc }
Which country has the highest level of GDP in the long run? 

**Answer**: This answer is "it depends", but it is worth thinking about what it depends on. Adelphia will grow the fastest in the long run, so eventually Adelphia will be richer than the other two countries. So if the definition of "long run" is long enough, the answer is Adelphia. Since the question isn't specific, one could argue that "long run" occurs before Adelphia has had time to grow GDP per capita higher than the others. 

To get a specific answer for any point in time you could use equation 2.22, which shows GDP per capita along a BGP. That equation is $\log y_t^{BGP} = \frac{\alpha}{1-\alpha}\log\left(\frac{s_I}{g_A + g_L + \delta} \right) + \log A_0 + g_A t$. Note that only the $g_A t$ term depends on when we make the comparison: $t$. Everything else is the intercept of the BGP line, which is fixed by the parameters and initial value of $A_0$: $\frac{\alpha}{1-\alpha}\log\left(\frac{s_I}{g_A + g_L + \delta} \right)$.

You can "plug-and-chug" to find the values of that intercept term, and the calculator above gives you that number. For Adelphia it is 0.503, while for Candastan it is 1.616. This means the BGP equation for Adelphia is $\log y_t^{Adel} = 0.503 + .03t$, while for Candastan it is $\log y_t^{Can} = 1.616 + .01t$. Using these two equations, you could find the time $t$ when Adelphia has a higher GDP per capita than Candastan. Ask when $0.503 + .03t > 1.616 + .01t$, and solve for $t > 55.56$. If we interpret $t$ as years, then it takes roughly 56 years for Adelphia to pass Candastan thanks its higher productivity growth rate. After than Adelphia will be permanently richer than Candastan.

If you do a similar comparison of Adelphia and Brogeria, you'll find that Adelphia has higher GDP per capita when $t > 58.3$. So about 59 years out, Adelphia will be richer than both of the other countries.

