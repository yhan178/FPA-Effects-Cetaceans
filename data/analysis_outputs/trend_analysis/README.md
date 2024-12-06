# Trend Analysis Results: Habitat Outputs and Data Sources

This folder `data/analysis_outputs/trend_analysis` contains three CSV files produced from the trend analysis of habitats (see `analysis/habitat_trend_analysis/`). These files also serve as data sources for subsequent analyses on:
1. The effects of PAs on habitats (see `analysis/PAs_effects_habitats/`).
2. The relationship between habitat changes and porpoise abundance change patterns (see `analysis/habitat_effects_on_porpoise/`).

## Files Overview

1. **`floodplain_area_regression_results.csv`**
   - **Description**: Results of the linear regression analysis for floodplain area trends.
   - **Columns**:
     - `groups`: The river segment.
     - `p_value`: Numeric, p-value of the linear regression analysis.
     - `p_cate`: Character, categorizes p-values as `<0.05` or `<0.01` if they meet these thresholds.
     - `r_squared`: The R-squared value of the linear regression.
     - `slope`: The slope coefficient (β) of the regression.

2. **`cropland_perc_regression_results.csv`**
   - **Description**: Results of the linear regression analysis for cropland percentage (cropland%) trends.
   - **Columns**:
     - `groups`: The river segment.
     - `p_value`: Numeric, p-value of the linear regression analysis.
     - `p_cate`: Character, categorizes p-values as `<0.05` or `<0.01` if they meet these thresholds.
     - `r_squared`: The R-squared value of the linear regression.
     - `slope`: The slope coefficient (β) of the regression.

3. **`urban_cluster_results.csv`**
   - **Description**: Results of the cluster analysis for urban development trends.
   - **Columns**:
     - `groups`: The river segment.
     - `intl`: Segment-wise urban percentage (urban%) in 2001.
     - `increment`: Increment of the urban percentage from 2001 to 2017.
     - `incre_perc`: Percentage increase of urban percentage from 2001 to 2017 (calculated using increment / urban% in 2017).
     - `development_levels`: The development level of the corresponding segment.

## Notes
- These files are intermediate results, both used for reporting and as data inputs for further analyses.
- Modifications to these files should be documented to ensure reproducibility of the pipeline.

## Citation
If using these files in your work, please provide proper attribution and refer to the licensing information in the main repository README.