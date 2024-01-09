---
title: "CodeBook"
author: "Asoskov Dmitrii"
date: "2024-01-09"
output: pdf_document
---
## Data Source

The dataset used for this project is the Human Activity Recognition Using Smartphones Dataset. A full description is available at the site where the data was obtained: [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Variables

1. **subject:**  
   Identifier for the subject who performed the activity. Ranges from 1 to 30.

2. **activity:**  
   The type of activity performed by the subject. It is a factor variable with the following levels:
   - WALKING
   - WALKING_UPSTAIRS
   - WALKING_DOWNSTAIRS
   - SITTING
   - STANDING
   - LAYING

3. **Other Variables:**
   The remaining variables are the average of each variable for each activity and each subject. They represent the mean values of the accelerometer and gyroscope measurements during various activities.

   For detailed information about these variables, please refer to the original features_info.txt file included with the dataset.

## Transformations

1. **Merging Datasets:**
   - The training and test datasets were merged to create one dataset.

2. **Extracting Relevant Measurements:**
   - Only the measurements on the mean and standard deviation for each measurement were extracted.

3. **Descriptive Activity Names:**
   - Descriptive activity names were used to name the activities in the dataset.

4. **Appropriate Variable Labels:**
   - The dataset was labeled with descriptive variable names, replacing abbreviations

