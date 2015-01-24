
Getting and Cleaning Data Course Project
=========
This is a guide to the steps to a tidy dataset from a series of data originally published in:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. _Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine_. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 

It includes the following files:
----
* "tidydata.txt": the final tidy dataset  
* "run_analysis.R": the script that prepares the final dataset
* "CodeBook.md": the list of variables included in the final tidy dataset 
* "myfeatures.txt": the text file with the new variable names

1. The script should be in the same directory of the original dataset, together with the file "myfeature.txt" that contains the new variable names.

2. Load the libraries dplyr and reshape2

3. Read in training, test, subjects and activities datasets to create one single data set

4. Build up a single data set

5. The variable names are read in as a data frame and two rows added for "subject" and "activity". 

6. All the variable names are added to the complete data set as column names.  

7. A new dataset is created without duplicate variables (that were present in the original data) and selecting only those referring to mean values and standard deviations.  

8. The columns that refer to subjects and their activities, now  with their descriptive names, have been added again. 

9. The column names, that is the list of variables, is written to an external text file so to be easily corrected with a text editor. The editing made explicit the measurements (e.g. the original variable "tBodyAcc-std()-Z" was changed in "tBodyAccelerationStdZ") but no other changes was done, also in case the variable name likely containes mistake as in "fBodyBodyAccJerkMag-std()" that was changed in "fBodyBodyAccelerationJerkMagStd".

10. The data have been reshaped so to have variables mean per activities per subject

11. Lastly the output has been written to the file "tidydata.txt".

# Reshape the data so to have variables mean per activities per subject
# resmelted <- melt(res2, id=c("subject", "activity"))
# rescast <- dcast(resmelted, subject + activity ~ variable, mean)

# write.table(rescast, "tidydata.txt", sep="\t", row.name=FALSE)
# summarise_each(group_by(res2, subject, activity), funs(mean))


