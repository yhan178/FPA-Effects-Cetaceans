# Effects of FPAs on habitats

This folder contains scripts and rendered outputs for comparing the initial habitat conditions and habitat changes between freshwater protected areas (FPAs) and non-FPAs. These analyses and outcomes correspond to _Section 3.2 Effects of FPAs on porpoise abundance and floodplain habitats_ in the main text and Appendix S5 in Supporting information.  

## Files Overview

1. **`analysis_initial_habitat_conditions_PAs_vs_nonPAs.Rmd`**
   - **Purpose**: Tests whether FPAs had better initial habitat conditions compared to non-FPAs.
   - **Inputs**:
     - `seg_wise_floodplain_ndvi.csv` and `seg_wise_urban.csv` from `data/processed`.
   - **Outputs**:
     - Statistical outputs and visualizations corresponding to **Fig. 5a-c** in the main text. The figure 5a-c is outputted as `fig_5a_c_init_habitat.png` in folder `results/figures`.
   - **Rendered Output**: Available as `analysis_initial_habitat_conditions_PAs_vs_nonPAs.nb.html`.

2. **`analysis_habitat_changes_PAs_vs_nonPAs.Rmd`**
   - **Purpose**: Tests whether FPAs had more river segments with stable habitat conditions compared to non-FPAs.
   - **Inputs**:
     - `floodplain_area_regression_results.csv`, `cropland_perc_regression_results.csv`, and `urban_cluster_results.csv` from `data/analysis_outputs/trend_analysis`.
   - **Outputs**:
     - Statistical outputs and visualizations corresponding to **Fig. 5d-f** in the main text.
   - **Rendered Output**: Available as `analysis_habitat_changes_PAs_vs_nonPAs.nb.html`.

## Notes on File Types
- **`.Rmd` files**: Contain the analysis code for statistical testing and visualization.
- **`.nb.html` files**: Rendered outputs of the `.Rmd` files, providing a visual representation of the analysis and results.

## Citation
If using any files in this folder for your work, please provide proper attribution and refer to the licensing information in the main repository README.