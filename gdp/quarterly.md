---
title: Quarterly growth
grand_parent: Measuring GDP
parent: Real GDP over time
nav_order: 2
---

# Quarterly growth
{: .no_toc }

1. TOC 
{:toc}

The BEA provides information on GDP growth each quarter, not just for each year. In principle, the calculation of real GDP in one quarter compared to the prior quarter is the same as how you calcualte real GDP in one year compared to the prior year. 

But the reporting of those quarterly numbers is done in a way that often creates confusion, and in the case of 2nd quarter GDP in 2020, creates a *lot* of confusion. The problem is that the BEA and others take quarterly GDP numbers and annualize them. 

Let's say that I calculate that real GDP in the 1st quarter of 2019 is 100.5, and real GDP in the 4th quarter of 2018 was set to 100 as the baseline. Real GDP grew by 0.5% in the 1st quarter of 2019. Great, so far so good.

But there may be some interest in whether the pace of economic growth in the 1st quarter is fast or slow compared to prior *years*. To see this, we can annualize the growth rate. That is, we can ask what GDP growth would look like for *all* of 2019 if in every quarter real GDP grew at 0.5%. 

If real GDP grows at 0.5% each quarter, then we know real GDP would look like this. At the end of the 1st quarter real GDP would be 100.5. At the end of the 2nd quarter it would be 100.5x(1.005) = 101.003. At the end of the 3rd quarter is would be 101.003x(1.005) = 101.508. At the end of the 4th quarter it would be 101.508x(1.005) = 102.016. 

This indicates that the *annualized* growth rate of GDP for the 1st quarter is 2.016%. If growth continued at 0.5% for all four quarters, real GDP in 2019 would be 2.016% higher than in 2018. Notice that we got this 2.016% from just applying the same 1.005 over and over again.

$$
102.016 = 100\times(1.005)^4.
$$

And to put this in growth rate terms, 

$$
.02016 = \frac{102.016-100}{100} = (1.005)^4 - 1.
$$

If we do this more generally, we get that

$$
g^{Ann} = (1 + g^{Qtr})^4 - 1.
$$

The annualized growth rate is just (one plus) the quarterly growth rate to the fourth power to account for the four quarters. The minus one just leaves us with the decimal form of the growth rate. 

This usually isn't a big deal. But in the 2nd quarter of 2020 you know the growth rate of real GDP was a massively negative number. In *annualized* terms the growth rate of real GDP was -32.9%. But we know that this came from the above equation.

$$
-.329 = (1 + g^{Qtr})^4 - 1
$$

and we can solve for the right $g^{Qtr}$. 

$$
(1 - .329)^{1/4} - 1  = g^{Qtr} = -0.095.
$$

Real GDP fell by about 9.5% in the 2nd quarter of 2020. We lost about 1/10th of economic activity compared to the prior quarter. We did *not* lose about 1/3rd of economic activity. 

Now, if the shutdown of activity in the 2nd quarter were to continue *for three more quarters*, then over those four quarters real GDP would fall by 32.9%. But we don't actually know what real GDP growth will be in the next three quarters. Thanks to some epic mistakes in leadership and compliance with public health measures, we certainly could have a few more quarters with slow or negative growth. But probably not on the scale of the 2nd quarter of 2020. 

Regardless, don't get fooled by the use of annualized growth rates based on quarterly growth rates. They are extrapolations only. The financial press *sucks* at making this distinction, and likes to get excited to report big numbers. 

## Year-on-year
There is another kind of annual growth rate sometimes used that is based on quarterly numbers. These are year-on-year rates that compare the 2nd quarter in 2019 (say) to the 2nd quarter in 2018. These really are measuring a full year of economic growth (as opposed to extrapolating quarterly rates). And hence they are more informative than the annualized rates. 

Real GDP in Q2 of 2020 was 106.228. Real GDP in Q2 of 2019 was 117.433. So the year-on-year growth rate of real GDP from Q2 of 2019 to 2020 was 106.228/117.433 - 1 = -0.095, or -9.5%. This is almost exactly what the quarterly growth rate we found above, which turns out to be a coincidence, not a mathematical certainty. But it does give you the right sense of scale of what was happening. 

The combination of quarterly and year-on-year rates can help you see a little better what was happening in the economy. Let's back up one quarter to Q1 2020 and ask what the onset of the pandemic was doing to the economy. In Q1 of 2020 real GDP was 117.373. In Q4 of 2019 real GDP 118.874. So the quarterly growth rate was 117.373/118.874-1 = -0.0126, or about -1.26%. 

But real GDP in Q1 of 2019 was 116.999, so the year-on-year growth rate was 117.373/116.999-1 = 0.0032, or about 0.32% growth. Compared to a year prior, real GDP was still higher in Q1 of 2020 even with the onset of the pandemic. Economic growth in 2019 was sufficient to put us on a higher starting point so that even with a significant drop in real GDP we still produced more than the year before. But the quarterly growth rate shows that it was a very quick slowdown when the pandemic hit. 