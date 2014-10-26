Getting-and-Cleaning-data-Course-Project
========================================

###This repository contains Getting and cleaning data course project submission
####Create one R script named run_analysis.R, which will accomplish below tasks.

1 Merges the training and the test sets to create one data set.

2 Extracts only the measurements on the mean and standard deviation for each measurement.

3 Uses descriptive activity names to name the activities in the data set

4 Appropriately labels the data set with descriptive variable names. 

5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#######Steps required to start this project.

1. Make sure you have required libraries (data.table)loaded prior to run this script.

2. Download and save "UCI HAR Dataset" data in current working directory of R Studio manually.

3. Created new R script in working directory "run_analysis.R".

4. Required text files are read from current working directory in R script.

5. Run "run_analysis.R". A new tidy file will be craeted in working directory named "final_data.txt".

##### Followed below flow to accomplish above:

1. Downloaded and saved "UCI HAR Dataset" data in current working directory of R Studio manually.

2. R script merges training and test sets using rbind() for "X_test","X_train"and "y_test", "y_train" and "subject_test","subject_train".

3.Loaded "feautures.txt" in R object and extracted the names from the data and converted to lower case.

4.Loaded "activity_labels.txt" in R object and extracted the names from the data, 
   converted to lower case and used descriptive activity name to name the activities in the data set.

5. Binded tidy data together using cbind

6. wrote  R object "tidy_data" in "tidy_data.txt" file.

7. script calculates the number of subjects which is 30 and length of activities is 6

8. named subjects and activities using for loop in tidy data and calculated average of each variable for each activity and each subject.
9. wrote final to "final_data.txt" text file.

