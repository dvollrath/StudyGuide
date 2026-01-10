---
title: Firms and capital accumulation
parent: Capital accumulation
grand_parent: Solow and Balanced Growth
nav_order: 2
---

# Firms and capital accumulation
{: .no_toc }

1. TOC 
{:toc}

## The PDV of a capital project
The Solow model makes a very start assumption about how capital accumulates. A fraction $s_I$ of GDP is used to build new capital, and that's it. There isn't any real discussion of the decisions behind this. In principle we'd want to think of the market for new capital from both the supply and demand sides. That is, we can think of the demand for new capital goods (e.g. a new apartment building, a new delivery truck, a new server) coming from firms who are thinking that they can generate revenues and profits from those capital goods. From the supply side we can think of households that are willing to sacrifice some current consumption and instead loan their money to those firms so the firms can purchase the capital goods, with the expectation that they'll get some return (interest, dividends, a share of the profits) by doing so, and be able to consume more in the future.

We're going to focus here on the *demand* side from firms, as this also sets us up to think about a similar decision process by firms thinking of doing R&D or entering a new market. 

From the demand side, then, it will be an application of the idea of [present discounted value](pdv.html). Think of a firm having a project where they can buy $K_i$ "units" of capital (e.g. a building, some trucks, etc.) for some cost $C_0$. Is it worth borrowing money from households and undertaking the project? Only if the present discounted value of operating profits they get from the project are more than that cost. In other words, can they pay back the loan and still be making some money? 

We need to evaluate the PDV of the project, which will depend on the state of the economy itself. How much can they earn by doing the project? The share of GDP that gets paid out to capital is $s_K$, so the *total* payments to capital are $s_K Y$. But this firm is only buying $K_i$ units of capital with their project, so they can't possibly earn all of that. Instead, we'd think that because of competition this total would be shared across all units of capital, $K$, equally. We can modify that, but it's a good starting point. 

That means that the firm can earn $s_K Y/K$ for each $K_i$ unit of capital, or a total of $K_i s_K Y/K$ in revenues from using the capital good if they buy it. But they earn that not just in period 1 after they buy it, but can earn that each period after that as the capital will persist over time. 

In principle that capital can persist indefinitely (we'll add depreciation in a moment) so the PDV of this capital $K_i$ is

$$
PDV_0 = \sum_{t=1}^{\infty} K_{it} \frac{s_K Y_t/K_t}{(1+r)^t},
$$

where $r$ is some discount rate. Also, I wrote $K_{it}$ because this value of capital could, and will, potentially change over time due to depreciation.

The values of $Y_t$ and $K_t$, though, are going to evolve over time, meaning we can't really make sense of this yet. Those are aggregate values, and evolve in ways the firm has no control over, and just takes as given. How do we think this will occur? We're going to presume that the economy is close to the BGP, which means that $Y_{t+1} \approx (1+g_A) Y_t$, and that $K_{t+1} \approx (1+g_A) K_t$. This means we can write

$$
PDV_0 = \sum_{t=1}^{\infty} K_{it} \frac{s_K Y_0/K_0}{(1+r)^t}\frac{(1+g_A)^t}{(1+g_A)^t} = \sum_{t=1}^{\infty} K_{it} \frac{s_K Y_0/K_0}{(1+r)^t}
$$

where the last fraction just reflects the fact that both $Y$ and $K$ are growing at the same rate. 

Now let's deal with depreciation. The size of $K_{it}$ is going to decline over time as it breaks down, at the rate $\delta$. So that means $K_{i,t+1} = (1-\delta)K_{it}$. Now the PDV is

$$
PDV_0 = = \sum_{t=1}^{\infty} (1-\delta)^t \frac{s_K Y_0/K_0}{(1+r)^t} = K_{i0}\frac{s_K Y_0}{K_0}\sum_{t=1}^{\infty} \frac{(1-\delta)^t}{(1+r)^t},
$$

and now that summation only depends on $\delta$ and $r$. We can go further, because it's the case that 

$$
\frac{1-\delta}{1+r} \approx 1 - \delta - r.
$$

So now we've got

$$
PDV_0 =K_{i0}\frac{s_K Y_0}{K_0}\sum_{t=1}^{\infty} (1-\delta-r)^t.
$$

That summation has a known solution, which is

$$
PDV_0 = K_{i0}\frac{s_K Y_0}{K_0} \frac{1}{r+\delta}.
$$

So now we know how valuable the project is to the firm that might undertake it.

## The decision to build
After all that work we know the value of the project to the firm from the PDV. We know the cost of building the project is $C_0$. Will the firm undertake the project? Yes, if $PDV_0 > C_0$. If that's true, then the flow of payments from owning the capital project will be more than enough to pay for the initial cost. When is that true?

The firm will build if

$$
K_{i0}\frac{s_K Y_0}{K_0} \frac{1}{r+\delta} > C_0.
$$

Firms that can get their units of capital at a low cost will find it more profitable to undertake the projects, as we'd expect. If we think of lots of firms with lots of different costs facing them, then who undertakes projects? Those with a low cost, $C_0$, for sure. Maybe they can get an empty lot for cheap. Those who get a lot of units of capital for their cost, $K_{i0}$, will also invest, as maybe they have a cheap way of building the apartment building or whatever it is. Firms with low depreciation, $\delta$, will be more likely to invest because their capital sticks around longer. 

What about this $r$ value? Leave that alone for a moment, as we'll look at that from the perspective of an internal rate of return in a moment. For now, let's look at how the aggregate economy influences this decision. Re-arrange this condition and we see that firms will invest if:

$$
\frac{K_0}{Y_0} < \frac{K_{i0}}{C_0}\frac{s_K}{r+\delta}.
$$

That is, if the economy-wide capital/output ratio is *low*, then it will make more sense for the firm to start the project. Why? Because if $K_0/Y_0$ is low, then the revenues going to capital have to be shared across fewer units of capital, and each unit earns more. It isn't just mechanical that when the $K/Y$ ratio is low the growth rate of capital is high, it's because that makes new projects look more attractive to firms. The demand for new capital goods will be higher when $K/Y$ is low, giving a justification to the general Solow relationship that $g_K = s_I Y/K - \delta$. 

## Internal rate of return
We've just let $r$ hang out here so far. We could talk about this $r$ in terms of the cost of capital (the interest rate the firm has to pay for the loan to buy the capital). So we could say that firms invest if

$$
\frac{K_{i0}}{C_0}\frac{s_K Y_0}{K_0} > r + \delta
$$

or if the interest rate they face on the loan is small enough. 

Perhaps a better way to think of the condition on entry of new capital is through the internal rate of return. This IRR is defined as the discount rate $r$ that makes the cost of capital, $C_0$, exactly equal to the PDV of that capital. That means

$$
IRR = \frac{K_{i0}}{C_0}\frac{s_K Y_0}{K_0} - \delta 
$$

The IRR is, from the firms perspective, the implied return they get on the capital they buy using the cost $C_0$. They will build the project if the $IRR$ is bigger or equal to the interest rate they can borrow at (or the rate of return equity owners require). The higher the IRR, the more likely the firm is to start the project. Note that the IRR is *higher* when the capital output ratio, $K/Y$, is *lower*. This is the same logic as above. When the economy has a small K/Y ratio, firms will perceive a higher IRR to projects because the flow of revenues is larger. 

The use of the IRR is that it can be calculated entirely from the information on the costs and flows of revenues (which might depend on assumptions) and then it can be compared to an external cost of capital (an interest rate or implied rate of return for equity owners). Hence this is common thing that firms calculate for projects, which is then used to compare to the possible financing possibilities they have. 

From our perspective, the most important aspect is that this gives us the internal firm logic for why the growth rate of capital is higher when $K/Y$ is lower. It's because the IRR on projects is bigger, so more firms will want to build out new projects, meaning $K$ in aggregate grows very fast. 