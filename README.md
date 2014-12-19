Cleaning_Data_Project
=====================

This repository contains:
1) run_analysis.R - An R script that is used to take the Human Activity Recognition Using Smartphones Dataset (Version 1.0) raw data and create a tidy data set 
2) A codebook for the tidy data set created by the R scripts

run_Analysis.R retrieves the Samsung HCI data files (Assumes that they are unzipped in the folder "UCI HAR Dataset" in the working directory).  There are several sets of raw data (Train and Test) as well as multiple raw files that make up each of those sets.

The R script combines the data, adds cleaned column names, converts the activity enumerated values into readable values and downsizes the data to include only variables containing means or standard deviations.  It then creates and writes a tidy data set where there is an average of the variables for each subject and activity.

The output file is called "tidy_averaged_set.txt"
