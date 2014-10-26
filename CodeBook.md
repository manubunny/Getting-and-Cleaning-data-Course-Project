#### CodeBook

This code book describes in detail about the data source and variables and steps performed to accompish this project.

##### Description about data source

A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##### Files from "UCI HAR Dataset" used for this project.
"X_test.txt" 

"X_train.txt" 

"y_test.txt"

"y_train.txt"

"subject_test.txt"

"subject_train.txt"

"features.txt"

"activity_labels.txt"

##### Below is the list of activities

 1           walking
 
 2   walkingupstairs
 
 3 walkingdownstairs
 
 4           sitting
 
 5          standing
 
 6            laying

##### Below are column names in tidy data set.
subject 

activity 

tbodyacc-mean-x 

tbodyacc-mean-y 

tbodyacc-mean-z 

tbodyacc-std-x 

tbodyacc-std-y

tbodyacc-std-z 

tgravityacc-mean-x 

tgravityacc-mean-y 

tgravityacc-mean-z 

tgravityacc-std-x

tgravityacc-std-y 

tgravityacc-std-z 

tbodyaccjerk-mean-x 

tbodyaccjerk-mean-y 

tbodyaccjerk-mean-z

tbodyaccjerk-std-x 

tbodyaccjerk-std-y 

tbodyaccjerk-std-z 

tbodygyro-mean-x 

tbodygyro-mean-y

tbodygyro-mean-z 

tbodygyro-std-x 

tbodygyro-std-y 

tbodygyro-std-z

tbodygyrojerk-mean-x

tbodygyrojerk-mean-y 

tbodygyrojerk-mean-z 

tbodygyrojerk-std-x 

tbodygyrojerk-std-y

tbodygyrojerk-std-z 

tbodyaccmag-mean 

tbodyaccmag-std 

tgravityaccmag-mean 

tgravityaccmag-std

tbodyaccjerkmag-mean 

tbodyaccjerkmag-std 

tbodygyromag-mean 

tbodygyromag-std 

tbodygyrojerkmag-mean

tbodygyrojerkmag-std 

fbodyacc-mean-x 

fbodyacc-mean-y 

fbodyacc-mean-z 

fbodyacc-std-x 

fbodyacc-std-y

fbodyacc-std-z 

fbodyaccjerk-mean-x

fbodyaccjerk-mean-y 

fbodyaccjerk-mean-z 

fbodyaccjerk-std-x

fbodyaccjerk-std-y 

fbodyaccjerk-std-z 

fbodygyro-mean-x 

fbodygyro-mean-y 

fbodygyro-mean-z

fbodygyro-std-x 

fbodygyro-std-y 

fbodygyro-std-z 

fbodyaccmag-mean

fbodyaccmag-std

fbodybodyaccjerkmag-mean 

fbodybodyaccjerkmag-std 

fbodybodygyromag-mean 

fbodybodygyromag-std

fbodybodygyrojerkmag-mean 

fbodybodygyrojerkmag-std

##### File in which data is saved aftre cleaning and accomplishing all steps

"final_data.txt"


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
