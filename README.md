# datasciencecoursera

# Getting-and-Cleaning-Data-Project

## Overview

This project aims to demonstrate the ability to collect, work with, and clean a data set related to wearable computing. The data used in this project are collected from accelerometers in the Samsung Galaxy S smartphone. The goal is to prepare tidy data that can be used for later analysis.

## Instructions

### 1. Tidy Data Set - Submission Requirements:

Please upload the tidy data set created in step 5 of the instructions. The data set should be submitted as a TXT file created with `write.table()` using `row.name=FALSE`.

### 2. Github Repository with Code:

Please submit a link to a Github repository containing the code for performing the analysis. The repository should include:

- **run_analysis.R:** R script in the main directory that can be executed if the Samsung data is in your working directory. The output should be the tidy data set submitted for part 1.
  
- **README.md:** Explanation of how the script works and how the code is organized.
  
- **CodeBook.md:** Code book describing the variables, the data, and any transformations performed.

### 3. CodeBook

The `CodeBook.md` file details the variables, data, and transformations performed to clean up the data.

## Project Steps

1. **Data Download and Unzip:**
   - Data files are downloaded and unzipped using `download.file()` and `unzip()` in R.

2. **Read Files:**
   - Activity, subject, and features files are read using `read.table()`.

3. **Merge Datasets:**
   - Datasets are merged using `rbind()`.

4. **Label Features:**
   - Feature names are labeled using descriptive variable names with `names()`.

5. **Libraries and Comments:**
   - Libraries `plyr` and `knitr` are called using `library()`.
   - Key steps are commented for clarity.

6. **Create Tidy Data Set 1:**
   - Tidy data set is created by combining subjects, data labels, and features.
   - Only std and mean features are subset from the list.
   - Features are renamed for readability.
   - Data is labeled with descriptive activity names.
   - Merged data is written to a file.

7. **Create Tidy Data Set 2:**
   - Averages of measurements for each activity and subject are calculated.
   - Second tidy data set is written to a file.

## Data Source

The dataset used for this project is sourced from the [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Notes

- Ensure an active internet connection to download the dataset.
- The script assumes the necessary R packages (`dplyr`, `tidyr`, etc.) are installed.

## Contact

Feel free to contact me if you have any questions or concerns. Good luck with your analysis!
