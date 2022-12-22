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

### Part B
{: .no_toc }
The population growth rate, $g_L$, rises to a higher value and stays there permanently.

**Answer:** To analyze this change, you can use the same app. Hit "Reset to baseline" at the top left to put the parameters back to their starting point. Then adjust the slider for population growth to a higher value. You'll be able to cycle through the tabs to see the impact of this, which will reflect a temporary effect of lowering the growth rate of GDP per capita, and a permanent effect of lowering the level of GDP per capita and lowering the steady state value of $K/AL$.

## Question 6

<iframe src="https://rows.com/embed/1GdqNgUh9ldtjJtq2AGRlXWl5jnkcdURf0NUGJeuVXSB/7c8087c6-f7ef-43a2-8fc7-9dff47b3c8f2" class="rows-embed" frameborder="0" width="100%" height="450" style="max-width: 100%; border: 0px solid #EAEAEA; border-radius: 4px;"></iframe>