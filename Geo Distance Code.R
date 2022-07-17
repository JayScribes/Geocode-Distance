library(geosphere)
library(dplyr)
library(ggplot2)


NYC_Bike =
  NYC_Bike %>% 
  rowwise() %>% 
  mutate(Distance = distHaversine(c(ss_long, ss_lat), c(es_long, es_lat)))



NYC_Bike %>% 
  ggplot(aes(x=Distance))+
  geom_histogram()
