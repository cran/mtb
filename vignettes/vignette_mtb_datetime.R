## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(mtb)

## -----------------------------------------------------------------------------
dt = data.frame( id=paste('ID', c(seq(1,5),seq(1,5)),sep=""), idn=c(seq(1,5),seq(1,5)), start=1800*seq(1,10)/3, end=1800*(seq(1,10)/3+seq(2,-2)), label=rep(c('A','B'),5) )
dt

## ----example_color_1, fig.width=7---------------------------------------------
p=time_plot_interval( dt, xlab='Time', ylab='ID', legend_title='Group', arrow_wt=2, arrow_color='gray')
p 

