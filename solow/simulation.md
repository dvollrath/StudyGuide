---
title: Visualizing the Solow model
parent: Solow and Balanced Growth
has_children: true
nav_order: 6
---

# Fun with spreadsheets and figures
{: .no_toc }

1. TOC 
{:toc}

![Meme](meme_simulation.png)

All the theory and math can sometimes get in the way of understanding what is going on in the Solow model. The best way to understand it is to work with it visually. 

By "understand" I mean being able to answer questions like this:
1. **Transitional growth**. Given some initial values for $K_0$, $A_0$, and $L_0$, what is the growth rate of GDP per capita? What happens to the growth rate of GDP per capita over time? What does the time path of the level of GDP per capita look like? T
2. **Changes in conditions**. Given an economy with some set of parameters (e.g. $s_K$) what happens if one of those parameters changes? What happens to the growth rate of GDP per capita immediately? What happens to the growth rate in the long run? What happens to the level of GDP per capita immediately? What happens to the the level of GDP per capita in the long run?
3. **Comparisons across economies**. If two countries differ on some dimension (e.g. initial capital, population growth rate) how do they differ in growth rate? Will that growth rate difference persist? How do they differ in initial GDP per capita? Will that difference persist? 

## Brute force
The first way to approach this is to just calculate the result period by period. [This link](solowmodel.xlsx) will take you to an Excel spreadsheet where I've set up the Solow model this way. 

You should be able to walk through period by period and see how the equations used in the Study Guide map to the formulas used in the spreadsheet. One advantage of the spreadsheet is that you can also play with the parameters and see how this changes the path of log GDP per capita, the growth rate of GDP per capita, and the relationship of K/Y and $g_{K/Y}$. 

It's best to walk through that spreadsheet in class with assistance from me (or your instructor), but the basic idea is that you can tweak what happens in period 10 and see how that influences the path of GDP per capita, the growth rate, and the K/AL ratio over time. 

## Brute force, but in code
It's possible to do this a little less "brute" like, in a coding language like R. By the time you get things set up it isn't obvious that this is in fact *less* trouble than the spreadsheet. The advantage of the code is that it allows you to expand on and play with the model in a deeper way. 

<a href="quarto-solow.html" target="_blank">You can access that code here</a> and it will walk you through how to run and plot outcomes from the model.

## Point and click
As an alternative the following apps allow you to tweak the parameters of the model and see how various outcomes evolve over time. In essence, these are interactive versions of the spreadsheet that are easier to adjust, but remember they are doing exactly the *same* thing. 

<a href="basic-all.html" target="_blank">The first links all three major diagrams</a>. It shows how $g_K$ is related to $K/AL$, and how changes in parameters shift the steady state and influence the growth rate and level of GDP per capita. It's "theoretical" in that it doesn't show you any numbers. 

<iframe height="600" width="900" frameborder="no" src="basic-all.html"> </iframe>

<a href="basic-solow.html" target="_blank">The second only shows growth rates and levels</a>. This one shows calculations of specific numbers for parameters, steady state values, etc. Just note that the embedded version is squeezed into the frame, so you might have to scroll down in the sidebar to see all the parameters and results. 

<iframe height="600" width="900" frameborder="no" src="basic-solow.html"> </iframe>


