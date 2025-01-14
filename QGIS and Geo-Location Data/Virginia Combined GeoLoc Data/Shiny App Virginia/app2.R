# The code used here was in part generated using AI with ChatGPT 4
# Install necessary packages
library(shiny)
library(leaflet)
library(sf)
library(dplyr)


#Generating Map for Virginia/Corpus 2

# Load your data
#file.choose()
corpus_data <- read.csv("CorpusTwo_Geo_Dat_Corrected.csv")
embark_data <- read.csv("V_Combined_Embark_GeoLoc.csv")
land <- st_read("ne_110m_land.geojson")

#Clean/filter data
corpus_data <- corpus_data %>% select(reference_location_name, date, latitude, longitude)
embark_data <- embark_data %>% select(Voyage.itinerary.imputed.principal.place.of.slave.purchase..mjbyptimp., Date, latitude, longitude)

# Validate and clean embark_data dates
corpus_data$date <- as.Date(corpus_data$date, format = "%Y-%m-%d")  # Convert to Date
embark_data$Date <- as.Date(embark_data$Date, format = "%Y-%m-%d")

# Remove rows with invalid dates
corpus_data <- corpus_data %>% filter(!is.na(date))
embark_data <- embark_data %>% filter(!is.na(Date))

# Ensure longitude and latitude are numeric
corpus_data$longitude <- as.numeric(corpus_data$longitude)
corpus_data$latitude <- as.numeric(corpus_data$latitude)
embark_data$longitude <- as.numeric(embark_data$longitude)
embark_data$latitude <- as.numeric(embark_data$latitude)

# Remove rows with missing longitude or latitude values
corpus_data <- corpus_data %>% filter(!is.na(longitude) & !is.na(latitude))
embark_data <- embark_data %>% filter(!is.na(longitude) & !is.na(latitude))

# Rename columns for clarity
embark_data <- embark_data %>%
  rename(EmbarkationPort = Voyage.itinerary.imputed.principal.place.of.slave.purchase..mjbyptimp.)

# Calculate min and max years for the slider
min_year <- min(as.numeric(format(corpus_data$date, "%Y")), as.numeric(format(embark_data$Date, "%Y")), na.rm = TRUE)
max_year <- max(as.numeric(format(corpus_data$date, "%Y")), as.numeric(format(embark_data$Date, "%Y")), na.rm = TRUE)

# Debugging: Check unique years in datasets
print("Unique years in corpus_data:")
print(unique(format(corpus_data$date, "%Y")))
print("Unique years in embark_data:")
print(unique(format(embark_data$Date, "%Y")))

# Define the Shiny UI
ui <- fluidPage(
  titlePanel("Mapping News of Resistance Alongside the Slave Trade to Colonial Virginia (1736–1775)"),
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        "year_slider",
        "Select Year:",
        min = min_year,
        max = max_year,
        value = min_year,
        step = 1,
        animate = animationOptions(interval = 1000, loop = TRUE),
        sep = ""
      )
    ),
    mainPanel(
      leafletOutput("map", width = "100%", height = "600px"),
      tags$hr(),
      HTML("<p style='margin-top: 10px; font-size: 14px;'>
            The blue dots on this map represent the principal place of purchase of enslaved people on voyages that eventually disembarked in Virginia (1736–1775). 
            The red dots represent locations referenced in reports published in the <i>Virginia Gazette</i> about enslaved resistance (insurrections, conspiracies, plots, uprisings, or revolts).</p>")
    )
  )
)

# Define the Shiny server logic
server <- function(input, output, session) {
  # Render the base map
  output$map <- renderLeaflet({
    leaflet() %>%
      addProviderTiles("Esri.WorldPhysical") %>%
      addPolygons(data = land, color = "gray", weight = 1, opacity = 0.5) %>%
      addLegend(
        position = "bottomright",
        colors = c("red", "blue"),
        labels = c("Referenced Resistance Location", "Principal Place of Purchase for Enslaved Captives"),
        title = "Legend",
        opacity = 1
      )
  })
  
  # Dynamically update map markers based on selected year
  observe({
    year <- as.numeric(input$year_slider)
    
    # Filter data for the selected year
    corpus_filtered <- corpus_data %>% filter(as.numeric(format(date, "%Y")) == year)
    embark_filtered <- embark_data %>% filter(as.numeric(format(Date, "%Y")) == year)
    
    # Debugging: Print filtered data
    print(paste("Year selected:", year))
    print("Filtered Corpus Data:")
    print(corpus_filtered)
    print("Filtered Embark Data:")
    print(embark_filtered)
    
    # Update the map
    leafletProxy("map") %>%
      clearMarkers() %>%  # Clear previous markers
      addCircleMarkers(
        data = corpus_filtered,
        lng = ~longitude,
        lat = ~latitude,
        radius = 6,
        color = "red",
        label = ~paste0("Location: ", reference_location_name, "<br>Year: ", as.character(date))
      ) %>%
      addCircleMarkers(
        data = embark_filtered,
        lng = ~longitude,
        lat = ~latitude,
        radius = 6,
        color = "blue",
        label = ~paste0("Embarkation Port: ", EmbarkationPort, "<br>Year: ", as.character(Date))
      )
  })
}

# Run the Shiny app
shinyApp(ui, server)