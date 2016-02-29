#Assignment for Getting and Cleaning Data
===============================================================================

##run_analysis.R
-------------------------------------------------------------------------------
This script should be run from the directory containing the "UCI HAR Dataset" 
directory. The script outputs a file tidyData.txt which is the required data 
set containing the means of all observation by subject and activity.

To read the tidyData.txt file into your workspace run the following command:
tidyData<-read.table("tidyData.txt", header = TRUE)

##CodeBook.md
-------------------------------------------------------------------------------
This file contains descriptions of the variable in the tidyData set. It should
be considered as an update to "UCI HAR Dataset/features_info.txt".
