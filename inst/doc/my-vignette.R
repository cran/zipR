## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----echo=FALSE----------------------------------------------------------
library(devtools)

devtools::install_github("leslie-huang/zipR")

library(zipR)

## ----echo=TRUE-----------------------------------------------------------
a <- c(1,2,3)
b <- c(4,5,6)
c <- c(1,2,3,4,5,6)
d <- c(7,8)
z <- c(9)
filler <- c(NA)

## ------------------------------------------------------------------------
zipR::zipr(a,b)


## ------------------------------------------------------------------------
zipr(a, z, broadcast = TRUE)

zipr(a, c, broadcast = TRUE)

## ------------------------------------------------------------------------
zipr(z, a, fill = TRUE)


## ------------------------------------------------------------------------
zipr(c,a, fill = TRUE, fillvalue = z)

zipr(c,z, fill = TRUE, fillvalue = d)


