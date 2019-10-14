library(jsonlite)
library(rvest)
library(tidyverse)

link <- read_html("https://www.predictit.org/markets/detail/3091/Who-will-be-the-next-Speaker-of-the-British-House-of-Commons")
link %>%
  html_nodes("script")
link %>% 
  html_nodes(".market-contract-horizontal-v2__title-text")

spearker <- read_json("https://www.predictit.org/api/Public/GetMarketChartData/3091?timespan=7d&maxContracts=6&showHidden=true")
map(spearker,str)


###Exercise
wawa <- read_html("https://www.wawa.com/about/locations/store-locator")
wawa %>%
  html_nodes(".price") %>%
  html_attr("price")
wawa <- read_json('https://www.wawa.com/Handlers/LocationByLatLong.ashx?limit=50&lat=40.5977756&long=-75.53931549999999')
str(wawa)
