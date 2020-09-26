# Irrigation Recs Script 

# Author: Bryan Rutter - KSU STL ####
# Date: 9/15/2020 

# load packages ####
library(xlsx)
library(knitr)
library(tidyverse)
library(svDialogs)

# import data ####
results_file <- file.choose()

raw_results <- read.xlsx(file = results_file, # Location of file to import, manually selected above...
                         sheetIndex = 1, # Sheet Number, shouldn't need to be changed
                         startRow = 18, # starting row, shouldn't need to be changed
                         header = FALSE)

# Clean up data ####
clean_results <- raw_results %>%
  select(X1, X2, X3) %>%
  rename("LabNo" = X1, "EC" = X2, "ESP" = X3) %>%
  drop_na()

print(clean_results)

# Create a look up table for max soil EC by crop ####
Crop <- c("Bermuda", "Barley","Cotton", "Wheat", "Tall Fescue", 
          "Sorghum", "Soybean", "Corn", "Tomato", "Alfalfa", 
          "Potato", "Sweet Corn", "Onions", "Red Clover", "Beans")

EC_max <- c(12, 12, 11, 10, 7, 7, 6, 5.5, 4, 3, 3, 3, 2, 2, 1.5)

EC_Ref <- data.frame(Crop, EC_max)

# Calculate Salinity Rank, Sodicity Rank, and Leaching Requirement (LR)

Recs_df <- clean_results %>%
  mutate(., Crop = select.list(choices = EC_Ref$Crop, multiple = F, title = "Select a crop", graphics = T)) %>%
  mutate(., Sal_Rank = ifelse(EC < 4, "Low",
                              ifelse(EC < 6, "Medium",
                                     ifelse( EC < 10, "High", "Very High")))) %>%
  
  mutate(., Sod_Rank = ifelse(ESP < 10, "Low Clay Dispersion Risk",
                              ifelse(ESP < 15, "Moderate Clay Dispersion Risk",
                                     ifelse(ESP >= 15, "Clay Dispersion Likely")))) %>%
  
  mutate(., LR = round(EC/((5*4)-EC),3))

Recs_df



