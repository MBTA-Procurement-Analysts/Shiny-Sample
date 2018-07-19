# File: ui.r
# Created by: Mickey Guo
# UI Function of the Sample Shiny App


# How To Init, and Run ----------------------------------------------------

# Set Working Directory
setwd("C:/Users/nguo/Documents/github/Shiny-Sample")
library(shiny)
# THEN, TYPE `runApp()` IN YOUR CONSOLE.

# These 3 commands are all you need to generate a shiny page. The dependencies below
#   will be loaded automatically. 

# Setup, Library Imports --------------------------------------------------

library(tidyverse)
library(plotly)
library(kableExtra)
library(DT)
library(crosstalk)
library(magrittr)

library(nycflights13)

# Clear workspace
rm(list = ls())

# Plotly APIs, no use right now but just in case
Sys.setenv("plotly_username" = "Zenmai0822")
Sys.setenv("plotly_api_key" = "1qC2QkZBYFrJzOG9RW9i")

# Grab Contents and UI Layout for pages -----------------------------------
source("page1.r")

# UI Function, make sure this stays at the bottom -------------------------

navbarPage(title = "Shiny App Sample", 
           uiPage1,
           tabPanel("Page2"))
