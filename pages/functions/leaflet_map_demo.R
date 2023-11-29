# Load the libraries
library(htmltools)
library(bslib)
library(leaflet)
library(dplyr)

# Define the sample data
# hospitals <- read.csv("https://raw.githubusercontent.com/R-CoderDotCom/samples/main/kenya_hospitals.csv")
hospitals <- data.frame(
  Name = c("Moi Teaching and Referral Hospital", "Kenyatta National Hospital", "Aga Khan University Hospital", "Nairobi Hospital", "Mater Hospital", "Kisumu County Hospital", "Mombasa Hospital", "Eldoret Hospital", "Nakuru Hospital", "Nyeri Hospital"),
  County = c("Uasin Gishu", "Nairobi", "Nairobi", "Nairobi", "Nairobi", "Kisumu", "Mombasa", "Uasin Gishu", "Nakuru", "Nyeri"),
  Level = sample(1:6, 10, replace = TRUE),
  longitude = c(0.0587, -1.3048, -1.2611, -1.2824, -1.2969, -0.1022, -4.0435, 0.5204, -0.3031, -0.4201),
  latitude = c(35.2838, 36.8063, 36.8126, 36.8167, 36.8278, 34.7617, 39.6682, 35.2699, 36.0800, 36.9476)
)

# Create a leaflet map widget with county and level filters
map_widget <- function() {
  leaflet(hospitals) %>%
    addTiles() %>%
    addCircleMarkers(
      radius = 5,
      color = "red",
      stroke = FALSE,
      fillOpacity = 0.8,
      popup = ~paste0("<b>", Name, "</b><br>",
                      "County: ", County, "<br>",
                      "Level: ", Level)
    ) %>%
    addLayersControl(
      overlayGroups = c("County", "Level"),
      options = layersControlOptions(collapsed = FALSE)
    ) 
  
}
