# The code used here was in part generated using AI with ChatGPT 4
# Install necessary packages
library(shiny)
library(leaflet)
library(sf)
library(dplyr)

# Ensure the "date" column exists and process it
if ("date" %in% colnames(CorpusTwo_Geo_Dat)) {
  # Replace underscores with hyphens
  CorpusTwo_Geo_Dat$date <- gsub("_", "-", CorpusTwo_Geo_Dat$date)
  
  # Extract only the year and set to YYYY-01-01 format
  CorpusTwo_Geo_Dat$date <- as.Date(paste0(substr(CorpusTwo_Geo_Dat$date, 1, 4), "-01-01"))
} else {
  stop("The dataset does not contain a 'date' column.")
}

# Save the corrected dataset
output_path <- "C:/Users/chloe/OneDrive/Desktop/OneDrive - UCB-O365/Masters Thesis 2024/GitHub Repo/QGIS and Geo-Location Data/Virginia Combined GeoLoc Data/Shiny App Virginia/CorpusTwo_Geo_Dat_Corrected.csv"  # Replace with your desired output path
write.csv(CorpusTwo_Geo_Dat, output_path, row.names = FALSE)

cat("Corrected file saved to:", output_path)
