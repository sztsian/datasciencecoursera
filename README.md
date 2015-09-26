# About this repo
This repo is reused from the course "Data science Toolbox" to "Getting and Cleaning Data"

In this repo you can find the **run_analysis.R** for Course Project of [Getting and Cleaning Data](https://class.coursera.org/getdata-032/)

# How to use the script

Simply open an R console and source("run_analysis.R"). This script is written and tested under Fedora 21 thus uses curl as method of download the data. And this script uses plyr library.

# Code Book
Name | Time | Frequency 
-----|------|----------
Body Acceleration | TimeOfBodyAcc-{std(),mean()}-{X,Y,Z} | FreqOfBodyAcc-{std(),mean()}-{X,Y,Z}
Gravity Acceleration | TimeOfGravityAcc-{std(),mean()}-{X,Y,Z} | 
Body Acceleration Jerk | TimeOfBodyAccJerk-{std(),mean()}-{X,Y,Z} | FreqOfBodyAccJerk-{std(),mean()}-{X,Y,Z} 
Body Gyroscope | TimeOfBodyGyro-{std(),mean()}-{X,Y,Z} | FreqOfBodyGyro-{std(),mean()}-{X,Y,Z}
Body Gyroscope Jerk | TimeOfBodyGyroJerk-{std(),mean()}-{X,Y,Z} | 
Body Acceleration Magnitude | TimeOfBodyAccMag-{std(),mean()} | FreqOfBodyAccMag-{std(),mean()}
Gravity Acceleration Magnitude | TimeOfGravityAccMag-{std(),mean()} | 
Body Acceleration Jerk Magnitude | TimeOfBodyAccJerkMag-{std(),mean()} | FreqOfBodyAccJerkMag-{std(),mean()}
Body Gyroscope Magnitude | TimeOfBodyGyroMag-{std(),mean()} | FreqOfBodyGyroMag-{std(),mean()}
Body Gyroscope Jerk Magnitude | TimeOfBodyGyroJerkMag-{std(),mean()} | FreqOfBodyGyroJerkMag-{std(),mean()}


