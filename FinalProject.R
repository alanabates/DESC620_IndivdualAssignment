library(XML)
library(rvest)
library(dplyr)
library(tidyverse)

# Scrapping stock symbols from the web page.
url <- "https://investorplace.com/2011/01/10-best-stocks-for-2011/"

webpg <- read_html(url)

stock_ticker_html <- html_nodes(webpg,"strong+ a , #monetate_allinone_lightbox img")

stock_ticker <- html_text(stock_ticker_html)

head(stock_ticker)
