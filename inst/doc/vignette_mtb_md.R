## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(mtb)

## ----example_rmd_1------------------------------------------------------------
add_colored_str('Example - Warning', color=c(255,0,0), bold=TRUE, fontsize=1.5)

## ----example_rmd_2------------------------------------------------------------
add_colored_box(info='additional information')

## ----example_rmd_3------------------------------------------------------------
add_colored_box(type='green-reminder', info='Here is the reminding message.', width=0.7)

## ----example_rmd_4------------------------------------------------------------
add_colored_box(type='yellow-warning', info='Here is the warning message.', width=0.9)

## ----example_rmd_5------------------------------------------------------------
add_colored_box(type='red-stop', info='Here is the warning message.', halign='r', width=0.2)

