#####1. Merges the training and the test sets to create one data set.

tmp1<-read.table("./UCI HAR Dataset/test/X_test.txt")
tmp2<-read.table("./UCI HAR Dataset/train/X_train.txt")
X<-rbind(tmp1,tmp2)

tmp1<-read.table("./UCI HAR Dataset/test/subject_test.txt")
tmp2<-read.table("./UCI HAR Dataset/train/subject_train.txt")
subject<-rbind(tmp1,tmp2)

tmp1<-read.table("./UCI HAR Dataset/test/y_test.txt")
tmp2<-read.table("./UCI HAR Dataset/train/y_train.txt")
y<-rbind(tmp1,tmp2)

####2.Extracts only the measurements on the mean and standard deviation for each measurement. 

features<-read.table("./UCI HAR Dataset/features.txt")
wanted_features<-grep("-mean\\(\\)|-std\\(\\)",features[,2])
X<-X[, wanted_features]
names(X)<-features[wanted_features,2]
names(X)<-gsub("\\(|\\)","",names(X))
names(X)<-tolower(names(X))

####3. Uses descriptive activity names to name the activities in the data set
activityLBL <-read.table("./UCI HAR Dataset/activity_labels.txt")
activityLBL[,2]=gsub("_","",tolower(as.character(activityLBL[,2])))
y[,1]=activityLBL[y[,1],2]
names(y)<-"activity"

####4. Appropriately labels the data set with descriptive variable names.

names(subject)<-"subject"
tidy_data<-cbind(subject,y,X)
write.table(tidy_data,"tidy_data.txt")

#####5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

uniqueSubjects = unique(subject)[,1]
lenSubjects = length(unique(subject)[,1])
lenActivities = length(unique(activityLBL)[,1])
lenCols=dim(tidy_data)[2]
final = tidy_data[1:(lenSubjects*lenActivities),]


nrow=1
for(s in 1:lenSubjects){
  for(a in 1:lenActivities){
    final[nrow,1]=uniqueSubjects[s]
    final[nrow,2]=activityLBL[a,2]
    tmp<-tidy_data[tidy_data$subject == s & tidy_data$activity == activityLBL[a,2],]
    final[nrow, 3:lenCols] <-colMeans(tmp[,3:lenCols])
    nrow=nrow+1
  }
}

write.table(final,"final_data.txt")


