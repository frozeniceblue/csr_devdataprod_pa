---
title       : Web A/B Testing Simple Sample Size Calculator
subtitle    : Coursera Developing Data Products Peer Assignment
author      : hajozaki
job         : Coursera Student
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Overview
* Objective
    * Provide GUI of power.prop.test as simple sample size calculator for non-tech digital marketer who has responsible Web A/B Testing exmeriments
* Business Notice
    * Digital Marketer use MDE(delta) either absolute or relative depend on  company or situation
    * They can choose which MDE type for calculation
* Technical Notice
    * It use core feature of Shiny: `reactivity` for choosing MDE type 

*GO to [My Shiny App for PA](https://hajozaki.shinyapps.io/csr_ddp_pa)*


--- .class #id 

## Problem - If you should support Digital Maketer
* They often do not know the statistics
* They often can not use any statistics software
* They often hate CUI/CLI typing

*IF They have strong skill for debate and politics... :,(*


--- .class #id 

## Solution - Shiniy App GUI
* foo


--- .class #id 

## Sample Size calculation in R
* foo

```r
base_cvr <- .06; var_cvr <- base_cvr + .01 ;sig_level <- .05; pwr_level <- .8
ceiling(power.prop.test(
    p1 = base_cvr, p2 = var_cvr, sig.level = sig_level, power = pwr_level)$n)
```

```
## [1] 9540
```

