
# The Simplest Growth Model
{: .no_toc }

1. TOC 
{:toc}

## Factors and Productivity
If the math doesn't make immediate sense, then you can check the Preliminaries section on the Study Guide. 

Denote GDP *per capita* as $y$. Let GDP per capita be modeled like this

$$
y = A^{1-\alpha} x^{\alpha}.
$$

$A$ is the level of productivity. If $A$ goes up, then $y$ goes up. The variable $x$ is a measure of factors of production *per capita*, or the amount of physical, human, and natural capital per person in the economy. 

There's already a bunch of intuition built into this model. Factors of production are included in per capita terms, $x$, because those factors are *rival*. Because we cannot share factors, what matters is the amount of factors available per person, not the total. The can't be shared.

On the other hand, productivity is included directly, $A$, and isn't in per capita terms. That's because the ideas driving productivity are *non-rival* and can be shared by everyone without diminishing their availability. 

The other thing going on here is that $x$ is raised the power $\alpha$ and $A$ to the power $1-\alpha$. The parameter $\alpha$ is there to capture the fact that there are diminishing returns to factors, and in this case, productivity. Diminishing returns refers to the fact that as factors per capita accumulate, their value to workers falls (e.g. having one computer per worker is great, having 10 doesn't really do much). The fact that productivity also has diminishing returns isn't really necessary, but it helps show that there *can* be diminishing returns to productivity. One important point is that the diminishing returns defined by $\alpha$ are different than the effects arising from rivalry. 

With that model of GDP per capita, the growth rate of GDP per capita, $g_y$, is 

$$
g_y = (1-\alpha)g_A + \alpha g_x.
$$

Not surprising, but the growth rate of GDP per capita is a sum of the growth rate of productivity and factors per capita. The value of $\alpha$ tells us how important each element is. 

Now, we can add to this. Factors of production need to be produced. We need to construct new buildings, educate new workers, and find new resources. That takes economic effort and uses up some of GDP. We'll get into more details, but ultimately this means the growth rate of factors per capita depends on the growth rate of GDP per capita. In the long run we'll establish that $g_x = g_y$. 

Given that we have

$$
g_y = (1-\alpha)g_A + \alpha g_y,
$$

which means 

$$
g_y = g_A,
$$

or the growth rate of GDP per capita depends on the growth rate of productivity. That also means that factors per capita grow at the rate of productivity, or $g_x = g_A$ in the long run. 

## The level of GDP per capita
That was the growth rate of GDP per capita in the long run. What determines whether the level of GDP per capita is high or low? 

In log terms, GDP per capita is

$$
\ln y_t = (1-\alpha) \ln A_t + \alpha \ln x_t
$$

$$
\ln y_t = (1-\alpha) \ln A_0 + (1-\alpha) g_A t + \alpha \ln x_0 + \alpha g_A t
$$

so 

$$
\ln y_t = (1-\alpha) \ln A_0 + \alpha \ln x_0 + g_A t.
$$

The level of GDP per capita depends on those initial levels of productivity and factors per capita, $A_0$ and $x_0$. While the determinants of factors don't dictate the growth rate, they do dictate $x_0$, and therefore the level of GDP per capita. 

## Productivity Growth
Where does productivity growth come from? 