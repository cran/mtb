## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, echo=FALSE, message=FALSE-----------------------------------------
knitr::opts_chunk$set(tidy=FALSE, comment='#>',fig.align='center', fig.width = 7)

## -----------------------------------------------------------------------------
library(mtb)
library(ggplot2)
pdt=data.frame(x=rep(c(0.5, 1, 10,11.5,17, 100, 300), each=5), gp=factor(rep(seq(1,5),7)))
pdt$y=log10(pdt$x)+rnorm(length(pdt$x))
p=ggplot(pdt, aes(x=x, y=y, group=gp, color=gp))+geom_point()+geom_line()+
  ggtitle("Plant Growth Chart")
p

## -----------------------------------------------------------------------------
t=trans_composition(pdt$x, nb=30, brk=50, dab=1.5, dgrd=1, dgrd2=0.5) 
p2=ggplot(pdt, aes(x=x, y=y, group=gp, color=gp))+geom_point()+
  geom_line(pdt[pdt$x<=t$brk,], mapping=aes(x=x, y=y, group=gp, color=gp))+
  geom_line(pdt[pdt$x>=max(pdt$x<=t$brk),], mapping=aes(x=x, y=y, group=gp, color=gp), lty=2)+
  ggtitle("Plant Growth Chart")
p2+ scale_x_continuous(trans=t)+ geom_vline(xintercept=t$brk, lwd=6, alpha=0.7, color='lightgray')+ geom_text( x=-Inf, y=Inf, hjust=0, vjust=1, label='Caution: X-axis scale is not linear above 17', color='darkred')

## -----------------------------------------------------------------------------
t=trans_composition(pdt$x, nb=30, brk=0, dab=2, dgrd=1, dgrd2=1) 
p3=ggplot(pdt, aes(x=x, y=y, group=gp, color=gp))+geom_point()+
  geom_line(lty=2)+ ggtitle("Plant Growth Chart")
p3+ scale_x_continuous(trans=t)+geom_text( x=-Inf, y=Inf, hjust=0, vjust=1, label='Caution: X-axis scale is not linear', color='darkred')


## -----------------------------------------------------------------------------
t=trans_loglinear(pdt$x, mindist=0.03) 
p4=ggplot(pdt, aes(x=x, y=y, group=gp, color=gp))+geom_point()+
  geom_line(lty=3)+ ggtitle("Plant Growth Chart")
p4+ scale_x_continuous(trans=t)+geom_text( x=-Inf, y=Inf, hjust=0, vjust=1, label='Caution: X-axis scale is not linear', color='red')

