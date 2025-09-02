# Script

Hi everyone, I'm Alice Hannah and I work in the Data Innovation team at the Scottish Government.

Today I'm going to talk briefly about sgplot, which is an R package I've developed to support analysts in the organisation to produce data visualisations.

An increasing number of analysts in the Scottish Government are using R to create charts, in particular using the ggplot2 package. 

The default style of a ggplot chart is quite unappealing and fairly generic. [SWITCH TO SLIDE 1] It also doesn't meet many of the accessibility success criteria that public sector web content must meet. 

There are a few things I'd want to change about this chart:

* There are a lot of grid lines, many of them quite faint.
* The text is quite small and difficult to read.
* I don't like the colours so I'd think about changing those.

The list of changes can become quite long and mean adding a lot of extra steps to your existing chart code. And more often than not, you'll want to make these improvements to more than just one chart, so this styling code is repeated multiple times. 

By repeating code, variation is introduced as it becomes difficult to make updates and ensure they're applied to all of your charts in the same way.

Beyond the friction for individual analysts, there's also large variation in charts produced across the organisation. With lots of people making their own isolated decisions about how to style charts, this results in varying quality, branding and accessibility. 

The sgplot package aims to address these problems. At it's simplest, this can be done by adding just one line of code to your R script - to use sgplot. [SWITCH TO SLIDE 2]

sgplot defines a ggplot theme and Scottish Government branded colour palettes. Adding this one line of code to your R script will apply both of these automatically to any ggplot charts you make in your R session. [SWITCH TO SLIDE 3]

So the chart now looks like this. I hope you agree that the chart is much improved. The sgplot theme changes the background colour to white and reduces the number of grid lines, making the chart less cluttered. Text is also larger and all horizontal making it easier to read. The sgplot categorical colour palette is applied and matches the organisations brand colours. 

sgplot doesn't guarantee accessibility. There will likely be further customisations you'd like to make. For example, you should label the lines on the chart directly instead of using a legend to avoid relying on colour alone.

However, using sgplot gets you most of the way there and means analysts can greatly reduce the number of decisions they need to make and the amount of code they need to write and maintain. It also means charts produced across the organisastion are of a higher quality and consistency, building trust with users of our statistics.

[SWITCH TO SLIDE 4] The package has a companion website with more information on how to install the package, documentation on the available functions, as well as some articles on accessibility, use of colour and exporting charts. Scanning the QR code on screen will take you to the site if you would like to find out more. 

[SWITCH TO SLIDE 5] The site also contains a cookbook. This page has lots of example code that you can use to create different types of charts - you can see some examples on the right hand side of the screen. The idea of this page is to help analysts who are starting from scratch to quickly create a production ready chart whilst following best practice using sgplot.

So that was a very brief summary of the sgplot package. As I say, if you're interested in finding out more, you can scan the QR code on screen, or google 'sgplot R package'. I'll be around afterwards if anybody has any questions or my contact details can be found on the website too. Thanks for listening. 
