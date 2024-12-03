---
title: Stock market valuations
parent: Case studies
grand_parent: Ideas and Productivity
nav_order: 5
---

# The stock market and economic growth

1. TOC 
{:toc}

## Linking earnings to capital and ideas
The stock market gives us prices for shares in traded companies, and thus an implied market valuation for those companies. There are several ways that people try to do "fundamental" valuation to determine if the stock market is "right" or not, but in principle they are all something like calculating the present discounted value of the flow of earnings from that company. Those earnings arise because the company is (presumably) producing a product that people want and will pay for. 

To over-simplify, the companies produce those products using capital, labor, and ideas. In principle if companies owned all the capital, labor, and ideas used, then their earnings would simply be equal to their revenues. But since companies can't own people some of those revenues get paid out as wages. The remaining amount (revenues minus wages) are the earnings to capital and ideas that the companies control. So we could theoretically figure out the market valuation of companies based on the flow of earnings going to capital and ideas. 

We can't do this for specific companies. This section is not going to tell you how to play the stock market. But we can do this for the stock market as a whole. Really, we'll be doing this for *all* companies in the economy, whether they are traded on the stock market or not. But since listed companies account for the vast majority of economic activity, this is a good approximation.

## Capital valuation
Let's start with capital. Companies both own capital directly (e.g. Starbucks buys a location and builds a shop) and rent it from other companies (e.g. a bank rents office space from a commercial real estate firm). From our perspective we don't care, because all we are trying to do is value the entire flow of earnings to capital, and we don't care who owns what. 

The whole stock of capital we track as $K$, and that capital has a return $r$, which if you recall was determined by something like this

$$
r = \frac{s_K Y}{K}
$$

where $s_K$ is the share of GDP that is paid to capital. That means the total payments to capital in a given period are just

$$
rK = s_k Y.
$$

These are the earnings associated with capital. It's how much of revenues (GDP) are getting paid to companies as compensation for using their capital to produce goods and services. 

The stock market is valuing the flow of these payments over time. It cares not just about $r_0 K_0$ today, but about the earnings tomorrow, $r_1 K_1$, and so on. Why? Think about what a stock certificate is. It's a claim of ownership of that *flow* of earnings. The value of a stock is that you get rights over those earnings as long as you hold the stock, not just for that year.

The value of that stock certificate should depend on the flows, discounted back to today. Discounted back to today means "how much are those future flows worth to me today"? Or really, "how much would someone else pay me for my stock certificate today, knowing the flows come in the future"?

The PDV of the flow of capital payments is

$$
V_K = r_0 K_0 + \frac{r_1 K_1}{1+\rho} + \frac{r_2 K_2}{(1+\rho)^2} + ....
$$

off until infinity. No, these companies aren't going to continue forever, but we don't know exactly when to stop the valuation. And once you get to very far into the future the flows don't really matter much given the discounting. 

What's this $\rho$ thing? That's the discount rate. It's bigger than zero, so note that in each case it is *lowering* the value of the flows in that period. In period 2, for example, you divide the actual capital earnings by $(1+\rho)^2$. If $\rho = .05$, the this is $r_2 K_2 /1.1025 = 0.91 r_2 K_2$. In other words, one dollar of capital earnings in period 2 is only worth about 91 cents today. Meaning that if you wanted to sell someone the rights to one dollar of your capital flows in period 2 (an odd things, but okay) then they would only pay you 91 cents for it. 

Why not pay you the whole dollar? Because they have to wait 2 periods to get it. People are impatient, and the buyer could have their dollar today and not buy your dollar in period 2. So the only reason they'd buy the rights to your period 2 dollar is if they can get a deal. $\rho$ is measuing how much of a deal they expect, and is in that sense a measure of how impatient people are. 

Leave aside the question of where $\rho$ comes from for a moment, we'll come back to that. Instead, let's see how this valuation works out. Plug in what we know about $r$ into the above and we get

$$
V_K = s_K Y_0 + \frac{s_K Y_1}{1+\rho} + \frac{s_K Y_2}{(1+\rho)^2} + ....
$$

where I've already assumed that $s_K$ stays constant over time. Remember from the growth facts that this is kinda-sorta true. But there isn't a clear trend, so this is a reasonable starting point. What this tells us is that the value of the capital earnings depends on the size of GDP, and that is growing over time. 

To make life simpler we're going to assume that GDP is on a BGP, and that the growth rate of $Y$ is constant at what we already know is $g_A + g_L$. Yes, you know that. 

This means

$$
V_K = s_K Y_0 \left( 1 + \frac{(1 + g_A + g_L)}{1+\rho} + \frac{(1 + g_A + g_L)^2}{(1+\rho)^2} + ....\right)
$$

where I've pulled out the initial value, $s_K Y_0$, because it is common to each term. Inside the parenthese it's just the fact that GDP goes up by a factor of $(1+g_A+g_L)$ each year. That summation can be written like this:

$$
V_K = s_K Y_0 \sum_{t=0}^{\infty} (1+g_A+g_L - \rho)^t.
$$

How did I get there? Well, the ratio $(1+g_A+g_L)/(1+\rho)$ is, because all those terms are small, going to be equal to approximately $1 + g_A + g_L - \rho$. You could get that by saying that $\ln (1+g_A+g_L)/(1+\rho) = \ln (1+g_A+g_L) - \ln (1+\rho) \approx g_A + g_L - \rho \approx \ln (1 + g_A + g_L - \rho)$. 

That summation has a nice solution to it provided that $\rho > g_A + g_L$. In other words, the discount rate has to be high enough (we are sufficiently *impatient*) that we don't care much about the future so that the infinite stream of earnings doesn't add up to an infinite valuation. With $\rho$ big enough, terms in the far future are essentially zero and we don't care about capital earnings in period 1000. 

Fine, assuming that holds then the term inside the summation is something less than one raised to the $t$ power and that has the solution of

$$
V_K = s_K Y_0 \frac{1}{\rho - g_A - g_L}.
$$

The valuation - what someone would pay for the flow of capital earnings in this economy - is equal to the initial flow, $s_K Y_0$, multiplied by this term accounting for the future growth and discounting of those future flows. That term is going to be some number bigger than one, so the value of the capital earnings are bigger than the initial flow, which makes sense. Yes we discount the future, but we do get an infinite stream of payments, so that's nice. 

Let's put some vague numbers on this to see what we've got. If $\rho$ is like .05, and $g_A$ is like .02, and $g_L$ is like .01, and $s_K$ is like 0.1, then the valuation of capital is

$$
V_K = s_K Y_0 \frac{1}{.05 - .02 - .01} = 0.2 Y_0 50 = 10 Y_0
$$

or about ten times the flow of earnings today. We could probably see this more easily as a ratio of the value to current GDP, for scale. 

$$
\frac{V_K}{Y_0} = s_K \frac{1}{\rho - g_A - g_L} = 10. 
$$

Is that a lot? Hold onto that question for a moment, because we need to value ideas first and then we can come back to that question. The quickie version is that, yes, that's probably too big, but it's interesting to think about why.

## The value of ideas and the market
We can go a little faster here since we know the method. Companies own ideas, via patents or other intellectual property rights, which we discussed ad nauseum already. That gives them some market power and thus they earn some share of GDP, $s_{\pi}$, for the share going to economic profits. The valuation of those flows of profits is identical to how we valued capital flows.

$$
V_{\pi} = s_{\pi} Y_0 + \frac{s_{\pi} Y_1}{1+\rho} + \frac{s_{\pi} Y_2}{(1+\rho)^2} + ....
$$

Everything proceeds identically to before, so we end up with 

$$
V_{\pi} = s_{\pi} Y_0 \frac{1}{\rho - g_A - g_L}.
$$

Companies own both capital and ideas, so the combined value of the companies should just be the sum of those valuations, or

$$
V = V_K + V_{\pi} = (s_{\pi} + s_K) Y_0 \frac{1}{\rho - g_A - g_L}
$$

The only real interesting thing here is that the share of GDP is the combined sum of the capital share and ideas share, but otherwise we're still just evaluating the flow of earnings. We can put this in ratio form as

$$
\frac{V}{Y_0} = \frac{s_{\pi} + s_K}{\rho - g_A - g_L}.
$$

Let's go back to some numbers for sense of scale. If $s_{\pi} \approx 0.1$ and $s_K \approx .2$, then with the same assumptions on $\rho = .05$, $g_A = .02$, and $g_L = .01$, we get

$$
\frac{V}{Y_0} = \frac{.1+ .2}{.05 - .02 - .01} = 15. 
$$

Or the value of those flows of earnings should be like 15 times the size of GDP. 

## Comparing to the data
I hinted above that this calculation is probably wrong, and overstates the value of these capital and idea earnings relative to GDP. It does if we interpret $V/Y_0$ strictly as stock market capitalization to GDP. Here's that data for the US from FRED (via the World Bank):

<iframe src="https://fred.stlouisfed.org/graph/graph-landing.php?g=1tiSq&width=670&height=475" scrolling="no" frameborder="0" style="overflow:hidden; width:670px; height:525px;" allowTransparency="true" loading="lazy"></iframe>

The data is in percent terms, so 100 in the figure means a ratio of $V/Y_0 = 1$. You can see this ratio only hit one around 1995, and even now is only maybe 1.9. That's well below the back of the envelope calculation above of 15. 

What's going on? Well, some of the issue could be poor choices for $\rho$ or $g_A$ or $g_L$. It could be that markets apply a much higher discount rate $\rho$ to valuing stocks. If you set $\rho = 0.12$ then you can get a value for $V/Y_0$ of about 2. Is that reasonable? Probably not? We don't talk in this class about dynamic theories of how people make investment decisions, and that value of $\rho$ is going to inform those. In principle the real return on capital, $r$, should be related closely to $\rho$. But we saw data that $r$ is like around 0.05, so it's hard to see why $\rho$ would be that much higher. That said, stocks are risky, so maybe $\rho$ is really high because it reflects an additional discount people put on the flows because they are uncertain. 

That could all be true, but the more likely answer is that we've got the shares, $s_{\pi}$ and $s_K$, wrong. Here the culprit is probably $s_K$. We said this was capital's share of GDP, but that means it covers *all* capital, and *most* capital is actually embedded in individual houses. The stock market is not picking up the value of all the housing real estate in the US, just the corporate capital (which includes commercial buildings and other equipment). The share of GDP that goes to *corporate* capital is probably a lot lower than 0.2, the quickie assumption I made above. 

What about $s_{\pi}$? It's probably right to say that this reflects payments to companies, but it's going to reflect payments both to big corporations (who own big patents, etc..) as well as unincorporated businesses (your doctor's office) who probably earn some economic profits due to some market power (e.g. there are restrictions on entry to practicing medicine). 

Based on some data from the Fed, which [you can find here](https://fred.stlouisfed.org/release/tables?rid=52&eid=809857) we can pick up that corporate businesses have about 30 trillion in non-financial assets (the things we're trying to value, really). *Non*-corporate businesses (which can't be listed on stock markets) have about 20 trillion in non-financial assets. Households have about 55 trillion in non-financial assets (houses, mainly). So even if *all* capital - those non-financial assets - earn a total of 0.3 of GDP, it's probably only like 30% of that (30 trillion divided by 30+20+55 trillion) that can be attributed to corporate businesses. 

That means the stock market is valuing, at most, a combined share of like $s_{\pi} + s_K = 0.3\times0.3 = 0.09$ of GDP. In our formula that would give us

$$
\frac{V^{Corp}}{Y_0} = \frac{.09}{.05 - .02 - .01} = 4.5, 
$$

which still looks a little high. Now, not every corporation is traded on the stock market, so that 0.09 share of GDP is probably still a little high, so let's make that 0.06. And maybe the discount rate is a little higher at 0.07, and we get

$$
\frac{V^{Corp}}{Y_0} = \frac{.06}{.07 - .02 - .01} = 1.5,
$$

which is a number that is in the correct range to match the data in the figure above. It's possible to reconcile the growth model with the observed data on asset valuations in the stock market. We're never going to be able to do this exactly, the model is too over-simplified. But it's helpful to see that we can get reasonable numbers out of the simplified model without *too* much screwing around.



