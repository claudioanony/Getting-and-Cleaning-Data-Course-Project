---
title: "Getting and Cleaning Data Course Project"
author: "Claudio Tubertini"
date: "20 January 2015"
output: text document
-----

This is the list of the variables that are present in "tidydata.txt". They are taken from a dataset originally published in:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. _Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine_. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 

The measurements selected for this database come from the accelerometer and gyroscope 3-axial signals produced by smartphones weared by 30 volunteers while they performed simple actions (listed below as "activities"). 
The variables listed in this codebook are all averages of measurements grouped by each activity and by each subject. In the enclosed file "README.md" you will find details on the transformations that were performed on the data. The original dataset contained duplicated variables that have not been retained. The list of the variables was manually edited making explicit the measurements (e.g. the original variable "tBodyAcc-std()-Z" has been changed in "tBodyAccelerationStdZ") but no other changes has been done, also in case the variable name likely containes mistake as in "fBodyBodyAccJerkMag-std()" that has been prudently changed in "fBodyBodyAccelerationJerkMagStd".  
NOTE: All variable values, except subject and activities, are normalized and bounded within [-1,1], therefore are unitless.



# CODEBOOK

__subject__ - integer  
  Each integer number, from 1 to 30, identifies a subject who performed the six activities. 

__activity__ - factor w/6   
  Activities performed by all 30 subjects 
  * WALKING
  * WALKING_UPSTAIRS
  * WALKING_DOWNSTAIRS
  * SITTING
  * STANDING
  * LAYING

__tBodyAccelerationMeanX__  - numeric
  The mean value for activity and subject of the mean of X axis acceleration.

__tBodyAccelerationMeanY__  - numeric
  The mean value for activity and subject of the mean of Y axis acceleration.

__tBodyAccelerationMeanZ__  - numeric
  The mean value for activity and subject of the mean of Z axis acceleration.

__tBodyAccelerationStdX__  - numeric
  The mean value for activity and subject of the standard deviation of X axis acceleration.

__tBodyAccelerationStdY__  - numeric
  The mean value for activity and subject of the standard deviation of Y axis acceleration.

__tBodyAccelerationStdZ__  - numeric
  The mean value for activity and subject of the standard deviation of Z axis acceleration.

__tGravityAccelerationMeanX__  - numeric
  The mean value for activity and subject of the mean of X axis gravity acceleration.

__tGravityAccelerationMeanY__  - numeric
  The mean value for activity and subject of the mean Y axis gravity acceleration.

__tGravityAccelerationMeanZ__  - numeric
  The mean value for activity and subject of the mean Z axis gravity acceleration.

__tGravityAccelerationStdX__  - numeric
  The mean value for activity and subject of the standard deviation of X axis gravity acceleration.

__tGravityAccelerationStdY__  - numeric
  The mean value for activity and subject of the standard deviation of Y axis gravity acceleration.

__tGravityAccelerationStdZ__  - numeric
  The mean value for activity and subject of the standard deviation of Z axis gravity acceleration.

__tBodyAccelerationJerkMeanX__  - numeric
  The mean value for activity and subject of the mean of X axis jerk.

__tBodyAccelerationJerkMeanY__  - numeric
  The mean value for activity and subject of the mean of Y axis jerk.

__tBodyAccelerationJerkMeanZ__  - numeric
  The mean value for activity and subject of the mean of Z axis jerk.

__tBodyAccelerationJerkStdX__  - numeric
  The mean value for activity and subject of the standard deviation of X axis jerk.

__tBodyAccelerationJerkStdY__  - numeric
  The mean value for activity and subject of the standard deviation Y axis jerk.

__tBodyAccelerationJerkStdZ__  - numeric
  The mean value for activity and subject of the standard deviation of Z axis jerk.

__tBodyGyroscopeMeanX__  - numeric
  The mean value for activity and subject of the  mean of X axis angular velocity.

__tBodyGyroscopeMeanY__  - numeric
  The mean value for activity and subject of the  mean Y axis angular velocity.

__tBodyGyroscopeMeanZ__  - numeric
  The mean value for activity and subject of the  mean Z axis angular velocity.

__tBodyGyroscopeStdX__  - numeric
  The mean value for activity and subject of the standard deviation of X axis angular velocity.

__tBodyGyroscopeStdY__  - numeric
  The mean value for activity and subject of the standard deviation of Y axis angular velocity.

__tBodyGyroscopeStdZ__  - numeric
  The mean value for activity and subject of the standard deviation of Z axis angular velocity.

__tBodyGyroscopeJerkMeanX__  - numeric
  The mean value for activity and subject of the mean of X axis angular jerk.

__tBodyGyroscopeJerkMeanY__  - numeric
  The mean value for activity and subject of the mean of Y axis angular jerk.

__tBodyGyroscopeJerkMeanZ__  - numeric
  The mean value for activity and subject of the mean of Z axis angular jerk.

__tBodyGyroscopeJerkStdX__  - numeric
  The mean value for activity and subject of the  standard deviation of X axis angular jerk.

__tBodyGyroscopeJerkStdY__  - numeric
  The mean value for activity and subject of standard deviation of the Y axis angular jerk.

__tBodyGyroscopeJerkStdZ__  - numeric
  The mean value for activity and subject of standard deviation of the Z axis angular jerk.

__tBodyAccelerationMagMean__  - numeric
  The mean value for activity and subject of the mean of acceleration magnitude.

__tBodyAccelerationMagStd__  - numeric
  The mean value for activity and subject of the standard deviation of the acceleration magnitude.

__tGravityAccelerationMagMean__  - numeric
  The mean value for activity and subject of the mean of gravity acceleration magnitude.

__tGravityAccelerationMagStd__  - numeric
  The mean value for activity and subject of the standard deviation of gravity acceleration magnitude.

__tBodyAccelerationJerkMagMean__  - numeric
  The mean value for activity and subject of the mean of jerk magnitude.

__tBodyAccelerationJerkMagStd__  - numeric
  The mean value for activity and subject of the standard deviation of jerk magnitude.

__tBodyGyroscopeMagMean__  - numeric
  The mean value for activity and subject of the mean of angular velocity magnitude.

__tBodyGyroscopeMagStd__  - numeric
  The mean value for activity and subject of the standard deviation of angular velocity magnitude.

__tBodyGyroscopeJerkMagMean__  - numeric
  The mean value for activity and subject of the mean of angular jerk magnitude.

__tBodyGyroscopeJerkMagStd__  - numeric
  The mean value for activity and subject of the standard deviation of angular jerk magnitude.

__fBodyAccelerationMeanX__  - numeric
  The mean value for activity and subject of the mean of the Fast Fourier Transform (FFT) of X axis acceleration.

__fBodyAccelerationMeanY__  - numeric
  The mean value for activity and subject of the mean of the Fast Fourier Transform (FFT) of Y axis acceleration.

__fBodyAccelerationMeanZ__  - numeric
  The mean value for activity and subject of the mean of the Fast Fourier Transform (FFT) of Z axis acceleration.

__fBodyAccelerationStdX__  - numeric
  The mean value for activity and subject of the standard deviation of the Fast Fourier Transform (FFT) of X axis acceleration.

__fBodyAccelerationStdY__  - numeric
  The mean value for activity and subject of the standard deviation of the Fast Fourier Transform (FFT) of Y axis acceleration.

__fBodyAccelerationStdZ__  - numeric
  The mean value for activity and subject of the standard deviation of the Fast Fourier Transform (FFT) of Z axis acceleration.

__fBodyAccelerationJerkMeanX__  - numeric
  The mean value for activity and subject of the mean of the Fast Fourier Transform (FFT) of X axis jerk.

__fBodyAccelerationJerkMeanY__  - numeric
  The mean value for activity and subject of the mean of the Fast Fourier Transform (FFT) of Y axis jerk.

__fBodyAccelerationJerkMeanZ__  - numeric
  The mean value for activity and subject of the mean of the Fast Fourier Transform (FFT) of Z axis jerk.

__fBodyAccelerationJerkStdX__  - numeric
  The mean value for activity and subject of the standard deviation of the Fast Fourier Transform (FFT) of X axis jerk.

__fBodyAccelerationJerkStdY__  - numeric
  The mean value for activity and subject of the standard deviation of the Fast Fourier Transform (FFT) of Y axis jerk.

__fBodyAccelerationJerkStdZ__  - numeric
  The mean value for activity and subject of the standard deviation of the Fast Fourier Transform (FFT) of Z axis jerk.

__fBodyGyroscopeMeanX__  - numeric
  The mean value for activity and subject of the mean of the Fast Fourier Transform (FFT) of X axis angular velocity.

__fBodyGyroscopeMeanY__  - numeric
  The mean value for activity and subject of the mean of the Fast Fourier Transform (FFT) of Y axis angular velocity.

__fBodyGyroscopeMeanZ__  - numeric
  The mean value for activity and subject of the mean of the Fast Fourier Transform (FFT) of Z axis angular velocity.

__fBodyGyroscopeStdX__  - numeric
  The mean value for activity and subject of the standard deviation of the Fast Fourier Transform (FFT) of X axis angular velocity.

__fBodyGyroscopeStdY__  - numeric
  The mean value for activity and subject of the standard deviation of the Fast Fourier Transform (FFT) of Y axis angular velocity.

__fBodyGyroscopeStdZ__  - numeric
  The mean value for activity and subject of the standard deviation of the Fast Fourier Transform (FFT) of Z axis angular velocity.

__fBodyAccelerationMagMean__  - numeric
  The mean value for activity and subject of the mean of the Fast Fourier Transform (FFT) of acceleration magnitude.

__fBodyAccelerationMagStd__  - numeric
  The mean value for activity and subject of the standard deviation of the Fast Fourier Transform (FFT) of acceleration magnitude.

__fBodyBodyAccelerationJerkMagMean__  - numeric
  The mean value for activity and subject of the mean of the Fast Fourier Transform (FFT) of jerk magnitude.

__fBodyBodyAccelerationJerkMagStd__  - numeric
  The mean value for activity and subject of the standard deviation of the Fast Fourier Transform (FFT) of jerk magnitude.

__fBodyBodyGyroscopeMagMean__  - numeric
  The mean value for activity and subject of the mean of the Fast Fourier Transform (FFT) of angular velocity magnitude.

__fBodyBodyGyroscopeMagStd__  - numeric  
  The mean value for activity and subject of the standard deviation of the Fast Fourier Transform (FFT) of angular velocity magnitude.

__fBodyBodyGyroscopeJerkMagMean__  - numeric  
  The mean value for activity and subject of the mean of the Fast Fourier Transform (FFT) of angular jerk magnitude.

__fBodyBodyGyroscopeJerkMagStd__  - numeric  
  The mean value for activity and subject of the standard deviation of the Fast Fourier Transform (FFT) of angular jerk magnitude.

__angle_tBodyAccelerationMean_Gravity__  - numeric  
  The mean value for activity and subject of the angle between mean acceleration and gravity. 

__angle_tBodyAccelerationJerkMean_GravityMean__  - numeric  
  The mean value for activity and subject of the angle between mean of jerk and mean of gravity. 

__angle_tBodyGyroscopeMean_GravityMean__  - numeric  
  The mean value for activity and subject of the angle between mean of angular velocity and mean of gravity. 

__angle_tBodyGyroscopeJerkMean_GravityMean__  - numeric  
  The mean value for activity and subject of the angle between mean of angular jerk and mean of gravity. 

__angle_X_GravityMean__  - numeric  
  The mean value for activity and subject of the angle between mean of gravity and the X axis.  

__angle_Y_GravityMean__  - numeric  
  The mean value for activity and subject of the angle between mean of gravity and the Y axis. 

__angle_Z_GravityMean__  - numeric  
  The mean value for activity and subject of the angle between mean of gravity and the Z axis. 


