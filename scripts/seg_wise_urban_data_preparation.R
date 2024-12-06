#-------------------------------------------------------------------------------
# Author: Yi Han
# Date: 2021-06-27
# Description: Prepare a data set of habitat conditions from 2006 to 2017, 
# which includes the segment-wise urban%. The dataset is outputed as a csv file.
#-------------------------------------------------------------------------------
library(tidyverse)

BIN_WIDTH =10
urban_data <- read.csv("../data/processed/urban_data_1km_interval.csv")

urban_df <- urban_data %>%
    mutate(., groups=cut(x = distMark, breaks=seq(from=0, to=1500, by = BIN_WIDTH),
                         dig.lab=5, right = FALSE)) %>% 
    dplyr:: group_by(f_year, groups, year) %>%
    dplyr:: summarise(seg_urban_perc = sum(urban_perc)/BIN_WIDTH) %>%
    ungroup()

head(urban_df, 5)
tail(urban_df, 5)
str(urban_df)
summary(urban_df)

# write.csv(urban_df, file="../data/processed/seg_wise_urban.csv", row.names = FALSE)

