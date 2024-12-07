# Porpoise Encounter Rates Analysis

This folder contains scripts and rendered outputs for analyzing porpoise encounter rates and visualizing segment-wise porpoise changes alongside habitat changes. The outputs of these analyses produce **Figure 2a** and **Figure 2b** and also serve as data sources for downstream analyses. All processed data frames are saved in the folder `data/analysis_outputs/animal_distribution`.

## Files Overview

1. **`calc_plot_yfp_mov_aver.Rmd`**
   - **Purpose**: Prepares porpoise sighting records, calculates the moving average of encounter rates, and generates segment-wise porpoise abundance data for downstream analyses.
   - **Steps**:
     1. Cleans raw porpoise sighting data from `../../data/analysis_outputs/animal_distribution/yfp_moving_average_06_17.csv`.
     2. Calculates the moving average of porpoise encounter rates and saves the data frame as `yfp_moving_average_06_17.csv` in `data/analysis_outputs/animal_distribution`.
     3. Plots the moving average of porpoise encounter rates, corresponding to **Figure 2a**. Figure 2a is outputted as `fig_2a_moving_avarage_porpoise.png` in folder `results/figures`.
     4. Summarizes segment-wise porpoise encounter rates and saves the data frame as `segment_wise_porpoise_abundance.csv` in `data/analysis_outputs/animal_distribution`.
   - **Rendered Output**: Available as `calc_plot_yfp_mov_aver.nb.html`.


2. **`plot_segment_wise_habitat_changes_porpoise_abund_changes.Rmd`**
   - **Purpose**: Visualizes segment-wise changes in porpoise abundance, floodplain area, cropland percentages, and urban development levels.
   - **Outputs**: Generates visualizations corresponding to **Figure 2b**.
   - **Rendered Output**: Available as `plot_segment_wise_habitat_changes_porpoise_abund_changes.nb.html`.


## Notes on File Types
- **`.Rmd` files**: Contain the analysis code for data processing and visualization.
- **`.nb.html` files**: Rendered outputs of the `.Rmd` files, providing a visual representation of the analysis.

## Citation
If using any files in this folder for your work, please provide proper attribution and refer to the licensing information in the main repository README.
