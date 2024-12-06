# README for Scripts Folder

This folder contains four R scripts designed to process raw data and generate processed datasets stored in the `data/processed/` folder. These scripts summarize and prepare data for subsequent analyses.

## Scripts Overview

1. **`data_prep_floodplain_ndvi_1km_interval.R`**
   - **Purpose**: Summarizes floodplain area and the areas of seven NDVI categories into 1-km river intervals.
   - **Inputs**:
     - `data/raw/derived_csv/floodplain`
     - `data/raw/derived_csv/ndvi`
   - **Outputs**: 
     - `data/processed/floodplain_ndvi_data_1km_interval.csv`

2. **`data_prep_urban_1km_interval.R`**
   - **Purpose**: Calculates and summarizes the percentage of urban area (urban%) into 1-km river intervals based on land cover data.
   - **Inputs**: 
     - `data/raw/derived_csv/urban`
   - **Outputs**:
     - `data/processed/urban_data_1km_interval.csv`

3. **`seg_wise_floodplain_cropland_data_preparation.R`**
   - **Purpose**: Summarizes annual segment-wise (10-km intervals) floodplain area and cropland percentage from 2006 to 2017.
   - **Inputs**:
     - `data/processed/floodplain_ndvi_data_1km_interval.csv`
   - **Outputs**:
     - `data/processed/seg_wise_floodplain_ndvi.csv`

4. **`seg_wise_urban_data_preparation.R`**
   - **Purpose**: Summarizes annual segment-wise (10-km intervals) urban percentage from 2006 to 2017.
   - **Inputs**:
     - `data/processed/urban_data_1km_interval.csv`
   - **Outputs**:
     - `data/processed/seg_wise_urban.csv`

## Usage Notes
- These scripts are designed to ensure a reproducible workflow, converting raw data into processed datasets ready for analysis.
- Ensure all required input files are correctly placed in the specified folders before running these scripts.
- The outputs are stored in the `data/processed/` folder and serve as inputs for downstream analyses.

## Citation
If using this file in your work, please provide proper attribution and refer to the licensing information in the main repository README.
