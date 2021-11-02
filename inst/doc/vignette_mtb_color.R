## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(mtb)

## ----example_color_1----------------------------------------------------------
library(mtb)
colvect = color_set_palette(c('a','b','d','c','e','f','g'), c(1,2,4,3,5,6,7),black='a',gray9='b',cols=c('blue', 'cyan','orange'))

## ----example_color_2, fig.height=3, fig.width=7-------------------------------
color_test_palette(colvect, type='bar')

## ----example_color_6, fig.width=7, fig.height=5-------------------------------
color_test_palette(colvect, type='line')

## ----example_color_3----------------------------------------------------------
group=paste('g', sample(1:12,120, replace=T), sep="")
colvect = color_set_palette(group, NULL, black='g1',gray9='g2',cols=rainbow(5))

## ----example_color_4, fig.height=3, fig.width=7-------------------------------
color_test_palette(colvect, type='bar')

## ----example_color_5, fig.width=7, fig.height=5-------------------------------
color_test_palette(colvect, type='line')

