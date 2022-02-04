## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(mtb)

## -----------------------------------------------------------------------------
dt = data.frame( id=paste('ID', c(seq(1,5), seq(1,5)),sep=""), idn=c(seq(1,5),seq(1,5)), start=1800*seq(1,10)/3, end=1800*(seq(1,10)/3+seq(2,-2)), label=rep(c('A','B'),5) )
dt

## ----example_color_1, fig.width=7---------------------------------------------
p=time_plot_interval( dt, xlab='Time', ylab='ID', legend_title='Group', arrow_wt=2, arrow_color='gray')
p

## -----------------------------------------------------------------------------
dt = data.frame( id=c(rep('Sous Chef',3), rep('Both',3), rep('Chef',4)), idn=c(rep(1,3),rep(-1,3), rep(2,4)), start=1800*c(0,1,2, 0.5, 1.2, 3, 1,2,3,4), end=1800*c(3.5,NA,3, 2, 6, NA, 2,3.5,3, 3.5),
label=c('Turkey', 'Watch Temp', 'Gravy', 'Stuffing', 'Whipped Cream', 'Cookie', 'Cranberry', 'Potato', 'Green Bean', 'Pumpkin Pie'), labelend=c('', '', '~~?', '->>', 'not shown', '', '', '', '||', '->X'), color=c('Oven', 'Other', 'Stove','Oven','Other','Oven','Stove','Oven','Oven','Oven' ), type=c('b', 'p', 'i','i','p','p','p','b','i','i' ) )
dt[1:5,]

## -----------------------------------------------------------------------------
time_plot_event( dt ) 

## -----------------------------------------------------------------------------
time_plot_event( dt, compact=TRUE )

