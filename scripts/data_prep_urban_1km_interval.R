#-----------------------------------------------------------------------------------------
# Author: Yi Han
# Date: 2021-06-13
# Description: Based on the raw data of land cover, calculate and summarize 
  # urban% into 1 km river intervals.

# Notes: The distMark column corresponds to the river intervals, e.g.,  
# DistMark = 0 corresponding to the interval [0, 1).
#-------------------------------------------------------------------------------

library(tidyverse)

# use relative path, set working directory to this file's location
landcover_file_names <- list.files(path="../data/raw/derived_csv/urban/", pattern=".csv")
landcover_file_paths <- vector()

for (i in 1:length(landcover_file_names)){
  path_i <- paste0("../data/raw/derived_csv/urban/", landcover_file_names[i])
  landcover_file_paths[i] <- path_i
}

land_cover_data_list <- lapply(landcover_file_paths, read.csv)
land_cover_data <- do.call(rbind, land_cover_data_list)

#---------------------- Calculate urban% for each interval ---------------------
AREA = 152.09 # in Google Earth Engine, the sample radius was set as 7 km, which 
# should yield a circle with an area of 153.94 km^2, yet the real sample area
# given but the earth engine was a lit smaller at 152.10 (152.098957601) km^2.
POINTS_NUM = max(land_cover_data$distMark) + 1 # the total number sample points, in
# we sampled 1586 points, yet only the first 1500 were used for the studied 
# 1500 km long river section
YEARS = length(landcover_file_names) # the total years sampled, 2001-2017, 17 years

urban_data <- land_cover_data %>%
  mutate(f_year = as.factor(year)) %>%
  mutate(total_area = rep(AREA, POINTS_NUM*YEARS)) %>% # the total sampled area
  mutate(land_area = total_area - water) %>% 
  # land_area is the total area minus the water area
  mutate(urban_perc = urban/land_area) %>% 
  # urban% is defined as percentage cover of the urban area per 1 km^2 land unit 
  filter(distMark <= 1499) %>%  # only the first 1500 points were used for
  # the studied 1500 km long river section
  droplevels() %>%
  select(distMark, year, f_year, urban_perc)

head(urban_data, 5)
tail(urban_data, 5)
str(urban_data)
summary(urban_data)

# write.csv(urban_data, file = "../data/processed/urban_data_1km_interval.csv", row.names = FALSE)
