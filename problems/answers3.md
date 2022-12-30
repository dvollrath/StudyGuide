---
title: Chapter 3
parent: Problems
nav_order: 2
---

# Chapter 3 Problems
1. TOC 
{:toc}

## Question 1
In Figure 3.1 and 3.2 Germany and South Korea reach a balanced growth path that has a lower level of GDP per capita than the United States. Using the Solow Model as your guide, list possible reasons that these countries do not have the same level of GDP per capita.

![Figure 3.1](/figures/fig-ch3-fig1.png)

![Figure 3.2](/figures/fig-ch3-fig2.png)

**Answer**: These differences in the balanced growth path depend on the parameters governing behavior (like gross capital formation) or the initial level of productivity. Section 3.2 contains an equation defining the level of GDP per capita along the BGP

$$
y_t^{BGP} = \left(\frac{s_I}{g_A+g_L+\delta} \right)^{\frac{\alpha}{1-\alpha}}A_t.
$$

which given the path of productivity could be written as

$$
y_t^{BGP} = \left(\frac{s_I}{g_A+g_L+\delta} \right)^{\frac{\alpha}{1-\alpha}}A_0 e^{g_At}.
$$

Based on this, Germany and South Korea could have a lower level of GDP per capita than the United States because of 

- A lower gross capital formation rate, $s_I$
- A higher population growth rate, $g_L$
- A higher depreciation rate, $\delta$, although economists tend not to focus on this as a source of variation
- A lower initial level of productivity, $A_0$. 

Note that $g_A$, the growth rate of productivity, is *not* a likely candidate for explaining the differences. Why? Because the BGP's of each country appear parallel in Figures 3.1 and 3.2, implying that the long-run growth rate is the same.

## Question 2
J. Bradford Delong (1988), in a comment on Baumol's convergence result for industrialized countries, Figure 3.7, pointed out that the result could be driven by the procedure through which the countries were selected. In particular, DeLong noted two things. First, only countries were rich at the end of the sample (i.e. 2018) were included. Second, several countries not included, such as Argentina, were richer than Japan in 1870. Use these points to criticize and discuss the Baumol result. Do these criticisms apply to the results for all countries?

![Figure 3.7](/figures/fig-ch3-fig7.png)

**Answer**: To see the problem with Baumol's selection, suppose that countries' income levels were not determined by any economic process, but were in fact just random numbers. To be concrete, let's say that GDP per capita was drawn each period from the set of 10 numbers $1, 2, 3, \ldots, 10$, and that each value could be drawn with equal probability (10\%). 

Suppose we look only at countries with income levels greater than or equal to 6 in the second period. Because of this randomness, knowing that a country is rich (has income great than 6) in the second period implies nothing about its income in the first period -  hence the distribution will be "wider" in the first period than in the second, and we will see the appearance of convergence even though in this simple experiment we know there is no convergence.

The omission of Argentina from Baumol's data is a good example of the problem. Argentina was rich in 1870 (say a relative income level of~8) but less rich in 1987 (say a relative income level of~4). Because of its low income in the last period, it is not part of the sample and this example of a "divergent" observation is missing.

This criticism applies whenever countries are selected on the basis of the last observation. What happens if countries are selected on the basis of being rich for the first observation? The same argument suggests that there should be a bias toward divergence. Therefore, to the extent that the OECD countries were already rich in 1960, the OECD convergence result is even stronger evidence of convergence.

For the evidence related to the world as a whole, there is no selection bias --- all countries are included.

## Question 3
Figure 3.9 showed that countries that are relatively rich (compared to their steady state) tend to grow slowly, while countries that are relatively poor (compared to their steady state) tend to grow fast. We presumed that because of the Solow Model, this meant that over time all these countries would eventually reach their steady state. Danny Quah (1993) argued that the correlation depicted in Figure 3.9 does not necessarily imply this, appealing to something called Galton's Fallacy. His reasoning was as follows. Imagine that in each year, the position of every country relative to its steady state is determined at random, and that every country has an equal chance of landing at each value in the Figure (-2, -1.5, -1, -0.5, 0, 0.5, 1, 1.5, or 2). 

![Figure 3.9](/figures/fig-ch3-fig9.png)

### Part A
{: .no_toc }
If a country lands on a high value (1.5 or 2) in year $t$, is it more likely to end up with a higher or lower value in period $t+1$? What does that imply about the growth rate of this country from period $t$ to $t+1$?

**Answer**: Lower. With equal chances at each value, there are more values below 1.5 than there are at 1.5 or 2. The growth rate of this country would appear to be negative from $t$ to $t+1$.

### Part B
{: .no_toc }
If a country lands on a low value (-2 or -1.5) in year $t$, is it more likely to end up with a higher or lower value in period $t+1$? What does that imply about the growth rate of this country from period $t$ to $t+1$?

**Answer**: Higher. The logic is just opposite of that from Part A. Growth would appear to be positive and high from $t$ to $t+1$.

### Part C
{: .no_toc }
What do your prior two answers imply about the correlation of the growth rate with the level of GDP per capita relative to steady state?

**Answer**: This would imply that there is a negative relationship between the level of GDP per capita and the growth rate. The richer a country is, the more likely it will have a low growth rate, and vice versa.

### Part D
{: .no_toc }
How would you use this logic to dismiss the Solow Model interpretation of that Figure?

**Answer**: This is the same criticism as in Question 2 with the Baumol model. We might interpret the data in Figure 3.9 as evidence of convergence to steady state, when in fact we are just observing random fluctuations. 

### Part E
{: .no_toc }
Does this logic imply that Figure 3.9 is useless?

**Answer**: There is no right answer to this. We might argue that the Figure 3.9 remains useful in the sense that it is a necessary relationship for convergence to be true. That is, Figure 3.9 tells us that convergence is *possible* as an explanation, although we have to do more work to confirm it. If the Figure showed no relationship, then we would know that convergence is not happening at all.

## Question 4
Figure 3.10 shows the ratio of GDP per capita in the 90th to 10th percentile countries over time. Does this Figure imply that countries at the 10th percentile of GDP per capita in 1970 grew more slowly than countries at the 90th percentile in 1970? Why or why not? Does this Figure imply that countries at the 10th percentile of GDP per capita in 1995 grew faster than countries at the 90th percentile in 1995? Why or why not?

![Figure 3.10](/figures/fig-ch3-fig10.png)

**Answer**: For the first part, regarding growth after 1970, the answer is no. What Figure 3.10 does not tell us is the identity of the countries at each percentile. It's possible that a country at the 10th percentile in 1970 grew *very* fast and became a country in the 90th percentile by 1995 or 2020. The country at the 90th percentile could have grown very slowly afterwards, and ended up lower in the distribution later on. The distribution of countries could be mixed up over time.

For 1995, the answer is yes. In order for the distribution to compress, it must be the case that rich countries grew more slowly than poor ones. This odd asymmetry in the answers can be more easily seen with some simple math. 

Let $\ln y_{it}$ be log GDP per capita of country $i$ in period $t$. The variance of log GDP per capita across all countries in period $t$ is $Var(\ln y_{it})$. The variance is just another way of measuring dispersion, and is going to be our analogy to the 90/10 ratio. 

In period $t+1$ the log GDP per capita is $\ln y_{i,t+1} = \ln (1+g_{it}) + \ln y_{it}$, where $g_{it}$ is the growth rate of GDP per capita from $t$ to $t+1$. What's the variance of this? Using the properties of variances of sums, we get

$$
Var(\ln y_{i,t+1}) = Var(\ln (1+g_{it})) + Var(\ln y_{it}) + 2 Cov (\ln (1+g_{it}),\ln y_{it})
$$

The variance in $t+1$ depends on the variance in initial GDP per capita, the variance in growth rates, and (crucially) on the covariance of growth rates and initial GDP per capita. 

The difference in the variance from $t$ to $t+1$ is

$$
Var(\ln y_{i,t+1}) - Var(\ln y_{it}) = Var(\ln (1+g_{it})) + 2 Cov (\ln (1+g_{it}),\ln y_{it}).
$$

From 1960 to 1995 this difference was positive (variance was larger in 1995). We know that the variance of the growth rates must be positive, as all variances are positive. Given that $Var(\ln (1+g_{it}))$ is positive, can we determine the sign of $Cov (\ln (1+g_{it}),\ln y_{it})$? No. It is *possible* that the covariance term was positive (rich countries grow faster) but it is also *possible* that the covariance term was negative (rich countries grow more slowly) so long as the covariance isn't *too* negative. Therefore for the first part of the question it is possible that poor countries grew faster than rich countries and that is what made the distribution wider.

From 1995 to 2018 the difference in variances is negative (variance was smaller in 2018). We know that $Var(\ln (1+g_{it}))$ is positive, so the only way to make the difference negative is for the covariance term to be negative, and "negative enough" to offset the positive variance in growth rates. In this case it *must* be that the richer countries have lower growth rates.

## Question 5
In Figure 3.11 we showed that the distribution of GDP per capita across countries has shifted to the right, meaning average GDP per capita was higher in 2019 than in 1960. This Figure also captures, indirectly, the information in Figure 3.10 that the spread of GDP per capita between the top and bottom of the distribution was larger in 2019 than in 1960. Draw a hypothetical version of Figure 3.11 that would show an increase in the average level of GDP per capita but where the spread of GDP per capita *declined* from 1960 to 2019. 

![Figure 3.11](/figures/fig-ch3-fig11.png)

**Answer**: There are a number of ways to accomplish this. The easiest would be to draw a single bar for 2019 with a GDP per capita of 64,000, meaning the distribution was minimized (everyone has a similar GDP per capita), but the average is demonstrably higher than in 1960.