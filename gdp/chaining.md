---
title: Real GDP over time
parent: Measuring GDP
has_children: true
nav_order: 3
---

# Real GDP over time
{: .no_toc }

1. TOC 
{:toc}

## Chained real GDP
We want to look at economic growth over a range of years, not just two. We could imagine using a single base year, and comparing all other years to that one. But then we'd have ratios like $(Y_{1965}/Y_{2009})$, and we'd be measuring real GDP in 1965 using 2009 prices. The disconnect of those prices may be substantial, and we haven't even touched yet on the issues that would come up with new products arriving, or old products disappearing. 

Instead what happens is that we "chain" together estimates of real GDP ratios for adjacent years. For example, let's say we  calculate $(Y_{2008}/Y_{2009}) = 0.98$, $(Y_{2007}/Y_{2008}) = 0.97$, $(Y_{2006}/Y_{2007}) = 0.99$. These are all calculated using the Fisher method described in the prior sections.

If we set real GDP in 2009 to 100, then we can get real GDP in 2008 by using the first ratio, meaning real GDP in 2008 is 98. Real GDP in 2007 would then be $98 \times 0.97 = 95.06$, and real GDP in 2006 would be $95.06 \times 0.99 = 94.11$. Our chained series for real GDP would be 94.11 in 2006, 95.06 in 2007, 98 in 2008, and 100 in 2009. 

Chained real GDP calculations are the closest thing we've got in the data to the theoretical idea of growth we're working with. 

## New products and lost products
Chaining gives us a way of piecing together a real GDP series that avoids comparing 1965 to 2009. Why does that matter? Mainly because lots of products in 2009 didn't exist in 1965, and lots of products that did exist in 1965 are no longer purchased today. That is relevant to our calculation of real GDP. 

Go back to the simple two-good situation. And let's say we want to compare 1965 to 2009, and the two goods we want to use are an iPhone (good 1) and an [RCA Spectra 70](https://archive.computerhistory.org/resources/text/RCA/RCA.SPECTRA70.1965.102646099.pdf) (good 2). The RCA was a mainframe that could be configured with either 4,096 or 8,192 bytes of RAM. That's about 0.0.000007629394 of a GB, by the way.

Anyway, for those two products, let's say that we know the following. 

| Year | p(iPhone) | c(iPhone) | p(RCA) | c(RCA) |
|:-----|:-----|:-----|:-----|:-----|
| 1965 | ???  | 0 | $10,000  | 100 |
| 2009 | $500  | 100  | ???  | 0 |

The quantities of both are made up, and it will turn out not to matter for our purposes that I assumed 100 of each were sold in those years.

Our big problem is with those question marks. What do you use for the price of an iPhone in 1965 or the price of an RCA Spectra 70 in 2009? The choice you make will matter for your calculations of real GDP.

Let's start by saying that 1965 is our base year. 

$$
\left(\frac{Y_{2009}}{Y_{1965}}\right)_{1965} = \frac{??? \times 100 + 10000 \times 0}{??? \times 0 + 10000 \times 100}.
$$

What do you want to use for the price of an iPhone in 1965? If you plug in ??? = 0, then you get the ratio of zero, meaning 2009 has literally zero real consumption relative to 1965. That seems like it doesn't make sense. 

If you go the other way, and assume that the iPhone had infinite value in 1965 (because it would have taken infinite dollars to assemble one in that year), then you get a ratio of infinity, meaning *1965* had zero value relative to 2009. And that doesn't make sense either.

Okay, maybe that was just because we were using 1965 as the year for prices. What if we use 2009? 

$$
\left(\frac{Y_{2009}}{Y_{1965}}\right)_{2009} = \frac{500 \times 100 + ??? \times 0}{500 \times 0 + ??? \times 100}.
$$

What should we use for the price of the RCA? If you choose ??? = 0 for the RCA, the ratio works out to infinity again, because the denominator works out to zero. If you choose ??? equal to infinity (it would take infinite dollars today to buy/find an RCA Spectra 70), then you get a ratio of 0.

In this case, you might want to argue that zero and infinity are not useful extremes to think about. It might be possible to hire *someone* out there to rebuild an RCA Spectra 70 for you at some price between 0 and infinity. Okay, but that would be very expensive relative to an iPhone, meaning the infinity approximation would start to kick in, *and* how representative of the actual consumption behavior in the economy is your purchase of a single retro-mainframe? 

The general point is that once we have products being introduced or dropped from use over time, we run into this recurring issue of valuing real consumption/GDP from one year to the next. Even chaining doesn't help, because at some point we face this same dilemma. In 2004 no iPhone existed, and in 2005 an iPhone did exit. So what was the price in 2004? 

There is no proper solution to this issue. Without an actual price, it is impossible to do the calculation of real GDP. So how do statistical agencies get around this? The short answer (because the actual details involved in this are intricate) is that they find a *similar* product or products to the new product, and use that to figure out how much the price of an iPhone *would* have been in 2004. They might have looked at a Blackberry, for example, a relatively sophisticated smart phone for the time. If the price of a Blackberry was 400 in 2004 and 500 in 2005, for a 25% increase, then they would assume that an iPhone also had a 25% increase from 2004 to 2005. Knowing the price in 2005 was 800, they'd back out that an iPhone in 2004 would have been 640.

Does that sound like a kind of ad hoc way to do this? Yes. As I said, place like the Bureau of Economic Analysis are more sophisticated than my simple example suggests, but that is the spirit of what happens.

It means that you should keep a little skepticism in the back of your head regarding real GDP comparisons over long periods of time. With the introduction of new products and the disappearance of old ones, it isn't crystal clear how real consumption (and GDP) changed over time. The real GDP numbers we use are probably a good, rough, approximation.

