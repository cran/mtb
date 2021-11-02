## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, echo=FALSE, message=FALSE-----------------------------------------
knitr::opts_chunk$set(tidy=FALSE, comment='#>',fig.align='center', fig.width = 5)
library(mtb)

## -----------------------------------------------------------------------------
library(mtb)
library(ggplot2)
pdt=data.frame(x=rep(c(0.5, 1, 10,11.5,12, 100, 300), each=5), gp=rep(seq(1,5),7))
pdt$y=log10(pdt$x)+rnorm(length(pdt$x))
p=ggplot(pdt, aes(x=x, y=y, group=gp, color=gp))+geom_point()+geom_line()+
  theme(
    panel.grid.major.x=element_line(colour='gray', linetype='dashed'),
    panel.grid.minor.x=element_line(colour='lightgray',linetype='solid')
  )
p

## -----------------------------------------------------------------------------
t=mtb::trans_composition(pdt$x, nb=30, brk=50, dab=1, dgrd=1, dgrd2=0.25) 
p+ scale_x_continuous(trans=t)


