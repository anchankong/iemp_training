getwd()

library(readxl)
library(leaflet)

coord <-read_xlsx("Coordinates.xlsx",
                  sheet = "Sheet1")

leaflet(data=coord) %>%
  addTiles() %>%
  addMarkers(lng = ~longitude,
             lat = ~latitude,
             popup = ~station)
  
leaflet() %>%
  addTiles() %>%
  addMarkers(data=coord, 
             lng = ~longitude,
              lat = ~latitude,
             popup = ~station)
  