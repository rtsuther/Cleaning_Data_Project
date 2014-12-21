<h1>Codebook for "tidy_averaged_set.txt" which is the output of run_analysis.R </h1>

Input:  
Assumes the data files necessary to execute the program are in the folder "UCI HAR Dataset" in the current working directory

The original data was from the following:
    ==================================================================
    <br\>Human Activity Recognition Using Smartphones Dataset
    <br\>Version 1.0  
    ==================================================================  
    Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
    Smartlab - Non Linear Complex Systems Laboratory  
    DITEN - Università degli Studi di Genova.  
    Via Opera Pia 11A, I-16145, Genoa, Italy.  
    activityrecognition@smartlab.ws  
    www.smartlab.ws  
    ==================================================================  
  
<h2>Description of the Original Data:</h2>
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
    
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

<h2>tidy_averaged_set.txt output file:</h2>
Dimensions - 180 rows x 68 columns

The rows represent the average for the variables for each subject and each activity.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAcc-XYZ and timeGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcc-XYZ and timeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccJerk-XYZ and timeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccMag, timeGravityAccMag, timeBodyAccJerkMag, timeBodyGyroMag, timeBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAcc-XYZ, frequencyBodyAccJerk-XYZ, frequencyBodyGyro-XYZ, frequencyBodyAccJerkMag, frequencyBodyGyroMag, frequencyBodyGyroJerkMag.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

timeBodyAcc-XYZ
timeGravityAcc-XYZ
timeBodyAccJerk-XYZ
timeBodyGyro-XYZ
timeBodyGyroJerk-XYZ
timeBodyAccMag
timeGravityAccMag
timeBodyAccJerkMag
timeBodyGyroMag
timeBodyGyroJerkMag
frequencyBodyAcc-XYZ
frequencyBodyAccJerk-XYZ
frequencyBodyGyro-XYZ
frequencyBodyAccMag
frequencyBodyAccJerkMag
frequencyBodyGyroMag
frequencyBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Data Columns:  
Subject - Subject IDs from 1 to 30   
Activity - "LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS" 
timeBodyAcc-mean()-X           
timeBodyAcc-mean()-Y            
timeBodyAcc-mean()-Z            
timeGravityAcc-mean()-X        
timeGravityAcc-mean()-Y         
timeGravityAcc-mean()-Z         
timeBodyAccJerk-mean()-X       
timeBodyAccJerk-mean()-Y        
timeBodyAccJerk-mean()-Z        
timeBodyGyro-mean()-X          
timeBodyGyro-mean()-Y           
timeBodyGyro-mean()-Z           
timeBodyGyroJerk-mean()-X      
timeBodyGyroJerk-mean()-Y       
timeBodyGyroJerk-mean()-Z      
timeBodyAccMag-mean()          
timeGravityAccMag-mean()        
timeBodyAccJerkMag-mean()       
timeBodyGyroMag-mean()         
timeBodyGyroJerkMag-mean()      
frequencyBodyAcc-mean()-X       
frequencyBodyAcc-mean()-Y      
frequencyBodyAcc-mean()-Z       
frequencyBodyAccJerk-mean()-X   
frequencyBodyAccJerk-mean()-Y  
frequencyBodyAccJerk-mean()-Z   
frequencyBodyGyro-mean()-X      
frequencyBodyGyro-mean()-Y     
frequencyBodyGyro-mean()-Z      
frequencyBodyAccMag-mean()        
frequencyBodyAccJerkMag-mean()   
frequencyBodyGyroMag-mean()       
frequencyBodyGyroJerkMag-mean()   
timeBodyAcc-std()-X            
timeBodyAcc-std()-Y             
timeBodyAcc-std()-Z             
timeGravityAcc-std()-X         
timeGravityAcc-std()-Y          
timeGravityAcc-std()-Z          
timeBodyAccJerk-std()-X        
timeBodyAccJerk-std()-Y         
timeBodyAccJerk-std()-Z         
timeBodyGyro-std()-X           
timeBodyGyro-std()-Y            
timeBodyGyro-std()-Z           
timeBodyGyroJerk-std()-X       
timeBodyGyroJerk-std()-Y        
timeBodyGyroJerk-std()-Z       
timeBodyAccMag-std()           
timeGravityAccMag-std()         
timeBodyAccJerkMag-std()        
timeBodyGyroMag-std()          
timeBodyGyroJerkMag-std()       
frequencyBodyAcc-std()-X       
frequencyBodyAcc-std()-Y       
frequencyBodyAcc-std()-Z       
frequencyBodyAccJerk-std()-X    
frequencyBodyAccJerk-std()-Y   
frequencyBodyAccJerk-std()-Z    
frequencyBodyGyro-std()-X       
frequencyBodyGyro-std()-Y      
frequencyBodyGyro-std()-Z       
frequencyBodyAccMag-std()       
frequencyBodyAccJerkMag-std()  
frequencyBodyGyroMag-std()      
frequencyBodyGyroJerkMag-std() 
