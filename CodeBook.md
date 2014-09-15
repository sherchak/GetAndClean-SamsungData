###Human Activity Recognition Using Smartphones Tidied Dataset
###Version 1.0
Steven Herchak
ca.linkedin.com/in/stevenherchak

The tidyData data set takes data obtained by [1] and refactors it into a single data array. From the README.txt in the data obtained in [1]:


>"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details."

The data presented in tidyData a 180 x 81 array of the following format:

'subject\tab activity\tab feature[...]'

##ABOUT THE VARIABLES AND PRESENTED DATA 
The first column, subject, is a number ranging from 1 to 30, uniquely assigned to one of the volunteers of the experiment.
The second column, activity, is a string describing the activity being performed during the time the data for all entries in the row was obtained. The activity data takes on a number from 1 to 6, and have been mapped to activities as follows:

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

The remaining 79 columns each contain a numeric values for a unique feature, shown below in order. The features include the features presented in [1] for only data obtained with a mean value or standard deviation (ie. mean() or std()) operation.  The values contained in each of these columns is a mean of the feature value for each activity, and for each subject.  

##FEATURES

From [1]:
>"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."

The list below is of the mean and standard deviations of the feature vectors just described. 

"tBodyAcc-mean()-X"
"tBodyAcc-mean()-Y"
"tBodyAcc-mean()-Z"
"tBodyAcc-std()-X"
"tBodyAcc-std()-Y"
"tBodyAcc-std()-Z"
"tGravityAcc-mean()-X"
"tGravityAcc-mean()-Y"
"tGravityAcc-mean()-Z"
"tGravityAcc-std()-X"
"tGravityAcc-std()-Y"
"tGravityAcc-std()-Z"
"tBodyAccJerk-mean()-X"
"tBodyAccJerk-mean()-Y"
"tBodyAccJerk-mean()-Z"
"tBodyAccJerk-std()-X"
"tBodyAccJerk-std()-Y"
"tBodyAccJerk-std()-Z"
"tBodyGyro-mean()-X"
"tBodyGyro-mean()-Y"
"tBodyGyro-mean()-Z"
"tBodyGyro-std()-X"
"tBodyGyro-std()-Y"
"tBodyGyro-std()-Z"
"tBodyGyroJerk-mean()-X"
"tBodyGyroJerk-mean()-Y"
"tBodyGyroJerk-mean()-Z"
"tBodyGyroJerk-std()-X"
"tBodyGyroJerk-std()-Y"
"tBodyGyroJerk-std()-Z"
"tBodyAccMag-mean()"
"tBodyAccMag-std()"
"tGravityAccMag-mean()"
"tGravityAccMag-std()"
"tBodyAccJerkMag-mean()"
"tBodyAccJerkMag-std()"
"tBodyGyroMag-mean()"
"tBodyGyroMag-std()"
"tBodyGyroJerkMag-mean()"
"tBodyGyroJerkMag-std()"
"fBodyAcc-mean()-X"
"fBodyAcc-mean()-Y"
"fBodyAcc-mean()-Z"
"fBodyAcc-std()-X"
"fBodyAcc-std()-Y"
"fBodyAcc-std()-Z"
"fBodyAcc-meanFreq()-X"
"fBodyAcc-meanFreq()-Y"
"fBodyAcc-meanFreq()-Z"
"fBodyAccJerk-mean()-X"
"fBodyAccJerk-mean()-Y"
"fBodyAccJerk-mean()-Z"
"fBodyAccJerk-std()-X"
"fBodyAccJerk-std()-Y"
"fBodyAccJerk-std()-Z"
"fBodyAccJerk-meanFreq()-X"
"fBodyAccJerk-meanFreq()-Y"
"fBodyAccJerk-meanFreq()-Z"
"fBodyGyro-mean()-X"
"fBodyGyro-mean()-Y"
"fBodyGyro-mean()-Z"
"fBodyGyro-std()-X"
"fBodyGyro-std()-Y"
"fBodyGyro-std()-Z"
"fBodyGyro-meanFreq()-X"
"fBodyGyro-meanFreq()-Y"
"fBodyGyro-meanFreq()-Z"
"fBodyAccMag-mean()"
"fBodyAccMag-std()"
"fBodyAccMag-meanFreq()"
"fBodyBodyAccJerkMag-mean()"
"fBodyBodyAccJerkMag-std()"
"fBodyBodyAccJerkMag-meanFreq()"
"fBodyBodyGyroMag-mean()"
"fBodyBodyGyroMag-std()"
"fBodyBodyGyroMag-meanFreq()"
"fBodyBodyGyroJerkMag-mean()"
"fBodyBodyGyroJerkMag-std()"
"fBodyBodyGyroJerkMag-meanFreq()"

**Note**: 	-The mean frquency meanfreq() was not included as a feature because it performs a both a FFT and mean value operation.
	-All features are normalized and bounded within [-1,1].

###ABOUT OBTAINING THE DATA SHOWN IN TIDYDATA.TXT
-First the all relevant data from [1] was read into RStudio.
-The training data and test data were bound using rbind for all features, activities, and subjects
-The features, activities, and subject data were bound into one data set using cbind.
-Only the relevant features (noted above) were isolated from the dataset by using a grepl to search for features of interest, and reconstructing the data as before, using the grepl results to isolate desired features
-The numeric activities were converted to characters with description mapped above. This was accomplished using vectorization of the form: dataset[,2][dataset[,2]==1]<- "WALKING" where 2 is activity column, and 1 is the activity number.
-Names were given to all columns of the data set, again using results from the grepl to easily obtain all feature names.
-The tidy dataset was created. This was accomplished by construcing the array row by row using rbinds. Each row was created inside two nested for loops, the loop for activity inside the loop for subject. Using this method, for each activity, for each subject, a row was made using c() to concatenate the subject, activity name, and the mean of all values for each feature. The mean of all the values for each feature, fore each subject, for each activity was constructed using a colMeans() on the feature columns using vectorization to determine which entries for the feature corresponded to the given subject and activity. 
-Lastly, because the column names got removed when creating the tidy data, they are reassigned using the same procedure up two steps
-In order to output the data, a write.table() was used with the row.names attribute set to false. 

To read the data into r, copy the tidyData.txt file into your working directory, and write the following
tidyData <- read.table("tidyData.txt", header = TRUE)

###REFERENCES

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. *Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine.* International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. **Dec 2012**.