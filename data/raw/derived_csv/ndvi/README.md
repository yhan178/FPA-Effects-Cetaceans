
# CSV Files: NDVI Information for Floodplain Vectors

This folder contains CSV files (`NDVIbca_section_based_distMark_*.csv`) that provide detailed NDVI (Normalized Difference Vegetation Index) information for each floodplain vector within 1-km intervals. These files are derived from raster data located in `data/raw/geospatial/raster`.

## File Contents
Each CSV file contains information for floodplain vectors with the following key features:

1. **Columns**:
   - **`GRIDCODE`**: NDVI intervals represented by integers:
     - `1`: NDVI in [0, 0.1)
     - `2`: NDVI in [0.1, 0.2)
     - `3`: NDVI in [0.2, 0.3)
     - `4`: NDVI in [0.3, 0.4)
     - `5`: NDVI in [0.4, 0.5)
     - `6`: NDVI in [0.5, 0.6)
     - `7`: NDVI in [0.6, 0.7)
   - **`POLY_AREA`**: The area of the corresponding floodplain vector (unit: square kilometers).
   - **`year`**: The survey year.
   - **`DistMark`**: A numerical identifier for 1-km intervals along the studied region:
     - Example: `DistMark = 1` corresponds to the interval [0, 1).

## Data Processing Pipeline
1. **Source**:
   - The raster files from `data/raw/geospatial/raster` were analyzed to extract NDVI information for individual floodplain vectors.
2. **Further Processing**:
   - These raw CSV files are further processed and summarized in the `data/processed` folder for analysis and visualization.

## Notes
- The CSV files in this folder are **raw data** and should not be modified directly.
- Use appropriate tools (e.g., R or Python) for data analysis.

## Citation
If using these files in your work, please provide proper attribution and refer to the licensing information in the main repository README.