# FPAs Effects on Porpoise Abundance

This folder contains scripts and rendered outputs for analyzing the effects of freshwater protected areas (FPAs) on porpoise abundance.

## Files Overview

1. **`DiD_analysis_PAs_effect_on_porpoises.Rmd`**
   - **Purpose**: Tests whether porpoise abundance is higher and less prone to decline in FPAs compared to non-FPAs.
   - **Inputs**:
     - `segment_wise_porpoise_abundance.csv` from `data/analysis_outputs/animal_distribution`.
   - **Outputs**:
     - Statistical outputs and visualizations corresponding to **Figure 4** in the main text.
     - The plot is outputted as `fig_4_porpoise_abundance_did.png	` in folder `results/figures`.
   - **Rendered Output**: Available as `DiD_analysis_PAs_effect_on_porpoises.nb.html`.

## Notes on File Types
- **`.Rmd` files**: Contain the analysis code for the statistical testing and visualization.
- **`.nb.html` files**: Rendered outputs of the `.Rmd` files, providing a visual representation of the analysis and results.

## Citation
If using any files in this folder for your work, please provide proper attribution and refer to the licensing information in the main repository README.