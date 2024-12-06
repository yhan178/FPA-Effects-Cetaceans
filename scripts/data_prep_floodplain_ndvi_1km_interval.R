#-----------------------------------------------------------------------------------------
# Author: Yi Han
# Date: 2021-06-13
# Description: Summarize the raw data of the floodplain area and the areas of 
# the seven ndvi categories into 1 km river intervals.

# Notes: 1. the DistMark column corresponds to the river intervals, e.g.,  
    # DistMark = 0 corresponding to the interval [0, 1).
#        2. the GRIDCODE of the original ndvi data files indicates the ndvi categories.
    # There are seven categories. GRIDCODE = 1: ndvi[0: 1); GRIDCODE = 2: ndvi[1:2); 
    # GRIDCODE = 3: ndvi[2:3); GRIDCODE = 4: ndvi[3:4); GRIDCODE = 5: ndvi[4:5); 
    # GRIDCODE = 6: ndvi[5:6); GRIDCODE = 7: ndvi[6:7)
#-----------------------------------------------------------------------------------------
library(tidyverse)

# use relative path, set working directory to this file's location
files_floodplain_names <- list.files(path="../data/raw/derived_csv/floodplain", pattern=".csv") 
files_ndvi_names <- list.files(path="../data/raw/derived_csv/ndvi", pattern=".csv")

floodplain_ndvi_data_list <- list()

for (i in 1: length(files_floodplain_names)){
    # i = 6
    year = i + 1999
    print(paste("for lit zone data: ", files_floodplain_names[i]))
    print(paste("for ndvi bca data: ", files_ndvi_names[i]))
    
    path_floodplain_file <- paste0("../data/raw/derived_csv/floodplain/", files_floodplain_names[i])
    path_ndvi_file <- paste0("../data/raw/derived_csv/ndvi/", files_ndvi_names[i])
    
    # First, summarize the floodplain data and the ndvi data into 1 km river 
    # intervals.
    floodplain_data <- read.csv(path_floodplain_file)
    floodplain_df <- floodplain_data %>% 
        dplyr:: select(areaSqKm, year, DistMark) %>%
        dplyr:: mutate(., f_year = as.factor(year)) %>%
        dplyr:: mutate(., f_distMark = as.factor(DistMark)) %>%
        dplyr:: group_by(f_year, f_distMark, .drop=FALSE) %>%
        dplyr:: summarise(area = sum(areaSqKm)) %>%
        dplyr:: ungroup()

    ndvi_data <- read.csv(path_ndvi_file)
    ndvi_df <- ndvi_data %>% 
        dplyr:: select(GRIDCODE, POLY_AREA, year, DistMark) %>%
        dplyr:: mutate(f_year = as.factor(year),
                       f_distMark = as.factor(DistMark),
                       ndvi_groups = as.factor(GRIDCODE)) %>%
        dplyr:: rename(., areaSqKm = POLY_AREA) %>%
        dplyr:: group_by(f_year, f_distMark, ndvi_groups, .drop=FALSE) %>%
        dplyr:: summarise(sum_area = sum(areaSqKm)) %>%
        dplyr:: ungroup() %>%
        tidyr:: spread(., ndvi_groups, sum_area)

    # Second, use two conditional expressions to double check if the floodplain area and
    # the total ndvi data match. Combine the floodplain area data and the ndvi data
    # only if the two match.
    
    if(identical(ndvi_df$f_distMark, floodplain_df$f_distMark)) { 
        # Since that the segments with non-negative ndvi values must indicated land,
        # thus, the list of entries of the distMark column of the ndvi_df (which 
        # indicated the 1 km interval) should be identical the list of entries of the 
        # distMark column of the floodplain_df.
        # Thus, the first conditional expression aims to test if the two lists 
        # of the distMark entries are identical, if not, warnings will be triggered.
        
        join_df <- left_join(floodplain_df, ndvi_df, by = c("f_year", "f_distMark"))
        print(paste("Successfully join the floodplain area data and ndvi data for year: ", year))
        colnames(join_df) <- c("year", "distMark", "floodplain_area", 
                               "ndvi_0_1_area", "ndvi_1_2_area", "ndvi_2_3_area", 
                               "ndvi_3_4_area", "ndvi_4_5_area", "ndvi_5_6_area",
                               "ndvi_6_7_area")
        
        floodplain_area <- join_df %>% pull(floodplain_area)
        ndvi_sum_area <- join_df %>% mutate(
            ndvi_sum_area = rowSums(select(., contains("ndvi_")))
            ) %>%
            pull(ndvi_sum_area)
        
            if(isTRUE(all.equal(floodplain_area, ndvi_sum_area, tolerance = 1e-02))) {
                # For each of the 1-km intervals, the sum of the areas of each 
                # ndvi groups should equal to the floodplain area, if not,
                # the second conditional expression will trigger warnings
                # given the potential problem of the data accuracy, we set a 
                # the tolerance level at 1e-02.
                
                floodplain_ndvi_data_list[[i]] <- join_df
                print(paste("Successfully write the joined dataframe into the seg_wise_floodplain_list for year: ", 
                            year, " numbered as ", i))
                
            } else {
                print(paste("The section area of lit zone data and ndvi data are not identical for year: ", year))
                break
            }
        
    } else {
        print(paste("The f.DistMark of lit zone data and ndvi data are not identical for year: ", year))
        break
    }
}

floodplain_ndvi_data <- bind_rows(floodplain_ndvi_data_list, .id = "column_label")

head(floodplain_ndvi_data)
tail(floodplain_ndvi_data)
str(floodplain_ndvi_data)
# write.csv(floodplain_ndvi_data, 
#           file = "../data/processed/floodplain_ndvi_data_1km_interval.csv", 
#           row.names = FALSE)
