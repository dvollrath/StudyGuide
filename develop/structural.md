---
title: Structural change
parent: Development accounting
grand_parent: Comparative Development
nav_order: 1
---

# Structural change and development
{: .no_toc }

1. TOC 
{:toc}

## The changing nature of GDP
The development accounting is kind of crude, just telling us that productivity differences are important in why some countries are rich and others are poor. If we look at their economies from a slightly different perspective, we can see that they differ in some ways that might be able to explain these productivity differences.

That perspective is through the industries that make up GDP. GDP, recall, is the total value of all goods and services produced in a given year in a country. We can chunk up those goods and services into broad categories and look at how much of GDP was coming from each. 
Here, we'll look at three broad categories:
- Extraction: This is agriculture and mining. The products produced are things like raw food items (milk, wheat, chicken), farmed materials like cotton, and natural resources like oil, coal, or timber. 
- Manufacturing: This includes *manufacturing* in the sense of factories producing cars, computers, or processed foods, as well as public utilities (electricity and water supplies) and construction (building homes or commercial offices).
- Services: Kind of everything else. Wholesale and retail trade (Amazon warehouses, the Gap, restaurants), financial and insurance services (banking, etc.), government (teachers, cops, firemen, soldiers), and other.

For a bunch of countries over time we can plot the share of GDP (also called value added) that is attributed to, for example, Extraction. How much of GDP depended on planting or digging up things? That's plotted below against the log of GDP per capita. You can see a clear downward pattern. As countries get rich they do less extraction as a *share* of GDP. That doesn't mean they extract less, it just means that as a fraction of GDP it goes down. 

<iframe width="900" height="600" frameborder="0" scrolling="yes" src="../plotly/10SD-va-extract.html"></iframe>

Things are different for Manufacturing. Here, you can see that in very poor countries manufacturing actually gets bigger as a share of GDP as they get richer, but that at a certain point (log GDP per capita of about 9.5) the manufacturing share starts to fall. Again, this doesn't mean very rich countries produce fewer manufacturing goods, they produce *more*. Those goods just make up a smaller *share* of GDP as they get very rich. Note that there is no such thing as a very rich country that is heavily into manufacturing - even Japan and Germany has relatively small shares. 

<iframe width="900" height="600" frameborder="0" scrolling="yes" src="../plotly/10SD-va-manuf.html"></iframe>

Finally, Services almost invariably become more relevant to GDP as countries get rich. Note that even among poor countries Services account for between 20-40% of GDP. They are always important. But among rich countries they account for around 80% of all economic activity. In that sense rich countries are service economies, even though they still produce a lot of agriculture, mining, and manufacturing. 

<iframe width="900" height="600" frameborder="0" scrolling="yes" src="../plotly/10SD-va-services.html"></iframe>

{: .fact}
> There are consistent patterns among countries in the composition of GDP. Extraction (agriculture, mining) *falls* as a share of GDP as countries get rich. Services (retain, finance, government, etc.) *rise* as a share of GDP as countries get rich. Manufacturing (including construction and utilities) tends to peak when countries are middle income (at around 40% of GDP) and then *falls* as a share of GDP as countries become very rich.

## Does this impact productivity?
One possibility the above data implies is that poor countries are poor because they are heavily into extraction of natural resources. That is, maybe their productivity is low because they are doing farming and mining, and not doing things like finance and making semiconductors. There is likely something to this.

Take a look at some data on the level of output per worker in each of the three main sectors: Extraction, Manufacturing, and Services. The figure here shows this data for three countries: India, Mexico, and France. The x-axis is log GDP per capita, showing you how rich overall a country is. The y-axis is log output per worker in the sector. The colors correspond to the sectors, and you can hover over points to see who is who. Roughly, though, India is the data with the lowest GDP per capita, Mexico is in the middle, and France has the higher values. 

<iframe width="900" height="600" frameborder="0" scrolling="yes" src="../plotly/10SD-output-pw.html"></iframe>

What do we see? Not surprising, but output per worker in both services and manufacturing rises with GDP per capita. Rich countries are rich for a reason, and that's because their workers can produce more. We know that's because of more capital or better ideas. There are some jumps in the series between countries, yes, but in general output per worker in those two sectors rises with GDP per capita.

The relationship of output per worker in extraction to GDP per capita is more muddled. At least with India, it looks like it goes *down* as they get richer. That probably reflects some reporting issues (agriculture in low-income countries is not tied into markets well and so we probably miss some production) but there are some real effects here of population growth running faster than agricultural productivity can keep up. For Mexico and France output per worker in extraction rises with GDP per capita. 

What's most relevant for the overall story here is comparing the levels of output per worker across sectors. Almost universally, services have the highest output per worker of any sector, no matter how rich the country. Manufacturing is lower, and Extraction is the lowest. This is sometimes surprising, because you think of Manufacturing as the quintessential rich activity, but it's actually kind of low value. Why? Lots of cool things to talk about here, but mainly because manufacturing produces a lot of low value things. *Some* manufacturing produces BMWs and iMacs, but *most* manufacturing produces t-shirts and bags of Cheetos. Services are high output per worker in part because it uses high-skilled labor intensely (lawyers, doctors, etc.). 

Combine this information with what we saw in the first section. Poor countries are poor for two reasons. First, the level of output per worker is low in *all* sectors. Second, most of their labor force and resources work in the sector with the lowest output per worker, Extraction. Rich countries get rich both because their output per worker goes up in *all* sectors, but they also get rich because they put more workers and resources into the *highest* output per worker sector, services. Structural change matters because it is shifting people into higher output per worker activities. 

Why do poor countries do this? Why not have everyone work in manufacturing or services? Lots of reasons. One has to do with the nature of demand. People have to eat, and will spend their money on food first, then worry about buying other things. So when poor countries have low output per worker in Extraction - most of which is agriculture - they need lots of people to work there just to meet basic needs. As agriculture gets more productive that allows them to shift to other sectors. 

There's a whole literature on what drives these structural changes, and whether you need to "start" development in agriculture by raising productivity there to "release" labor into other sectors, or whether you "start" development by raising productivity in manufacturing or services to "pull" people into those sectors. I don't know that we have a definitive answer, there are case studies you can make of both occurring. 