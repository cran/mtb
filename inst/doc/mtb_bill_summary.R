## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(mtb)

## ----example_1----------------------------------------------------------------
library(mtb)
head(exdt[[1]])

## ----example_2----------------------------------------------------------------

head(bill_cross_count(exdt[1:6], id='name', gp=c('category1'), type = 'count' ) )


## ----example_3----------------------------------------------------------------

head(bill_cross_count(exdt[1:6], id='name', gp=c('category1'), type = 'cond', condstr='store==2' ) )


## ----example_4----------------------------------------------------------------

head(bill_cross_count(exdt[1:6], id='name', gp=c('category1'), type = 'condwt', condstr='store==1' ) )


