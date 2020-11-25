library(shiny)
library(tidyverse)
library(viridis)
library(ggtext)
library(paletteer)


data <- read_csv("data.csv", col_types="iccicii")[,-c(1)]
#data <- read_csv("COVID_Reg_Delays/data.csv", col_types="iccicii")[,-c(1)]
