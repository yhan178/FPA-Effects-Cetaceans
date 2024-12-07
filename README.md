# 🌏 FPA-Effects-Cetaceans

This repository contains the data, code, and analysis for the research paper _"Effects of Freshwater Protected Areas on Survival of a Critically Endangered Cetacean"_.

## 📖 Repository Structure

```plaintext
FPA-Effects-Cetaceans/
├── data/
│   ├── raw/                # Raw data files (original data)
│   │   ├── derived_csv/    # Derived raw CSV files (.csv) from geospatial and other sources
│   │   ├── geospatial/     # Geospatial raw data (.tif, .shp)
│   ├── processed/          # Processed data ready for analysis (.csv)
│   ├── analysis_outputs/   # Results also used for downstream analyses (.csv)
├── results/                # Final results for reporting
│   ├── figures/            # Figures and visualizations for publications
├── scripts/                # Data processing scripts (.R)
├── analysis/               # Analysis files
│   ├── *.Rmd               # R Markdown files for analysis and visualization
│   ├── *.nb.html           # Rendered notebook outputs
├── LICENSE                 # License for the repository
├── README.md               # Overview of the repository
└── .gitignore              # Files and directories to be ignored by Git
```

### Explanation of Key Directories
- **`data/`**: Contains all data-related files, organized into:
  - **`raw/`**: Original and unprocessed data.
     - **`derived_csv/`**: Raw CSV files (`*.csv`) derived from geospatial or other sources.
     - **`geospatial/`**: Original geospatial data such as raster files (`*.tif`) and shapefiles (`*.shp`).
  - **`processed/`**: Data files that have been processed and cleaned, ready for analysis (`*.csv`).
  - **`analysis_outputs/`**: Results generated from analysis scripts; these files also serve as inputs for downstream analyses.
  
- **`results/`**: Contains outputs used for reporting and publications.
  - **`figures/`**: Final visualizations such as plots and charts (`*.png`).

- **`scripts/`**: R scripts designed to process raw data and generate processed datasets stored in the `data/processed/` folder (`*.R`).
 
- **`analysis/`**: Contains analysis-related files:
  - **`.Rmd`**: R Markdown files for analysis, documentation, and visualization.
  - **`.nb.html`**: Rendered HTML outputs from R Markdown for viewing results interactively.

- **`LICENSE`**: The license governing the use of this repository.

- **`README.md`**: Provides an overview of the repository, including its purpose and structure.

- **`.gitignore`**: Specifies files and directories to be ignored by Git.

## 💻 How to Reproduce the Analysis
1. Clone the repository: `git clone git@github.com:yhan178/FPA-Effects-Cetaceans.git`
2. Run the scripts in `scripts/` to process raw data.
3. Use the R Markdown files in `analysis/` to perform the analyses.

## ©️ License
- **Code License**: All R scripts in this repository are licensed under the MIT License. See [LICENSE](https://github.com/yhan178/FPA-Effects-Cetaceans/blob/main/LICENSE) for details.
- **Data License**: The datasets in the `data/` directory are licensed under the [Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License (CC BY-NC-ND 4.0)](https://creativecommons.org/licenses/by-nc-nd/4.0/).
  - **Access**: The datasets can also be accessed on [Zenodo](#).
  - **Usage summary**: The data can be shared and used for non-commercial purposes, provided proper attribution is given. However, modifications or derivative works are not allowed.
  - If you have specific questions or requests about the data usage, please contact the repository owner.
