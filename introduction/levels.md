---
title: Levels and growth rates
parent: Preliminaries
nav_order: 1
---

## Basic concepts
The first thing we need to do is distinguish between the *level* of something (like GDP), the *growth* of that thing, and the *growth rate* of that thing. 

Here's a table showing some made-up data on GDP for several different years. The level is the actual amount of GDP produced in that year. The *growth* of GDP is just the absolute change in GDP from one year to the next. There is no growth recorded in 2018 because we don't have the data for 2017, and so we cannot calculate the absolute change. 

| Year | Level | Growth | Growth rate |
|:-----|:------------------|:------|:----|
| 2018 | 100 |    |       |
| 2019 | 104 | 4  | 4.00% |
| 2020 |  98 | -6 | -5.77% |
| 2021 | 103 | 5  | 5.10% |
| 2022 | 105 | 2  | 1.94% |
| 2023 | 107 | 2  | 1.90% |
| 2024 | 109 | 2  | 1.87% |

The growth rate of GDP in this table is the *percent change* in GDP from one year to the next. So from 2018 to 2019, the growth rate was $(104 - 100)/100 = .04$, or 4%. The next year, the absolute change in GDP was negative, so the growth rate was $(98-104)/104 = -.0577$, or -5.77%. And so on. Remember that when calculating the growth rate, you have to use the earlier year in the denominator of the calculation. 

___
Reminder 
{: .label } 
A percent is just 100 times a decimal. Saying "7%" is the same thing as saying "0.07". In the study guide we'll flip back and forth between these two. 

___

There are a few interesting things to notice about how levels, growth, and growth rates work together. Take a look at the years 2022, 2023, and 2024. In each of these years, the absolute growth of GDP is 2, meaning that GDP goes up by exactly the same amount each year. But when we calculate the *growth rate* of GDP in those years, the growth rate declines from 1.94% to 1.90% to 1.87%. Why? Because the level of GDP is increasing, and so the absolute growth (2) represents a smaller percent change in GDP than before. 

This highlights that you have to be very careful when talking about GDP and the growth rate of GDP. It is quite possible for the growth rate to be declining (as it did from 2022-2024) and yet GDP is rising by just as much as it was in the past. A fall in the growth rate does *not* mean that the level of GDP fell. 

Let's add a little mathematical notation to this. If $Y_{2018}$ is the level of GDP in year $2018$, and similar for other years, then we can write

$$
Y_{2019} = (1+g_{Y,18-19}) Y_{2018}
$$

where $g_{Y,18-19}$ is the growth rate from 2018 to 2019. In numbers,

$$
104 = (1 + .04) \times 100.
$$

We can turn the equation around to solve for the growth rate,

$$
g_{Y,18-19} = \frac{Y_{2019}}{Y_{2018}} - 1 = \frac{Y_{2019} - Y_{2018}}{Y_{2018}}
$$

and again, in numbers,

$$
.04 = \frac{104}{100} - 1 = \frac{104-100}{100}.
$$

___
Reminder 
{: .label } 
You'll have to be comfortable with this level of algebra to make any sense of this study guide. If you can't follow what we just went through, you probably want to do a math review before taking this course.

___

## Average or annualized growth rates
In the table above, we calculated an *annual* growth rate, meaning it was the percent change in GDP from one year to the next. But we don't have to limit ourselves to this. What if we want some kind of single summary growth rate that reflects what happened on average from 2018 to 2024? That summary growth rate might be useful in order to compare this period of time to some other one (e.g. 1960-1970) or to compare the growth rate in the U.S. to the growth rate in another country.

We can compute an *annualized* growth rate from 2018 to 2024 to get this summary measure. The annualized growth rate is the growth rate that, if it held in every year from 2018 to 2014, delivered the exact same end result of GDP of 109. This is a hypothetical growth rate that ignores the fluctuations in growth from year to year. Here's what it looks like in a table

| Year | Level | Growth | Growth rate |
|:-----|:------------------|:------|:----|
| 2018 | 100 |    |       |
| 2019 | 101.45 | 1.45  | 1.45% |
| 2020 | 102.91 | 1.47| 1.45% |
| 2021 | 104.40 | 1.49  | 1.45% |
| 2022 | 105.91 | 1.51  | 1.45% |
| 2023 | 107.44 | 1.53  | 1.45% |
| 2024 | 109 | 1.55  | 1.45% |

The only thing that matches the original table of "real" data are the levels of GDP in 2018 and 2024. Everything else in this hypothetical table is forced to fit between those two end points. The annualized growth rate is 1.45%, and the table shows that if the economy grew at exactly 1.45% each year, it would still have ended up at a GDP of 109 in 2024. The 1.45% is our summary measure of how fast growth was for this period from 2018-2024. 

How did I know that the annualized growth rate was 1.45%? I could have guessed, or tried a bunch of numbers until I found one that worked. But there is a way to solve for the annualized growth rate explicitly. First, let's call this annualized growth rate $g_{Y,18-24}$. The little "g" means annualized growth rate, the "Y" means we're talking about GDP, and the 18-24 indicates the years.

What the table indicates is that

$$
Y_{2024} = (1 + g_{Y,18-24})^6 Y_{2018}
$$

or in numbers,

$$
109 = (1 + .0145)^6 \times 100.
$$

The 6 comes from the fact that we had to apply our annualized growth rate 6 times to get from 2018 to 2024.

But that still doesn't tell us how we figured out it was 1.45% to begin with. Just like in the prior section, manipulate this equation to solve for the growth rate

$$
g_{Y,18-24} = \left(\frac{Y_{2024}}{Y_{2018}}\right)^{1/6} - 1
$$

or in numbers,

$$
.0145 = \left(\frac{109}{100}\right)^{1/6} - 1.
$$

So we can solve for the annualized growth rate using a formula like this if we know $Y_{2018}$, $Y_{2024}$, and the number of years, which is just the difference in the years, 2024-2018 = 6. 

## General formula
Let's be a little more formal about all of this. Rather than specific years, let's say that we want to calculate the annualized growth rate of GDP from year $t$ to year $s$. The levels of GDP in those years are $Y_{t}$ and $Y_{s}$. The number of years between them are $s-t$. 

The formula for the annualized growth rate from year $t$ to year $s$ is therefore

$$
g_{Y,t-s} = \left(\frac{Y_{s}}{Y_{t}}\right)^{1/(s-t)} - 1.
$$

All we did above was use this equation with specific years $t=2018$ and $s=2024$. 

One thing to note is that this equation works even for calculating the annual growth rate from one year to the next. If we said that $t=2018$ and $s=2019$, then this equation tells us to calculate

$$
g_{Y,18-19} = \left(\frac{104}{100}\right)^{1/(1)} - 1 = .04
$$

or 4%, just as we thought. 

This means that an *annual* growth rate is just an *annualized* growth rate, calculated for a one-year difference. 

In studying economic growth, we are almost always talking about annualized growth rates, because we are almost always talking about growth over long periods of time. Our interest may be more in the 1.45% annualized rate, and less in the fluctuations in the growth rate (-5.77%, +5.0%) that hide behind that annualized rate.
