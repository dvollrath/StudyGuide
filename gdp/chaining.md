---
title: Chained real GDP
parent: Measuring GDP
nav_order: 3
---

# Chained real GDP
{: .no_toc }

1. TOC 
{:toc}

## Comparisons over many years
We want to look at economic growth over a range of years, not just two. We could imagine using a single base year, and comparing all other years to that one. But then we'd have ratios like $(Y_{1964}/Y_{2009})$, and we'd be measuring real GDP in 1964 using 2009 prices. The disconnect of those prices may be substantial, and we haven't even touched yet on the issues that would come up with new products arriving, or old products disappearing. 

Instead what happens is that we "chain" together estimates of real GDP ratios for adjacent years. For example, let's say we  calculate $(Y_{2008}/Y_{2009}) = 0.98$, $(Y_{2007}/Y_{2008}) = 0.97$, $(Y_{2006}/Y_{2007}) = 0.99$. These are all calculated using the Fisher method described in the prior sections.

If we set real GDP in 2009 to 100, then we can get real GDP in 2008 by using the first ratio, meaning real GDP in 2008 is 98. Real GDP in 2007 would then be $98 \times 0.97 = 95.06$, and real GDP in 2006 would be $95.06 \times 0.99 = 94.11$. Our chained series for real GDP would be 94.11 in 2006, 95.06 in 2007, 98 in 2008, and 100 in 2009. 

Chained real GDP calculations are the closest thing we've got in the data to the theoretical idea of growth we're working with. 

And that's kind of it. 