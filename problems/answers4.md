---
title: Chapter 4
parent: Problems
nav_order: 3
---

# Chapter 4 Problems
1. TOC 
{:toc}

## Question 1
For the following items, classify them as either non-rival or rival, and explain why you made that classification: a cake, a cake recipe, a chef's time, a chef's knowledge, an oven. 

**Answer**: A cake is rival. If I am eating the cake, you cannot eat the same piece of cake. Even though we might share the entire cake, it is still rival. You cannot eat the whole cake and I cannot eat the whole cake as well.

The cake recipe is non-rival. If you are using the recipe, I can use the recipe too. Even though you use the "whole" recipe to make your cake, I am using the "whole" recipe as well, without diminishing either of our ability to make cake. 

A chef's time is rival. If the chef is making a cake right now, they cannot also be making soup. Yes, lot's of great chefs can manage multiple dishes at once (e.g. the cake is baking while they mix the soup), but that doesn't change the fact that their time and attention is ultimately rival. They cannot make infinite cakes or soups at the same time. 

This is an interesting one. The chef's knowledge could be argued to be rival or non-rival, depending on how you look at it. It is quite possible that their knowledge of cooking is non-rival, in the sense that lots of other chef's know the same things, and all of them can use that knowledge at the same time. But there are probably some aspects of the chef's knowledge that are rival. Perhaps this particular chef has a particular feel for how a cake batter should look to make it fluffy, and there is no way to really pass that knowledge on to someone else. Then in this case the knowledge is rival, as no one else can do the same thing. Rivalry is, in this sense, about how replicable a thing or idea is. 

The oven is rival. It has finite space, and is located in one specific location.

## Question 2
For the same items as the previous question, classify them as either excludable or non-excludable, and explain why you made that classification. 

**Answer**: This is a lot fuzzier, in that excludability doesn't have to be an inherent property of something. It tends to be defined by laws or norms or institutions. The degree of excludability is also flexible, and it isn't an binary choice.

A cake is probably excludable, in that it is relatively easy to keep the cake in my house where only I can get it. It isn't physically plausible for anyone in the world to eat my cake. 

A cake recipe is excludable or non-excludable depending on rules and regulations. In the United States recipes are *not* protected by copyright. If you want to publish a cookbook that copies a bunch of other recipes, you can. Which is why when you read lots of websites with recipes on them, they include a whole convoluted story about the recipe in question. That story *is* excludable, in that it can be protected by copyright. It is a way that author/cooks assert some excludability over their recipes.

A chef's time is excludable, in the legal sense that they can refuse to make you a cake. I cannot use *their* time without their permission (and presumably payment). 

The chef's knowledge is also excludable, for the same reason as their time. I can't use *their* knowledge without their permission (and presumably payment).

The oven is very excludable, given the physical location issue. If it is in my house, then legally you cannot just wander in and use it without my permission. You are excluded from using it. 

## Question 3
Based on the logic of fixed costs and increasing returns discussed in the Chapter:

### Part A
{: .no_toc }
Provide an argument for why pharmaceutical companies charge prices for life-saving drugs above their marginal cost of production. 

**Answer**: The simple version is that it takes fixed costs in research to develop the drug in the first place. They charge $P>MC$ in order to recover those fixed costs. Which doesn't mean that we assume their $P$ *only* covers fixed costs. It may include some economic profits as well. 

### Part B
{: .no_toc }
Explain the possible effect of a regulation that forced drug prices to be equal to their marginal cost of production.

**Answer**: If we forced $P = MC$ for drugs, then firms would not have any way to recover the fixed cost. Presumably they would stop incurring those fixed costs, and stop doing the research necessary to develop new drugs. 

### Part C
{: .no_toc }
If drug research were publicly funded, but the drugs themselves sold at marginal cost, explain who ultimately pays the costs of research.

**Answer**: Taxpayers, or the public, depending on how you like to refer to it. Public funding of research would simply pass those fixed costs onto taxpayers. This would have specific distributional effects. In the case of private development of drugs, the fixed costs are paid for with $P>MC$ and fall more heavily on those who take the drug and/or their insurance companies (meaning the costs fall on other people using the same insurance plan). This might concentrate the costs onto a relatively small set of people. 

In the public funding case, $P = MC$, so the drug is cheaper to those who use it. But the fixed cost is spread out across all taxpayers, meaning the cost is more diffuse. 
	
## Question 4
Imagine that production of GDP is constant returns to scale over capital, labor, and productivity, so that $Y = K^{\alpha} A^{\beta} L^{1-\alpha-\beta}$. Productivity grows at the rate $g_A>0$, labor at $g_L$, and capital accumulates according to the Solow Model.

### Part A
{: .no_toc }
Write an expression for GDP per capita in terms of the $K/AL$ ratio, $A$, and $L$. 

**Answer**: This is simple re-arrangement

$$
y = \left(\frac{K}{AL} \right)^{\alpha} \frac{A^{\alpha+\beta}}{L^{\beta}}
$$

### Part B
{: .no_toc }
Assume that the economy is in steady state, and the $K/AL$ ratio is constant. What is expression for the growth rate of GDP per capita, $g_y$?

**Answer**: If we know that $K/AL$ is constant, then the growth rate of GDP per capita is

$$
g_y = (\alpha+\beta)g_A - \beta g_L.
$$

You can find this by first taking the log of the expression for $y$

$$
\ln y = \alpha \ln K/AL + (\alpha+\beta)\ln A - \beta \ln L
$$

and then take the derivative with respect to time. As in the book, we know this translates to

$$
g_y = \alpha g_{K/AL} + (\alpha+\beta)g_A - \beta g_L
$$

and the problem tells us that $g_{K/AL} = 0$ so we get the answer given above.

### Part C
{: .no_toc }
Are there conditions under which $g_y$ is zero? Negative?

**Answer**: Yes. Given $g_y = (\alpha+\beta)g_A - \beta g_L$, we can find a situation where $g_y =0$ when $(\alpha+\beta)g_A = \beta g_L$, or when $g_L = \frac{\alpha+\beta}{\beta} g_A$. If $g_L$ is sufficiently large compared to productivity growth, then even though productivity growth is positive, living standards may not grow. If $g_L > \frac{\alpha+\beta}{\beta} g_A$ then the growth rate will be negative, $g_y <0$. 

### Part D
{: .no_toc }
Explain in words why this version of the model can produce zero or negative growth even if $g_A>0$.

**Answer**: The problem here is that there are constant returns to capital, labor, *and* productivity, implying that there are *decreasing* returns to the rival factors capital and labor. Doubling capital and labor will get us less than double the living standard. So productivity has to fight against that. If productivity growth is large enough, it could perhaps overcome this drag from the decreasing returns to rival factors. But perhaps not. 

Note the difference with our standard Solow model. In the standard model with $Y = K^{\alpha} (AL)^{1-\alpha}$ there are constant returns to the rival factors capital and labor. If we double those, we double GDP. Given that, we can continue to replicate our living standard just by acquiring more capital and labor. Anything increase in productivity is a bonus, and increases living standards. There are increasing returns to capital, labor, *and* productivity in this case, and that is what allows for growth in living standards.

## Question 5
Examining Figure 4.6, world GDP per capita appears to rise with the size of world population.

![Figure 4.6](/figures/fig-ch4-fig6.png)

### Part A
{: .no_toc }
Is the effect of population on GDP per capita getting stronger or weaker as the size of population rises?

**Answer**: It would appear to be getting weaker, in the sense that the slope of the relationship is lower at higher population sizes.

### Part B
{: .no_toc }
If that relationship continues, what would you predict happens to world GDP per capita if world population continues to increase forever?

**Answer**: GDP per capita would continue to rise as population rose, but if the relationship keeps getting weaker then eventually it would probably be the case that GDP per capita levels off, although perhaps at some very high level.

### Part C
{: .no_toc }
What would happen to world GDP per capita if the world population plateaus at 9 billion people? 

**Answer**: According to this figure, then GDP per capita would plateau at about 16,000

### Part D
{: .no_toc }
What would happen to world GDP per capita if world population peaks at 9 billion people and then declines over time to 1 billion?

**Answer**: If you took the figure literally, then this would suggest that GDP per capita would *fall* to like 1,000, meaning it would drop by a factor of 16.

### Part E
{: .no_toc }
Given the discussion of non-rivalry in this Chapter, why might your prediction in the last case (declining population) not be consistent with the logic of the prior cases (increasing or plateauing population)?

**Answer**: Increasing the number of people increases the number of ideas that could be created, just by adding more minds. Now, perhaps the function relating brains to new ideas slows down or gets weaker at some point. It may just be too hard to communicate ideas across 12 billion or 15 billion people that we don't benefit much from having more people after a while. 

But note that this concept that population size impacts the generation of *new* ideas is different from saying that population size dictates the *total* number of ideas we have. Non-rivalry says that the new ideas can be shared, increasing the total for everyone. But if ideas are shared, then there isn't an obvious reason why they should *decline* just because we start generting fewer ideas. If we stop adding to the total, it doesn't mean the total falls. Being non-rival, ideas don't necessarily need to be carried around in specific people's heads (we have books, etc. for that). 

An interesting aside here is that the plot of Fahrenheit 451, the Ray Bradbury book, is based to some extent around a world where ideas are rival. Books are banned, and so they only live on through one person memorizing them. If that person perishes, the ideas in the book are lost. In the Fahrenhet 451 world, fewer people would in fact mean fewer ideas (and hence lower living standards). 