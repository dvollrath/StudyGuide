---
title: Chapter 5
parent: Problems
nav_order: 4
---

# Chapter 5 Problems
1. TOC 
{:toc}

## Question 1
These are short questions to check your understanding of the basics of the Romer model.

### Part A
{: .no_toc }
If a higher share of people do research ($s_R$ goes up), then what happens to GDP, holding everything else equal?

**Answer**: Immediately, GDP would go down. Fewer people would be actively working on producing goods and services, so overall GDP would be lower. Recall that $Y_t = K_t^{\alpha}\left(A_t (1-s_R)L_t\right)^{1-\alpha}$, and if $s_R$ goes up, this implies that $Y_t$ goes down.

### Part B
{: .no_toc }
In steady state, what is the growth rate of productivity, $g_A$?

**Answer**: Following equation 5.11, the steady state growth rate is $g_A^{ss} = \frac{\lambda}{1-\phi}g_L$. 

### Part C
{: .no_toc }
In steady state, what is the size of the ratio $L^{\lambda}/A^{1-\phi}$?

**Answer**: The chapter did not solve for this explicitly, as we were more concerned with the steady state growth rate $g_A^{ss}$. But we can easily find this ratio by using equation 5.8, which tells us that in general it is the case that

$$
g_A = \theta s_R^{\lambda} \frac{L_t^{\lambda}}{A_t^{1-\phi}}
$$

and thus at steady state it must be that

$$
\frac{\lambda}{1-\phi}g_L = \theta s_R^{\lambda} \frac{L_t^{\lambda}}{A_t^{1-\phi}}
$$

which solves to

$$
\frac{L_t^{\lambda}}{A_t^{1-\phi}} = \frac{\lambda}{1-\phi}\frac{g_L}{\theta s_R^{\lambda}}
$$

From here you can see that the ratio of population to productivity depends negatively on $s_R$, as a higher share of people doing research will increase $A$ relative to $L$ in the long run. Conversely, a higher $g_L$ will raise the size of $L$ in the long run relative to $A$, as population will be growing relatively fast.

### Part D
{: .no_toc }
If $\phi<1$, what happens to the growth rate of productivity, $g_A$, if productivity goes up, holding everything else equal?

**Answer**: It falls. From equation 5.8 you can see that when $A$ is higher and $\phi<1$, it must be that $g_A$ is lower. When $\phi<0$, this relationship makes a lot of sense. When $\phi<0$ we are saying that when productivity goes up it gets *harder* to find new ideas; we pick the low hanging fruit first. When $0 < \phi < 1$, it is the case that as we get more productive that actually does increase the size of $dA$, or the flow of new ideas. However, that effect of this is not big enough to overcome the fact that increasing the number of ideas increases the base we are comparing to, so $dA/A$ falls. 

### Part E
{: .no_toc }
What is the markup over marginal cost charged by an intermediate good producer? In words, why are they able to charge this markup?

**Answer**: This answer is specific to the model presented in chapter 5. The markup is $1/\alpha$, as $p = (1/\alpha)r$ from equation 5.25. Since $\alpha<1$, the markup $1/\alpha >1$. The intermediate good firms in the Romer model are able to charge this markup because they are the monopoly provider of their specific intermediate, and so they have some market power. Because the final good firm does have other options (they can stock other intermediates) the intermediate firms are in monopolistic competition with one another, which puts a limit on how high their markup can go.

### Part F
{: .no_toc }	
What's the value of an idea (i.e. the plans for a new intermediate good) in the Romer model?

**Answer**: From 5.21 the value of an idea is $V_t = \frac{\pi_t}{r-g_{\pi}}$, which is the present discounted value of profits, discounted at the rate $r$, but with profits growing at the rate $g_{\pi}$. You can see $V_t$ as the maximum amount that an outside investor would be willing to pay to buy the idea behind a new intermediate good. 

### Part G
{: .no_toc }
What determines the fixed cost of an idea in the Romer model? 

**Answer**: In the Romer model there are really two parts to the fixed cost of finding an idea. There is the wage of a researcher and then there is the flow of new ideas per research. In equation 5.19, the wage is $w_t$ and the flow of ideas per researcher is $L_{Rt}/dA$. Combined, they give you the cost of finding one new idea. 

### Part H
What happens to the allocation of people to research, $s_R$, if the growth rate of population rises? In words, explain this relationship.
{: .no_toc }

**Answer**: This question is about the equilibrium solution to $s_R$ in section 5.2.4. There we saw in equation 5.33 what dictates the choice of $s_R$ for the economy. When $g_L$ rises, this increase the present discounted value of any given idea, as higher population growth means a larger market over time, meaning higher profits over time. Given this, the value of having any idea is larger, and hence potential entrepreneurs are willing to spend more to find those ideas, and $s_R$ will be higher. 

## Question 2
For each of the following scenarios, assume that the economy begins in a steady state. For each scenario, draw three figures showing how each of the following terms evolve over time: the growth rate of productivity, the log of productivity, and the log of GDP per capita. 

### Part A
{: .no_toc }
The allocation of workers to research, $s_R$, drops to a lower value and stays there permanently.

**Answer**: This problem is similar to the one in Chapter 2 regarding the Solow model. We can first reason through what will happen, and then use a simulation to see this in the figures. If $s_R$ drops, then we can reverse the logic examined in section 5.1.3, and studied in figure 5.2. A decline in $s_R$ means that the growth rate of productivity will be lower for every value of $L^{\lambda}/A^{1-\phi}$. This in turn implies that the steady state value of $L^{\lambda}/A^{1-\phi}$ will be *higher*. That is, there will be a higher ratio of population to productivity, as we are putting less effort into innovation. However, from figure 5.2 we know that in the long run the steady state growth rate of productivity will end up equal to $\lambda g_L /(1-\phi)$ again. 

As in the Solow model, it is easier to see the consequences of these changes by simulating the model. To see this in figures that the problem asks for, it is helpful to use <a href="https://dietzvollrath.shinyapps.io/ProdBasic/" target="_blank">this app</a>, which will open in a separate window if you use the link, or is embedded below. This app is a simulation of the Solow model, and allows you to adjust the parameters to see what happens in response. 

<iframe height="800" width="100%" frameborder="no" src="https://dietzvollrath.shinyapps.io/ProdBasic/"> </iframe>

In that simulation, you can use the slider on the left to set $s_R$ to a lower value. What effect does this have?

- The growth rate of productivity. Lowering $s_R$ says that we put less effort into innovation at any given level of $L^{\lambda}/A^{1-\phi}$. This immediately lowers the growth rate of productivity, but over time the growth rate will recover back to the steady state value of $\lambda g_L/(1-\phi)$. In the app, you can see this on the first tab. This occurs because the lower value of $s_R$ initially lowers $g_A$, but that means that the denominator of the $L^{\lambda}/A^{1-\phi}$ ratio is growing relatively slow, so the ratio starts to rise, which pushes $g_A$ back towards steady state. There is no permanent effect on the growth rate of productivity.

- The level of productivity. Here the effect is permanent. We know that the growth rate will be lower than normal at first, and then recover to the steady state value. This implies that the level of productivity will fall to a new, lower level in the long run. You can see that in the app on the second panel. Note that the new level, which is referred loosely to as a BGP, shifts the level of productivity down, but ultimatley the BGP has the same slope, which is consistent with the growth rate recovering back to steady state. But we have a permanently lower level of productivity.

- The last figure that the problem asks for is with respect to log GDP per capita. Here you'll have to appeal to the Solow model for help. To see what happens, consider the shift from a "high" BGP for productivity to a "low" BGP for productivity. This is equivalent to lowering the initial value $A_0$ of productivity in the Solow model. Lower $s_R$ is telling us that the economy will have a lower baseline level of productivity than in the past. In the Solow model, by itself this would tell us that the level of GDP per capita will be lower. However, we have to be careful here. If $s_R$ goes down, than this implies that a larger fraction of the population is working at producing goods and services, which pushes *up* on GDP per capita. 
You can see the effect of these two forces in equation 5.18. The $(1-s_R)$ term captures the effect of having more workers, while the $s_R$ by itself captures the effect of researchers on the initial level of productivity. What we see here is that there is a trade-off in $s_R$. It's *possible* that lowering $s_R$ actually raises GDP per capita in the long run because we have more people working. 

### Part B
{: .no_toc }
The population growth rate, $g_L$, rises to a higher value and stays there permanently.

**Answer**: We can visualize the answers to this again with the app mentioned above. We know that in the long run a higher value of $g_L$ will increase the steady state growth rate of productivity, $g_A^{ss}$, which depends on $g_L$. When $g_L$ increases, this doesn't immediately increase $g_A$, as nothing changed immediately about the number of researchers or the level of productivity. But over time a higher $g_L$ means more people, and therefore more researchers, which does increase the growth rate $g_A$. This growth rate slowly climbs to the new, higher value. 

The productivity level in this economy is consistent with that effect. At first it continues to grow at the same rate, but as the growth rate increases the level of productivity rises faster than before. In this case the "BGP" of productivity does not simply shift, but also rotates, as the BGP needs a higher slope to account for the higher growth rate $g_A$. This is easiest to see in the app. 

Finally, what happens to GDP per capita? Something very similar to what happens to the level of productivity. We can also use equation 5.18 to see the long-run impact. Yes, the increase in $g_L$ lowers the level of GDP per capita to some extent because of the Solow model forces at work; we're spreading our capital across a larger population. However, the increase in $g_L$ means that the population size, which $y_t^{BGP}$ depends on, is now growing faster and the economy's BGP has a higher slope. Eventually the economy will be richer as $g_L$ gets larger.

### Part C
{: .no_toc }
Innovation becomes easier, meaning $\theta$ rises to a higher value and stays there permanently.

**Answer**: This will have a pure level effect on productivity. Raising $\theta$ makes all innovation more effective, and is similar to raising $s_R$. This immediately increases the growth rate $g_A$, but does not change the steady state growth rate, so the effect is temporary. However, the increase in $\theta$ increases $A$ relative to the baseline and that effect is permanent, so the level of productivity is higher forever because of this increase.

For GDP per capita, this is a purely good thing, as can be confirmed by equation 5.18. Higher productivity means higher GDP per capita, and there is no trade-off here, as with $s_R$. 

## Question 3
An economy begins in steady state, and is described by the Romer model. The normal innovation process is unchanged ($g_A$ depends on $L$ and $A$, as before), but a breakthrough changes the importance of intermediate goods in the production process. To be specific, imagine that the introduction of AI means that computers are able to manage more of the production process, and the size of $\alpha$ is now permanently higher. Given the structure of the Romer model, discuss what happens to each of the following things, and why:

### Part A
{: .no_toc }
The share of workers devoted to research, $s_R$.

**Answer**: Based on equation 5.33, we'd expect that the share of research workers would go *up*. A higher $\alpha$ means that, on net, the fraction of GDP going to profits $\alpha(1-\alpha)$ rises compared to the fraction going to wages $1-\alpha$. In that sense the benefit of R&D - profits - rises relative to the cost of R&D - wages. So it makes sense for potential entrepreneurs to hire more R&D workers.

### Part B
{: .no_toc }
The growth rate of productivity in the long run, $g_A$.

**Answer**: Nothing happens in the long run. The growth rate of productivity will still be determined as $g_A^{ss} = \lambda g_L/(1-\phi)$, as $\alpha$ doesn't play a role in the actual accumulation of ideas.

### Part C
{: .no_toc }
The markup that each intermediate good firm can charge.

**Answer**: The markup the intermediate firms can charge is $1/\alpha$, which we know from equation 5.25. That markup goes *down* when $\alpha$ rises. What's happening here is that as $\alpha$ goes up, the individual intermediate goods are becoming easier to substitute with one another, and hence each individual one has less market power and can charge less of a markup. When $\alpha$ is higher the elasticity of demand from the final goods firm, $\alpha-1$, is higher, making it less willing to pay high markups for intermediates.

Note that this lower markup is still consistent with the increase in R&D coming from profits rising relative to wages. The important relationship in determing R&D is the profit share relative to the wage share. When $\alpha$ goes up the wage share definitely goes down, as intermediates as a whole are more important to final goods production. The profit share, $\alpha(1-\alpha)$, is affected in an ambiguous way because while intermediates are more important (leading to more profits) the markup is lower (leading to lower profits). 

### Part D
{: .no_toc }
The level of GDP per capita in the long run.

**Answer**: Ultimately the level of GDP per capita will be higher in the long run because of the higher value for $\alpha$. You can see this mechanically in the [Solow model app](https://dietzvollrath.shinyapps.io/SolowBasic/) by adjusting up the parameter $\alpha$, and this will show you a higher BGP for the economy. 

Why does this happen? We know from equation 5.30 that the Romer model ultimately leads us to an aggregate production function that looks exactly like the Solow model, where the relative importance of the capital stock depends on $\alpha$. In the Romer model we have all sorts of microeconomic foundations for *why* the capital stock matters, but in the end the value of $\alpha$ tells us how important capital is for producing GDP. 

When $\alpha$ is higher, this makes GDP more sensitive to capital, and the diminishing returns to capital are *less* severe. You can see this by thinking of the extreme case, where $\alpha=1$, and where $Y = K$. In that case there are no diminishing returns to capital, and we can make GDP grow continuously simply by acquiring capital. Higher $\alpha$ values allow us to accumulate our way to a relatively high GDP, and therefore a relatively high value of GDP per capita, because they make the dminishing returns to capital less severe. 

## Question 4
Consider the expression for GDP per capita along a balanced growth path in Equation 5.18. Find the value for $s_R$ that maximizes this. Compare this to the steady state value for $s_R$ found in Equation 5.33. Can you tell whether the steady state value will be higher or lower than the value of $s_R$ that maximizes GDP per capita? Why is it possible to do too much R\&D? 

**Answer**: Start with the mathemetical part of the question. From 5.18 we have that

$$
y_t^{BGP} = \left(\frac{s_I}{g_A^{ss} + g_L + \delta} \right)^{\frac{\alpha}{1-\alpha}} (1-s_R) \left(\frac{\theta s_R}{g_A^{ss}}\right)^{\frac{1}{1-\phi}} L_t^{\frac{\lambda}{1-\phi}}.
$$

Maximizing this with respect to $s_R$ we get the following FOC:

$$
-\left(\frac{s_I}{g_A^{ss} + g_L + \delta} \right)^{\frac{\alpha}{1-\alpha}} \left(\frac{\theta s_R}{g_A^{ss}}\right)^{\frac{1}{1-\phi}} L_t^{\frac{\lambda}{1-\phi}} + \left(\frac{s_I}{g_A^{ss} + g_L + \delta} \right)^{\frac{\alpha}{1-\alpha}} (1-s_R) \left(\frac{\theta}{g_A^{ss}}\right)^{\frac{1}{1-\phi}} L_t^{\frac{\lambda}{1-\phi}} \frac{1}{1-\phi}s_R^{\phi/(1-\phi)} = 0
$$

Lots of stuff cancels here, and you are left with the following condition

$$
\frac{s_R}{1-s_R} = \frac{1}{1-\phi}.
$$

From the economy's perspective, the best possible way to allocate people to R&D depends on the effect of additional productivity on subsequent innovation, $\phi$. Here, if $\phi$ goes towards one (remember, it has to be *less* than one), then the ratio of $s_R/(1-s_R)$ must be close to infinity, meaning that $s_R$ itself must be close to one. When productivity feeds back into more accumulation of ideas - $\phi$ is large - then it makes sense to have a lot of people doing R&D, as this accelerates the innovation process. Even though very few people would be producing goods and services, that's fine in this case, because we'd end up with such high productivity that we'd all be able to have incredibly high living standards. Note that if $\phi$ gets very close to one, the steady state growth rate of productivity (and of living standards) is close to infininty. 

On the other hand, if $\phi$ becomes a large negative, meaning that productivity increases *lower* our ability to find new ideas, then the best value of $s_R$ is quite low. If $\phi = -98$, for example, then this says that $s_R$ should be only 0.01, or 1% of the workforce. Additional R&D makes it harder to come up with future ideas, so it isn't worth putting lots of people to work doing R&D.

Now, compare this optimal answer from the economy's perspective to the answer the Romer model provides in equation 5.33, which takes into account all the individual decision-making going on with potential entrepreneurs. Here, the answer was

$$
\frac{s_R}{1-s_R} = \frac{\alpha(1-\alpha)}{(1-\alpha)}\frac{g_A}{r-g_L}.
$$

This answer depended on the PDV of profits over time, and hence depends on $r$, $g_L$, $g_A$, and $\alpha$. There is nothing about this Romer solution that necessarily implies it must be equal to $1/(1-\phi)$, the GDP per capita maximizing answer. 

Mathematically, it is quite possible for the actual allocation of $s_R$ in a Romer economy to be higher or lower than the GDP per capita maximizing answer. It is possible to do too much R&D. 

Why? The potential entreprenuers who are deciding on how much R&D to do are *not* trying to maximize GDP per capita. They are trying to maximize their expected profits. Most important, those potential entrepreneurs are not taking into account the effect of their R&D spending on the ease of *future* R&D. They don't appreciate that doing R&D might boost idea production in the future if $\phi>0$ (in which case we probably are getting too little R&D) or that their R&D might lower idea production in the future if $\phi<0$ (in which case we might be getting *much* R&D). 

## Question 5
In figure 4.3 we saw that the share of R\&D workers in developed countries, $s_R$, had been rising for decades. In the Romer model we assumed that $s_R$ was constant. Let the growth rate of researchers $L_R$ be $g_R$, and the growth rate of population be $g_L$. The evidence in the figure tells us that $g_R > g_L$. 

### Part A
{: .no_toc }
Go back to equation 5.7 and solve for the steady state growth rate of productivity, $g_A$, in terms of $g_R$ (and not in terms of $g_L$). 

**Answer**: Equation 5.7 is $dA = \theta L_{Rt}^{\lambda} A_t^{\phi}$. Here we want to keep the term $L_R$, and not split it into $L_R = s_R L$, as we did in the text. Divide both sides of this equation by $A$ and you have

$$
g_A = \frac{dA}{A} = \theta \frac{L_R^{\lambda}}{A^{1-\phi}}
$$

where we removed the $t$ subscripts just for clarity. We can solve this in the same manner we did in the text, but now the important ratio we are concerned with is $L_R^{\lambda}/A^{1-\phi}$, and not $L^{\lambda}/A^{1-\phi}$. In the end, however, the analysis done in figure 5.1 would be identical. When $L_R^{\lambda}/A^{1-\phi}$ is quite large, this will induce $g_A > g_R$, making the ratio go down. When $L_R^{\lambda}/A^{1-\phi}$ is quite small, this will induce $g_A < g_R$, making the ratio go up. In the end the economy will end up in a steady state where

$$
\lambda g_R = (1-\phi) g_A
$$

or $g_A^{ss} = \frac{\lambda}{1-\phi}g_R$. This looks identical to the standard solution, only with $g_R$ substituted in for $g_L$. The growth rate of productivity depends on the growth rate of the input to the R&D process, the number of researchers. In the text we link the growth rate of that input to the growth rate of population, but it need not be the case at all times and in all places. 

### Part B
{: .no_toc }
If $g_R = 0.03$, and $g_A = 0.02$, then given the prior answer, what is the implied value of $\lambda/(1-\phi)$?

**Answer**: Using the answer above that $g_A^{ss} = \frac{\lambda}{1-\phi}g_R$, it must be that $0.02 = \frac{\lambda}{1-\phi}0.03$, meaning that $\lambda/(1-\phi) = 0.67$. 

### Part C
{: .no_toc }
It is impossible for $g_R > g_L$ to last forever (or otherwise everyone would be an R\&D worker). Given your answer for $\lambda/(1-\phi)$, and assuming that $g_L = 0.01$, what is the implied value for productivity growth in the long run when $g_R$ falls to equal $g_L$?

**Answer**: If eventually $g_R = g_L = 0.01$, and given the prior answer, then in the long run productivity growth must be $g_A^{ss} = 0.67 \times 0.01 = 0.0067$. Note that this is substantially lower than the value of $g_A = 0.02$ that we assumed in the prior question. We can sustain a high rate of productivity growth so long as the input to R&D is growing rapidly. But once that input growth slows down, so does productivity growth.

