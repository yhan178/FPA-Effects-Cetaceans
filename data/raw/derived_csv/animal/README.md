# Yangtze Finless Porpoise Sighting Records

This folder contains the CSV file (`yfp_sightings_06_17.csv`) that summarizes the sighting records of the Yangtze finless porpoise during surveys conducted in 2006 and 2017.

## File Contents
The file includes the following columns:

   - **`DistMark`**: A numerical identifier for 1-km intervals along the river section:
     - Example: `DistMark = 1` corresponds to the interval [0, 1).
   - **`size`**: The total number of porpoises observed within the corresponding interval, summarized from sightings by two boats during the survey.
   - **`year`**: The year of the survey (`2006` or `2017`).

## Data Generation Methodology
1. **Point Generation**:
   - Evenly spaced points were generated along the midline of the studied river section at 1-km intervals.
2. **Sighting Assignment**:
   - Each porpoise sighting record was assigned to the closest midline point using ArcGIS.
3. **Summary**:
   - The number of porpoises observed within each 1-km interval was summarized.

## Notes
- This file is **raw data** and should not be modified directly.

## Citation
If using this file in your work, please provide proper attribution and refer to the licensing information in the main repository README.This folder contains four files.