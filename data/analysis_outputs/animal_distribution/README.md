This folder contains two CSV files processed and produced by `calc_plot_yfp_mov_aver.Rmd` located in `analysis/02_porpoise_encounter_rates/`. These files provide calculated moving average encounter rates and segment-wise porpoise abundance data, which are used for both reporting and downstream analyses.

## Files Overview

1. **`yfp_moving_average_06_17.csv`**
   - **Description**: Contains the calculated moving average encounter rates of porpoises for 2006 and 2017.
   - **Columns**:
     - **`DistMark`**: Each number corresponds to a 1-km interval (e.g., `DistMark = 1` corresponds to the interval [0, 1)).
     - **`year`**: Numeric, the survey year.
     - **`f_year`**: Factor, the survey year.
     - **`size`**: Total number of porpoises observed within the corresponding interval, summarized from two boats in a return survey.
     - **`mov_aver`**: Moving average encounter rate of porpoises.
     - **`reserve`**: Binary, whether the segment is located in a reserve in 2017.
     - **`reserve_name`**: Name of the reserve that the segment belongs to; non-reserve segments are denoted as `'non-PAs'`.
     - **`reserve_without_nj`**: Binary, whether the segment is located in a reserve before 2006. Segments belonging to the Nanjing reserve are identified as `'non-PAs'` (as the reserve was established in 2014). Note: River segments covered by the Anqing reserve (established in 2007) are assigned to the PA group in 2006 (see the main text and supporting information for explanation).

2. **`segment_wise_porpoise_abundance.csv`**
   - **Description**: Summarized segment-wise encounter rates of porpoises for 2006 and 2017.
   - **Columns**:
     - **`groups`**: The river segment.
     - **`f_year`**: Factor, the survey year.
     - **`year`**: Numeric, the survey year.
     - **`abund_ranks`**: Corresponding abundance rank of the segment.
     - **`segment_mean`**: Average porpoise abundance for each segment.
     - **`reserve`**: Binary, whether the segment is located in a reserve in 2017.
     - **`reserve_without_nj`**: Binary, whether the segment is located in a reserve before 2006. Segments belonging to the Nanjing reserve are identified as `'non-PAs'` (as the reserve was established in 2014). Note: River segments covered by the Anqing reserve (established in 2007) are assigned to the PA group in 2006 (see the main text for explanation).

## Notes
- These files are intermediate results, both used for reporting and as data inputs for further analyses.
- Modifications to these files should be documented to ensure reproducibility of the pipeline.

## Citation
If using these files in your work, please provide proper attribution and refer to the licensing information in the main repository README.