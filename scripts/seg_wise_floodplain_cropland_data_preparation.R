#-------------------------------------------------------------------------------
# Author: Yi Han
# Date: 2021-06-29
# Description: Prepare a data set of habitat conditions from 2006 to 2017, 
# which includes the segment-wise floodplain area and cropland%. 
# The dataset is outputted as a csv file.
#-------------------------------------------------------------------------------
library(tidyverse)

BIN_WIDTH = 10 # each segment is 10 km in length

floodplain_ndvi_data <- read.csv("../data/processed/floodplain_ndvi_data_1km_interval.csv")

head(floodplain_ndvi_data, 5)
str(floodplain_ndvi_data)
summary(floodplain_ndvi_data)

# 1 Create a dataframe that each 1 km river interval of each year as an observation.
# There are intervals with no land detected, thus those intervals were missing,
  # add the missing intervals with entries of 0s.
floodplain_ndvi_interval <- floodplain_ndvi_data %>%
    mutate(f_year=as.factor(year)) %>%
    filter(distMark <= 1499) %>%  # only need the data of the 1500 km study region
    mutate(., groups=cut(x=distMark, breaks=seq(from=0, to=1500, by = 1), # binwidth is 1 for 1 km interval
                          dig.lab=5, right = FALSE)) %>% 
    group_by(f_year, year, groups, .drop=FALSE) %>%
    summarise(interv_floodplain_area = sum(floodplain_area), 
              interv_ndvi_0_1_area = sum(ndvi_0_1_area), 
              interv_ndvi_1_2_area = sum(ndvi_1_2_area), 
              interv_ndvi_2_3_area = sum(ndvi_2_3_area),
              interv_ndvi_3_4_area = sum(ndvi_3_4_area), 
              interv_ndvi_4_5_area = sum(ndvi_4_5_area), 
              interv_ndvi_5_6_area = sum(ndvi_5_6_area), 
              interv_ndvi_6_7_area = sum(ndvi_6_7_area)) %>%
    mutate(distMark = c(0: 1499)) %>%
    ungroup() 
# head(floodplain_ndvi_interval, 5)
# str(floodplain_ndvi_interval)
# summary(floodplain_ndvi_interval)

# 2 Calculate and summarize segment-wise floodplain area and cropland%.
# (1) We excluded the data points of the 2016-2017 (ie., year==2016) flood cycle 
#     because a heavy flood in July 2016 rendered an abnormal increase of the 
#     floodplain area.
# (2) We exclude data points within the river section [0k m, 248 km), i.e., the
# first 25 10 km-long-segments, because that the satellite failure together with 
#   the cloudy whether prevent us obtaining data from these regions in the 
#   year 2011 and 2012.
seg_floodplain_ndvi <- floodplain_ndvi_interval %>%
    mutate(., groups=cut(x=distMark, breaks=seq(from=0, to=1500, by=BIN_WIDTH),
                         dig.lab=5, right = FALSE)) %>% 
    dplyr:: group_by(f_year, year, groups, .drop=FALSE)%>%
    dplyr:: summarise(seg_floodplain_area = sum(interv_floodplain_area)/10, 
                      seg_ndvi_5_7 = (sum(interv_ndvi_5_6_area) + 
                                     sum(interv_ndvi_6_7_area))/10) %>%
        # calculate segment-wise floodplain area and cropland area per km (ie, 5<=ndvi<=7).
    dplyr:: ungroup() %>%
    dplyr:: mutate(f_group = as.numeric(groups)) %>% 
    filter(!(year %in% c(2011, 2012) & f_group %in% c(1:25))) %>% 
        # exclude data points within the river section [0k m, 248 km)
    dplyr:: mutate(seg_cropland_perc = seg_ndvi_5_7/seg_floodplain_area) %>%
        # calculate segment-wise cropland%
    filter(year != 2016) %>% # exclude data points of the 2016-2017 flood cycle 
    droplevels()

# 3 Finer tune above segment-wise floodplain and cropland% data.
# (1) check if the calculation of cropland% introduce any NAs
apply(seg_floodplain_ndvi, 2, function(x) any(is.na(x)))

# (2) Check if the NAs in the 'seg_cropland_perc' column are due to that there were
    # no floodplain at all in the corresponding segment, i.e. denominator = 0 lead to 
    # the NAs.
floodplain_area_NA_rows <- seg_floodplain_ndvi %>% filter(is.na(seg_cropland_perc)) %>% pull(seg_floodplain_area)
any(floodplain_area_NA_rows!=0)

# All the NAs are resulted from 0 floodplain area of the segment, thus I excluded
    # these points in the following analysis
seg_floodplain_ndvi <- seg_floodplain_ndvi %>%
    filter(!is.na(seg_cropland_perc))

# (3) check and plot the data, see if there's any value out of normal range
summary(seg_floodplain_ndvi$seg_floodplain_area)
plot(seg_floodplain_ndvi$seg_floodplain_area) 
boxplot(seg_floodplain_ndvi$seg_floodplain_area) 

summary(seg_floodplain_ndvi$seg_ndvi_5_7)  
plot(seg_floodplain_ndvi$seg_ndvi_5_7)  
boxplot(seg_floodplain_ndvi$seg_ndvi_5_7)

summary(seg_floodplain_ndvi$seg_cropland_perc)  
plot(seg_floodplain_ndvi$seg_cropland_perc)  
boxplot(seg_floodplain_ndvi$seg_cropland_perc)

# (4) check the data
head(seg_floodplain_ndvi, 5)
tail(seg_floodplain_ndvi, 5)
str(seg_floodplain_ndvi)

# (5) Save the dataframe as a csv file.
# write.csv(seg_floodplain_ndvi, file = "../data/processed/seg_wise_floodplain_ndvi.csv", row.names = FALSE)

