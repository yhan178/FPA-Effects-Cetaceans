# Processed Data: CSV Files for Downstream Analyses

This folder contains four processed CSV files generated from the raw data. These files serve as inputs for downstream analyses. Refer to the `scripts/` folder for the R scripts used to produce these files.

## Files Overview

1. **`floodplain_ndvi_data_1km_interval.csv`**
   - **Description**: Contains information on floodplain area and NDVI categories for each 1-km river interval across 17 survey years.
   - **Columns**:
   	 - `column_label`: Numeric, corresponding to the 17 years.
     - `year`: The survey year.
     - `distMark`: Numeric, corresponding to 1-km intervals (e.g., `distMark = 1` corresponds to [0, 1)).
     - `floodplain_area`: The area of the floodplain for the corresponding interval.
     - `ndvi_0_1_area`: Floodplain area with NDVI in [0, 0.1).
     - `ndvi_1_2_area`: Floodplain area with NDVI in [0.1, 0.2).
     - `ndvi_2_3_area`: Floodplain area with NDVI in [0.2, 0.3).
     - `ndvi_3_4_area`: Floodplain area with NDVI in [0.3, 0.4).
     - `ndvi_4_5_area`: Floodplain area with NDVI in [0.4, 0.5).
     - `ndvi_5_6_area`: Floodplain area with NDVI in [0.5, 0.6).
     - `ndvi_6_7_area`: Floodplain area with NDVI in [0.6, 0.7).

2. **`urban_data_1km_interval.csv`**
   - **Description**: Summarizes urban percentage (urban%) data for each 1-km river interval.
   - **Columns**:
     - `distMark`: Numeric, corresponding to 1-km intervals (e.g., `distMark = 1` corresponds to [0, 1)).
     - `year`: Numeric, the survey year.
     - `f_year`: Factor, the survey year.
     - `urban`: The percentage of urban area for the corresponding interval.

3. **`seg_wise_floodplain_ndvi.csv`**
   - **Description**: Summarizes annual segment-wise (10-km intervals) floodplain area and cropland percentage from 2006 to 2017.
   - **Columns**:
     - `f_year`: Factor, the survey year.
     - `year`: Numeric, the survey year.
     - `groups`: The river segment.
     - `seg_floodplain_area`: Segment-wise floodplain area.
     - `seg_ndvi_5_7`: Area of floodplains with NDVI > 0.5 (cropland area).
     - `f_groups`: Factor, the river segment.
     - `seg_cropland_perc`: The percentage of cropland on the floodplain (cropland%).

4. **`seg_wise_urban.csv`**
   - **Description**: Summarizes annual segment-wise (10-km intervals) urban percentage from 2006 to 2017.
   - **Columns**:
     - `f_year`: Factor, the survey year.
     - `groups`: The river segment.
     - `year`: Numeric, the survey year.
     - `seg_urban_perc`: Segment-wise urban percentage.

## Citation
If using these files in your work, please provide proper attribution and refer to the licensing information in the main repository README.