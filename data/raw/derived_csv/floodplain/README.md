
# CSV Files: Floodplain Vector Information

This folder contains CSV files (`lit_section_based_distMark_*.csv`) that provide detailed information about each floodplain vector. These files are derived from shapefiles located in `data/raw/geospatial/vector`.

## File Contents
Each CSV file contains information for individual floodplain vectors within each 1-km intervals, with the following key features:

1. **Columns**:
   - **`areaSqKm`**: The area of the corresponding floodplain vector (unit: square kilometers).
   - **`year`**: The survey year in which the data was collected.
   - **`DistMark`**: A numerical identifier for 1-km intervals along the studied region:
     - Example: `DistMark = 1` corresponds to the interval [0, 1).

2. **Rows**:
   - Each row represents a single floodplain vector extracted from the original shapefiles.

## Data Processing Pipeline
1. **Source**:
   - The shapefiles from `data/raw/geospatial/vector` were processed to extract key attributes, resulting in these CSV files.
2. **Further Processing**:
   - These raw CSV files are further processed and summarized in the `data/processed` folder for detailed analysis.

## Notes
- The CSV files in this folder are **raw data** and should not be modified directly.
- Use appropriate tools (e.g., R, Python, or Excel) for analyzing the data.

## Citation
If using these files in your work, please provide proper attribution and refer to the licensing information in the main repository README.