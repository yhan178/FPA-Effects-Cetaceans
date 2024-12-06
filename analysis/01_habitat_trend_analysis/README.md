# Habitat Trend Analysis

This folder contains scripts and rendered outputs for analyzing habitat trends, including changes in floodplain areas, cropland percentages (cropland%), and urban development. 

## Files Overview

1. **`trend_analysis_area_cropland.Rmd`**  
   - **Purpose**: Examines segment-wise changes in floodplain area and cropland percentages from 2001 to 2016.
   - **Inputs**: 
     - `data/processed/seg_wise_floodplain_ndvi.csv`.
   - **Outputs**: 
     - Results presented as **Table S1** in the Supporting Information.
     - Regression results stored in:
       - `data/analysis_outputs/floodplain_area_regression_results.csv`
       - `data/analysis_outputs/cropland_perc_regression_results.csv`.
   - A rendered version of this file is available as `trend_analysis_area_cropland.nb.html`.

2. **`cluster_analysis_urban.Rmd`**  
   - **Purpose**: Analyzes segment-wise changes in urban percentages from 2001 to 2017 using cluster analysis to classify river segments into four urban development levels.
   - **Inputs**: 
     - `data/processed/seg_wise_urban.csv`.
   - **Outputs**: 
     - Results displayed in **Figure S2** and **Table S2** in the Supporting Information.
     - Cluster analysis results stored in `data/analysis_outputs/urban_cluster_results.csv`.
   - A rendered version of this file is available as `cluster_analysis_urban.nb.html`.


## Notes on File Types
- **`.Rmd` files**: Contain the analysis code for data processing and visualization.
- **`.nb.html` files**: Rendered outputs of the `.Rmd` files, providing a visual representation of the analysis.

## Citation
If using any files in this folder for your work, please provide proper attribution and refer to the licensing information in the main repository README.









