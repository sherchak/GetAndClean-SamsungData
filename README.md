###run_analysis.R
Steven Herchak
ca.linkedin.com/in/stevenherchak



The run_analysis.R script reads in data from the UCI HAR Dataset. 
It then combines all training and test data into a datafile for each features, activities, and subjects. It then combines these datafiles into one single data file with all features. Next, only features obtained by performing using a mean or standard deviation operator are kept, the other features are discared. Finally, a tidy data set is created with a mean value for each feature, for each activity, for each subject, yielding the output, tidyDatasets.txt.



