# Effects of Freshwater Protected Areas on Survival of a Critically Endangered Cetacean

## Overview

This repository contains the data and R code associated with the research paper:
Han, Y., Xu, W., Wang, K., Wang, D., & Mei, Z. (2024). Effects of Freshwater Protected Areas on Survival of a Critically Endangered Cetacean. Conservation Letters, e13081. DOI: https://doi.org/10.1111/conl.13081.

## 📖 Repository Structure

```plaintext
FPA-Effects-Cetaceans/
├── analysis/               # Analysis files
│   ├── *.Rmd               # R Markdown files for analysis and visualization
│   ├── *.nb.html           # Rendered notebook outputs
├── data/
│   ├── raw/                # Raw data files (original data)
│   │   ├── derived_csv/    # Derived raw CSV files (.csv) from geospatial and other sources
│   │   ├── geospatial/     # Geospatial raw data (.tif, .shp)
│   ├── processed/          # Processed data ready for analysis (.csv)
│   ├── analysis_outputs/   # Results also used for downstream analyses (.csv)
├── results/                # Final results for reporting
│   ├── figures/            # Figures and visualizations for publications
├── scripts/                # Data processing scripts (.R)
├── .gitignore              # Files and directories to be ignored by Git
├── LICENSE                 # License for the repository
└── README.md               # Overview of the repository
```

### Explanation of Key Directories
- **`analysis/`**: Contains analysis-related files:
  - **`.Rmd`**: R Markdown files for analysis, documentation, and visualization.
  - **`.nb.html`**: Rendered HTML outputs from R Markdown for viewing results interactively.
    
- **`data/`**: Contains all data-related files, organized into:
  - **`raw/`**: Original and unprocessed data.
     - **`derived_csv/`**: Raw CSV files (`*.csv`) derived from geospatial or other sources.
     - **`geospatial/`**: Original geospatial data such as raster files (`*.tif`) and shapefiles (`*.shp`).
  - **`processed/`**: Data files that have been processed and cleaned, ready for analysis (`*.csv`).
  - **`analysis_outputs/`**: Results generated from analysis scripts; these files also serve as inputs for downstream analyses.
  
- **`results/`**: Contains outputs used for reporting and publications.
  - **`figures/`**: Final visualizations such as plots and charts (`*.png`).

- **`scripts/`**: R scripts designed to process raw data and generate processed datasets stored in the `data/processed/` folder (`*.R`).

## 💻 How to Reproduce the Analysis
1. Clone the repository: `git clone git@github.com:yhan178/FPA-Effects-Cetaceans.git`
2. Run the scripts in `scripts/` to process raw data.
3. Use the R Markdown files in `analysis/` to perform the analyses.

## ©️ License
- **Code License**: All R scripts in this repository are licensed under the MIT License. See [LICENSE](https://github.com/yhan178/FPA-Effects-Cetaceans/blob/main/LICENSE) for details.
- **Data License**: The datasets in the `data/` directory are licensed under the [Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License (CC BY-NC-ND 4.0)](https://creativecommons.org/licenses/by-nc-nd/4.0/).
  - **Access**: The datasets can also be accessed on [Zenodo](https://doi.org/10.5281/zenodo.14292677).
  - **Usage summary**: The data can be shared and used for non-commercial purposes, provided proper attribution is given. However, modifications or derivative works are not allowed.
  - If you have specific questions or requests about the data usage, please contact the repository owner.
