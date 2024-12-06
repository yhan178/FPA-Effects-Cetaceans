# Vector Files: Extracted Floodplain Vectors

This folder contains vector files (`.shp` format) representing extracted floodplain vectors for each year (i.e., each flood cycle). The files are organized as follows:

## File Structure
- The vector files are stored in shapefile format (`.shp`) and named based on the corresponding years of the flood cycles.
  - Example: `Lit_merged_2013_2014.shp` contains all floodplain vectors for the years 2013 to 2014.

## Processing Pipeline
1. **Conversion**:
   - Shapefiles are converted into CSV files for further analysis.
   - The resulting CSV files are stored in the `data/raw/derived_csv/floodplain/` folder.
2. **CSV Files**:
   - Each CSV corresponds to a set of floodplain vectors for a specific year range.
   - Example: `lit_section_based_distMark_2013_2014.csv` contains floodplain vectors for the years 2002 to 2003.

## Notes
- The shapefiles in this folder are **raw data** and have not been modified beyond the extraction process.
- Use appropriate GIS tools (e.g., QGIS, ArcGIS) to view, analyze, or process these files.

## Citation
If using these shapefiles in your work, please provide proper attribution and refer to the licensing information in the main repository README.