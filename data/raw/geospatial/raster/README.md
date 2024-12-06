# Raster Files: NDVI Values of Extracted Floodplains

This folder contains raster files (`.tif` format) representing NDVI (Normalized Difference Vegetation Index) values of extracted floodplains for each year (i.e., each flood cycle). The raster files are organized as follows:

## File Structure
- For each year, there are three `.tif` files:
  - `upperNDVILitZonesBCA_*.tif`: NDVI values for the upper section of the studied region.
  - `midNDVILitZonesBCA_*.tif`: NDVI values for the middle section of the studied region.
  - `downNDVILitZonesBCA_*.tif`: NDVI values for the lower section of the studied region.

## Processing Pipeline
1. **Merging**: The three `.tif` files for each year are merged into a single raster file.
2. **Conversion**:
   - The merged raster is converted into vector data.
   - The vector data is further processed and converted into a CSV file.
3. **CSV Files**:
   - The resulting CSV files are stored in the `data/raw/derived_csv/ndvi/` directory.
   - See files named `NDVIbca_section_based_distMark_*.csv` for details.

## Notes
- The raster files in this folder are **raw data** and have not been modified beyond the original extraction process.
- Ensure appropriate tools (e.g., QGIS, ArcGIS) are used to view or process the `.tif` files.

## Citation
If using these raster files in your work, please provide proper attribution and refer to the licensing information in the main repository README.