# CSV Files: Urban, Cropland, and Water Area Data

This folder contains CSV files (`human_imapc_modis_*.csv`) that provide information on urban area, cropland area, and water area derived from MODIS products for midline points along the river for each year.

## File Contents
Each CSV file contains the following key columns:

1. **Columns**:
   - **`distMark`**: A numerical identifier indicating the position of each midline point. The value corresponds to the distance (in kilometers) from the starting point at Yichang.
   - **`urban`**: Urban area (in square kilometers) within a 7-km radius of the midline point.
   - **`crop`**: Cropland area (in square kilometers) within the same radius.
   - **`water`**: Water area (in square kilometers) within the same radius.


The following Google Earth Engine link shows how to obtain these pieces of 
information for the first year, i.e., 2001.
(https://code.earthengine.google.com/a6824b27951f85c9590cc665ce0b13c5)

## Data Extraction
1. **Point Generation**:
   - Midline points were generated at 1-km intervals along the river.
2. **Circle Delimitation**:
   - A circle with a radius of 7 km was drawn around each midline point.
3. **Measurement**:
   - The urban, cropland, and water areas within each circle were measured in square kilometers using MODIS products.

### Google Earth Engine 
This [Google Earth Engine script](https://code.earthengine.google.com/a6824b27951f85c9590cc665ce0b13c5) demonstrates how to obtain the data for the first year (2001).

##Further Processing:
   - These raw CSV files are further processed and summarized in the `data/processed` folder for analysis and visualization.

## Notes
- The CSV files in this folder are **raw data** and should not be modified directly.
- Use the linked Google Earth Engine script for replication or further data extraction.

## Citation
If using these files in your work, please provide proper attribution and refer to the licensing information in the main repository README.
