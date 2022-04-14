library(rvest)
library(dplyr)

# Get Content From Preface Page 
preface_page <- read_html("https://enriquegit.github.io/behavior-free") %>%
  html_nodes(".rmdshiny, .rmdfolder, .rmdgoodpractice, .rmdcaution, .rmdinfo, p, .hasAnchor") %>%
  html_text()
preface_page
