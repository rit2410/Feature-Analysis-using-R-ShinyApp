---
title       : "Developing Data Product"
subtitle    : "Shiny App Presentation : Iris Dataset"
author      : "Ritika Pandey"
job         : "Student"
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

This presentation is part of the Course Project for the Coursera Developing Data Products class. The peer assessed assignment has two parts. First, we need to create a Shiny application and deploy it on Rstudio's servers. Second, we should use Slidify or Rstudio Presenter to prepare a reproducible pitch presentation about the application. This presentation adresses the second part of the course project.

The app developed for the first part of the assignment is avalilable at:
https://rit2410.shinyapps.io/appshiny/

Source code for ui.R and server.R files are available on the GitHub:

https://github.com/rit2410/Developing-Data-Products




---

## Embedded Code


```r
summary(iris)
```

```
##   Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   
##  Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100  
##  1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300  
##  Median :5.800   Median :3.000   Median :4.350   Median :1.300  
##  Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199  
##  3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800  
##  Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500  
##        Species  
##  setosa    :50  
##  versicolor:50  
##  virginica :50  
##                 
##                 
## 
```

---


```r
library(ggplot2)
```

```
## Warning: package 'ggplot2' was built under R version 3.3.3
```

```r
ggplot(iris,aes(Sepal.Width,(Sepal.Length),color=Species))+
  geom_point(position="jitter")
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2-1.png)

---

## URLs 

For the app : https://rit2410.shinyapps.io/appshiny/

For server and ui codes : https://github.com/rit2410/Developing-Data-Products

---





