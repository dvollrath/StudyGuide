---
title: Real GDP growth
parent: Measuring GDP
has_children: true
nav_order: 7
---

# Measuring growth by affordability
{: .no_toc }

1. TOC 
{:toc}


## Diet Cokes
What we want to do is measure the growth in *real* consumption over time. That is the increase in actual goods and services that we get to use or consume or have on hand in our lives. Real GDP is a way to try and summarize the amount of real consumption of those goods and services, and growth in real GDP - economic growth - is supposed to represent an increase in those actual goods and services. In that sense real GDP growth is about some kind of increase in true material living standards. 

But there are lots of goods and services, so how do we measure that real GDP, and how do we assess whether it in fact grew or not? Let's start by thinking about a very simple world where the only good we consume is Diet Coke. 

Real GDP in this case is literally the number of Diet Cokes you consume in a given year (or month or week). Growth in real GDP is just the growth in the number of Diet Cokes. The growth *rate* is just the percent change in number of Diet Cokes. If you consumed 1,000 Diet Cokes in 2023, and 1,100 Diet Cokes in 2024, then real GDP grew by 100 Diet Cokes and the percent growth was 10%. 

Note that we never, ever, have to use the term "dollars" in this simple world. Real GDP is not about dolalrs. It is about real units of goods and services. Since we're in simple Diet Coke world, the unit of real GDP is just "Diet Cokes", and is simple to measure and evaluate. 

But the world does operate using dollars (or some other currency) and while in Diet Coke world we don't really need to care about that it will be helpful to see how we can use observed dollar values to work out the changes to real GDP. 

Let's say that we observe someone spending 1,000 dollars on Diet Coke in 2023, and then spending 1,200 on Diet Coke in 2024. All we know is that they spent more money. Can we infer what happened to the real number of Diet Cokes they consumed? Yes, if we can figure something out about the price they paid. 

- If we knew that the price of a Diet Coke was unchanged from 2023 to 2024, then we could infer that the number of Diet Cokes they consumed went up by 20%, as 1,200 in 20% higher than 1,000. We don't know exactly how many Diet Cokes they consume, but we do know it must have gone up because the price was unchanged and this is literally the only thing they buy. 

- If we knew that the price of a Diet Coke went up by 20% between 2023 to 2024, then we could infer that the number of Diet Cokes they consumed didn't change. The 20% increase in spending would be because they bought the same amount but each Diet Coke was 20% more expensive. In this case there is not real increase in consumption.

- If we knew that the price of a Diet Coke went up by more than 0 and less than 20%, then we know that there was *some* increase in the number of Diet Cokes consumed, because if the quantity stayed the same then spending would not have gone up by 20%. The real GDP here had to grow by somewhere between 0 and 20%. 

We can make the math exact, but this is in principle how we can calculate growth in real GDP. We just need information on total spending and prices. These are in general easier to observe than the actual quantity of things purchased. In this example, we can ask Coca-Cola for total sales of Diet Coke (spending) and how much they charge (maybe on average) and back out the real GDP number.

## Simple math
Stick with the Diet Coke example, but now let's work out how to use spending and price data to figure out the growth in real GDP. 

Spending in 2023 was 1,000 dollars, or $PY_{2023} = 1000$, where $P$ is the price and $Y$ is the quantity. In 2024 spending was 1,200 dollars, or $PY_{2024} = 1200$. 

The difference in spending is

$$
PY_{2024} - PY_{2023} = 1200 - 1000 = 200.
$$

What we're trying to do is figure out how much of that 200 dollar increase was simply due to the price increasing, and how much was because the quantity increased. That quantity increase is growth in real GDP.

Break apart the spending in this way, which is just saying that spending in a year depends on the price in that year and the quantity in that year.

$$
P_{2024}Y_{2024} - P_{2023}Y_{2023}
$$

and now do a little manipulation of that to get

$$
P_{2024}Y_{2024} - P_{2023}Y_{2023} = P_{2024}Y_{2024} - P_{2024}Y_{2023} + P_{2024}Y_{2023} - P_{2023}Y_{2023}
$$

which note is adding and subtracting the same term, $P_{2024}Y_{2023}$ that mixes up the price in 2023 with the quantity in 2024. That allows us to write

$$
P_{2024}Y_{2024} - P_{2023}Y_{2023} = (Y_{2024}-Y_{2023})P_{2024} + (P_{2024}-P_{2023})Y_{2023}. 
$$

This looks kind of messy, but the RHS gives us a thing that is the difference in quantities and a thing that is the difference in prices. Keep going by dividing both sides by $PY_{2023}$. 

$$
\frac{PY_{2024}-PY_{2023}}{PY_{2023}} = \frac{Y_{2024}-Y_{2023}}{Y_{2023}}\frac{P_{2024}}{P_{2023}} + \frac{P_{2024}-P_{2023}}{P_{2023}}.
$$

A bunch of these fractions are just how to calculate the growth rate of something. For example, $PY_{2024}-PY_{2023}/PY_{2023}$ is just the percent change in spending from 2023 to 2024. I'm going to write that as $g_{PY}$, and similarly for other terms.

$$
g_{PY} = g_{Y} \frac{P_{2024}}{P_{2023}} + g_P.
$$

This says that the percent growth in spending is - roughly - equal to the growth rate of quantities (the thing we are after) plus the growth rate of price. There is a little adjustment going on with the relative prices, the ratio $P_{2024}/P_{2023}$, here. Note that this ratio is just $P_{2024}/P_{2023} = 1 + g_P$. So we have

$$
g_{PY} = g_Y (1 + g_P) + g_P
$$

and we can solve this for $g_Y$, the growth rate of real GDP (or in our case, Diet Cokes).

$$
g_Y = \frac{g_{PY} - g_P}{1 + g_P}.
$$

What we have here is an equation that let's us calculate reat GDP growth for any situation given information on spending and prices. In particular, it let's us use growth rates of spending and prices to back out the growth rate of real GDP. It won't, like our examples above, let us calculate the absolute number of Diet Cokes. 

Revisit those examples. 

- Spending goes up from 1000 to 1200, so $g_{PY} = .20$. The price is unchanged, so $g_P =0$. From the equation this means that $g_Y= (.20 - 0)/(1+0) = .20$. That works. If prices don't change but spending goes up by 20% then it must be that real consumption went up by 20%.
- Spending goes up from 1000 to 1200, so $g_{PY} = .20$. The price goes up 20%, so $g_P = .20$, and therefore $g_Y = (.20 - .20)/(1+.20) = 0$. Again, that works. If prices and spending go up by exactly the same percent, then there can't be any growth in real consumption.

Where the math is more useful is in those intermediate cases where the price rose between 0 and 20%. Let's say that we observe prices going up by 7%, and spending still went up by 20% (from 1000 to 1200). What is the growth rate of real consumption of Diet Coke? $g_{PY} = .20$, and $g_P =.07$. Real consumption grew by $g_Y= (.20 - .07)/(1+.07) = 0.121$

This says that real consumption of Diet Coke grew by about 12.1% from 2023 to 2024. That makes some sense. Spending went up by 20%, and of that some was driven by higher prices and some was driven by more real consumption. 

Calculating real GDP for the whole economy is going to work a lot like this, just for a range of products that we'll have to add up somehow. We can get a lot of intuition for growth from this example.

The numerator in this calculation is $g_{PY} - g_P$, the growth rate of spending minus the growth rate of the price. We're going to call that *affordability growth*, as it tells us something about how many more Diet Cokes we could afford given the growth in our spending. If $g_{PY} > g_P$, then it must be the case that $g_Y>0$, meaning that if the price of something grows more slowly than spending, we must be getting more of that thing. You can see that if prices grow faster than spending, then $g_Y<0$ and real consumption falls. 

This is the essence of economic growth. It's things getting more affordable, and our nominal spending growing faster than the price of the things we want to buy. Note that all we need for real GDP growth is that $g_{PY} > g_P$. It doesn't matter how big in absolute terms those things are. We could have 50% growth in spending and 49% growth in prices (massive inflation), and that still leaves us with *positive* growth in real GDP. If spending *falls* but prices fall *faster*, so like $g_{PY} = -.1$ but $g_P = -.2$, then it is still the case that $g_{PY} - g_P = -.1 - (-.2) = .1$ is positive and there was real GDP growth. Real GDP growth is a race between spending and prices. A very common way to see growth is when $g_{PY} \approx 0$ but $g_P <0$. That is, your nominal income stays constant but the price of something gets cheaper. 

## The whole mathy thing
How do we do this for lots and lots of products that make up the economy? The whole intuition is going to be similar, but we'll need to add up affordability growth across products in a specific way we will get to. The intuition is straightforward; there will be more weight on things that we *spend* more on. If something is a big part of your budget, then whether it gets more or less affordable will count for more in the calculation of real GDP growth. 

One additional note to make. In the above example with the Diet Coke we divided affordability growth $g_{PY} - g_P$ by this adjustment $1 + g_P$ to get the right answer. When the size of the $g_P$ are close to zero (1%, 2%) then this thing is very close to 1. What I'm going to show you here shows how to calculate real GDP growth over lots of goods using differentials, which are about very small changes to things. Hence it ignores those adjustment factors. That helps in understanding what is going on, without making a big change to the numerical answers. When someone like the Bureau of Economic Analysis does this they *do* include the adjustments, so the data you see is doing the right thing. We are doing a approximation so that we can see what's going on.

Call nominal GDP $PY$, where $P$ is the "price" of GDP and $Y$ is a measure of real GDP. We'll be more specific about what I mean by real value, but think of $Y$ as a count of the actual things that you consume, as opposed to $PY$, which is how much you spent on them. We really only care about $Y$.


$$
PY = \sum_i P_i C_i
$$

Take the differential of this 

$$
d PY = \sum_i P_i dC_i + \sum_i dP_i C_i.
$$

In principle we're thinking of this as the differential with respect to time, but it could be how PY changes in response to anything. All we're saying here is that the change in spending, $dPY$, is due to changes in quantities, $d C_i$, weighted by their price and changes in prices, $d P_i$, weighted by how much of each thing you buy. There isn't anything mysterious here. All we've done is collect all the changes in quantities together and all the changes in prices together.

Now, divide both sides by $PY$, total spending,

$$
\frac{d PY}{PY} = \sum_i \frac{P_i}{PY} dC_i + \sum_i dP_i \frac{C_i}{PY}.
$$

On the left-hand side, this is now just the *percent* change in spending. On the right-hand side, note that I divided each of the elements of the sum by $PY$, which is fine. I wrote those fractions deliberately this way because we're going to make one more nudge and get this into a more useful form.

We're going to multiply and divide within each summation like this:

$$
\frac{d PY}{PY} = \sum_i \frac{P_i C_i}{PY} \frac{dC_i}{C_i} + \sum_i \frac{dP_i}{P_i} \frac{C_i P_i}{PY}
$$

and look at what we have inside each summation. The first summation has the *percent* change in quantity of a product, $dC_i/C_i$, weighted by the *expenditure share* of that product, $P_i C_i/PY$. The percent growth in quantity purchased matters for overall spending to the extent that you spend a lot of your income on that good, which kind of makes sense. If you only spend 1% of your money on Diet Coke, then even increasing your consumption by like 10% won't have a big impact on your *total* spending. 

The second summation is similar, but measures the *percent* change in price of each good, again weighted by the expenditure share. Like quantities, percent changes in price matter more for things that you spend a lot of money on (e.g. rent) than for things you spend little on (e.g. Diet Coke).

We're going to shift this around and create a measure of the growth of real GDP. Swap things around like this:

$$
\sum_i \frac{P_i C_i}{PY} \frac{dC_i}{C_i} = \frac{d PY}{PY} - \sum_i \frac{dP_i}{P_i} \frac{C_i P_i}{PY}
$$

The thing on the left is the expenditure-share weighted sum of the percent growth in real quantities consumed. That thing on the left is the change in consumption *holding prices constant*, which is exactly what we want to measure. The expenditure shares tell us which products are important to us, and the $dC_i/C_i$ tells us how much our consumption of those grew. This is what we are after. 

What's on the right-hand side? A way of understanding where that growth comes from. To understand it better we're going to play with the algebra a little. First, note that it has to be the case that $\sum_i (C_i P_i)/PY = 1$, or the sum of the expenditure shares has to add up to one. We can't spend more than 100% of our spending.

This means we can write

$$
\sum_i \frac{P_i C_i}{PY} \frac{dC_i}{C_i} = \sum_i \frac{d PY}{PY} \frac{C_i P_i}{PY} - \sum_i \frac{dP_i}{P_i} \frac{C_i P_i}{PY}
$$

which is just making the whole $dPY/PY$ thing more complicated. Because $d PY/PY$ is the same across products (overall spending growth is what it is) we can put it "inside" this summation. The value of doing this is that we can write

$$
\sum_i \frac{P_i C_i}{PY} \frac{dC_i}{C_i} = \sum_i \left(\frac{d PY}{PY} - \frac{dP_i}{P_i} \right)\frac{C_i P_i}{PY}
$$

which is possible because the two summations are over the same index, $i$, and because the weights are the same. What's that term inside the parenthese? For an individual good that is

$$
\frac{d PY}{PY} - \frac{dP_i}{P_i}
$$

and it is the percent change in spending minus the percent change in the price of the product $i$. I'm going to call this the *affordability growth* of product $i$. If total spending goes up by 10%, but the price of product i only goes up by 2%, then product $i$ got more affordable. It's price did not keep up with the total amount you spent. If the only thing you spent money on was Diet Coke, then if your spending went up 10% but Diet Coke prices went up 2%, then you can afford 8% more Diet Coke. We're doing this same kind of calculation for each and every product in that summation. Whether the affordability growth of a product matters to us depends on the expenditure share. 

What this whole things is telling us is that real GDP growth represents products *getting more affordable* over time, on average. Because this is a summation over lots of products, it doesn't mean that *every* product is getting more affordable, or even that *most* products are getting more affordable. Growth in real GDP just means that on average, things we spend a lot of money on are tending to get at least a little more affordable over time. 



*Why* do things get more affordable? The whole class is kind of about that. 


You're going to say "What about inflation?" and I'm going to answer you "Yeah, what about it?". The whole point of this way of looking at things is that inflation is already accounted for. Pure increases in prices *AND* expenditure just don't matter. If your income doubles and all the prices double, everything is the same for you. Usually when you say "What about inflation?" you mean the prices went up but your income did not. That is certainly possible, and here would be reflected in negative growth in real GDP. 
