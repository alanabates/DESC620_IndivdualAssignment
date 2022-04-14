library(rvest)
library(dplyr)
library(readr)
library(tidyverse)

# Get Navigation Links
navigation_titles <- read_html("https://enriquegit.github.io/behavior-free") %>%
  html_nodes(".chapter a , .fa-align-justify") %>%
  html_text()
navigation_links


navigation_links <- read_html("https://enriquegit.github.io/behavior-free") %>%
  html_elements("a") %>% 
  html_attrs()
navigation_links

length(navigation_links)

# Get Content From All Pages 
reviews <- character
for (i in 1:length(navigation_links)){
  link = paste0("https://enriquegit.github.io/behavior-free/index.html", "/",navigation_links[i])
  pages = read_html(link)
}

