---
title: Present discounted value
parent: Preliminaries
nav_order: 5
---

# Present discounted value
{: .no_toc }

1. TOC 
{:toc}


## The value of a dollar today
When we look at decisions of firms or people to build new capital goods (e.g. buildings) or come up with new products, they will trade off the up-front cost of the new capital or product development against the operating profits they can earn using the capital (or renting it out) or selling the product. 

Those operating profits will, if the firm or person is lucky, arrive not just today (time $t$), but in future periods as well. Once you build an apartment building, for example, you expect to be able to rent out the units for many years. We want to come up with a single number that tells us the total value of that stream of operating profits that can be compared to the up-front cost. 

To set terms, think of the up-front cost occurring at time zero. So we want to figure out how valuable a *future* payment is from the perspective of time zero, *today*. A more intuitive way to think about this is that we want to figure out how much you'd pay *today* for the rights to get that payment in the future. Let's say I come to you because I need money today, and I say that I can pay $100 back to you in 2030. How much would you give me today for that promise? (By the way, that's just how a bond works). 

You'd give me less than $100, because you'd be giving up money *today*, and won't get back the $100 until 2030. We refer to this sometimes as *discounting* the $100 payment. Hence the amount that you'd pay for my promise is the *present discounted value* of $100 in 2030. "Present" because it's what you'd pay me today. "Discounted" because that's less than the $100. "Value" because, well, we're talking about money. 

Let's lay out this definition and then see what the pieces mean.

{: .highlight } 
> The present discounted value at time zero of a payment $D$ that occurs $N$ periods from now, given a discount rate $r$, is
> $$
> PDV_0 = \frac{D}{(1+r)^N}
> $$

The $PDV_0$ is what you'd pay me now for the future payment, and $D$ is the future payment ($100) that occurs $N$ years from now (in 2030). The new piece here is the $(1+r)^N$ thing, and that $r$ is the *discount rate* you are, in effect, charging me. 

Because $PDV_0 < D$ (you will give me less than $100) it must be that $r > 0$, or that the discount rate is positive. All we're doing with $r$ is taking the idea of "you will pay me less than D" and turning it into something that looks and feels like an interest rate. 

There are a lot of ways to use or think about this definition, and they amount to solving for one of the variables in the formula given the other two.

* Yield. If you observe someone paying $PDV_0$ for a payment $D$ that takes place $N$ periods from now, you can back out the implied discount rate, $r$, that the buyer is applying. You can think of $r$ as the *return* or *yield* the purchaser is earning on their initial payment of $PDV_0$. This is like calculating the yield on a bond.
* Price. If there is a payment $D$ that takes place $N$ periods from now, and you have a discount rate of $r$, then you can work out the $PDV_0$ of that payment from your perspective. That would indicate to you what you would pay for this payment. Here, you can think of $r$ as an outside option (e.g. $r$ is what you can earn by putting your money in the bank) of how to use your money. This is like calculating the fundamental value of a stock that pays a dividend in the future. 
* Payments. If the discount rate is $r$ and a given $PDV_0$ for $N$ periods, then you can work out how big the payments $D$ will be. This is like figuring out your car payment or mortgage payment. 

## Streams of payments
The PDV formula tells us the value of one payment of $D$, $N$ periods from now, given some discount rate $r$. But what if there are many payments occurring in different periods? Then you just add up the PDV's of the individual payments. The whole point of the PDV is that it puts everything in terms of period zero, so you are adding up things measured in the same way. 

If you will get three payments of $D$, in period 1, period 2, and period 3, then the $PDV_0$ of those three payments is

$$
PDV_0 = \frac{D}{(1+r)^1} + \frac{D}{(1+r)^2} + \frac{D}{(1+r)^3}.
$$

Notice that I applied the same discount rate $r$ over time. You don't have to do this, and we could allow the discount rate to vary by period if we wanted. This generalizes

{: .highlight } 
> The PDV at time zero of a payment $D$ that occurs every period from period 1 to period N, with a fixed discount rate $r$, is
> $$
> PDV_0 = \sum_{t=1}^{N} \frac{D}{(1+r)^t} = D \sum_{t=1}^{N} \frac{1}{(1+r)^t}
> $$

It also generalizes to payments running to *infinite* periods. Don't worry too much about this being unrealistic. Infinite doesn't necessarily mean we think it will literally continue forever. You can think of this as capturing the case where payments will continue each period for an indeterminate amount of time. 

{: .highlight } 
> The PDV at time zero of a payment $D$ that occurs every period from period 1 and continues forever, with a fixed interest rate $r$, is
> $$
> PDV_0 = \sum_{t=1}^{\infty} \frac{D}{(1+r)^t} = \frac{D}{r}
> $$

Just to get picky, what about if the payments start right away? Meaning, you get a payment $D$ immediately in period 0, not just in period 1 and beyond, is

{: .highlight } 
> The PDV at time zero of a payment $D$ that occurs every period from period 0 and continues forever, with a fixed interest rate $r$, is
> $$
> PDV_0 = \sum_{t=0}^{\infty} \frac{D}{(1+r)^t} = D\frac{1+r}{r}
> $$

Sometimes it is easier to think about payments starting at either time zero or time 1, it just depends on the nature of the problem or the details of the investment you are thinking about. 

## Internal rate of return
For a lot of investment decisions (capital goods, R&D, product development, etc.) firms or entrepreneurs will think about what is called the *internal rate of return*. Say they face an up-front cost of $C_0$, which could be the cost of constructing the apartment building or developing a new drug or creating a new marketing campaign for a new product. They are thinking that this up-front cost will generate a stream of payments - rent, profits, etc. - in the future. 

{: .highlight } 
> The internal rate of return (IRR) is the discount rate $r$ that makes the $PDV_0$ of expected payments from a project equal to the up-front cost, $C_0$, of the project. 

The firm or entrepreneur is figuring out something like the yield on their up-front cost. Let's say that the new project will deliver a potentially infinite stream of payments (that is, they aren't sure when they will end) of $D$ every period. We know from above how to calculate that PDV, so if the PDV is equal to the up-front cost we have

$$
C_0 = \frac{D}{r}
$$

and so the IRR is

$$
r = \frac{D}{C_0}.
$$

This is more complicated when there are only a finite number of periods, but the same idea holds. The IRR is going to be higher if the payments are big relative to the up front cost, and vice versa.

The IRR calculation is often used to determine whether a project is "worth it" or not for a firm. How? By comparing the IRR to the actual discount rate or interest rate that the firm will face. The firm probably does not have $C_0$ in cash sitting around to fund the construction or development they want to do, so they will have to borrow it, say at some interest rate $i$. If the IRR is bigger than the interest rate $i$, then this suggests that it is worth borrowing the money and doing the project. If the IRR is smaller than the interest rate, then it is not. 

Say the firm borrows $C_0$ dollars at the rate $i$, and the loan runs to infinity as well (these kinds of loans do exist!). What's the implied payment? Well, from the *banks* perspective they'll only make a loan of size $C_0$ at a rate $i$ if the PDV of the stream of payments they get from the loan equals the amount they loan out. Or if 

$$
C_0 = \frac{Payment}{i}.
$$

If the $IRR > i$, then it must be that $D/C_0 > Payment/C_0$, or $D > Payment$. That is, the firm will be getting a payment each period from their project that is more than the payment they have to make on the loan. Hence the project is worth it. If $IRR < i$ then $D < Payment$, and the stream of rent or profits from the project won't even cover the loan payments, so it won't be worth it. 



