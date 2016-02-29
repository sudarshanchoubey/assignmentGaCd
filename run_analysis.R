#Read feature names
features <- read.table(
              "./UCI\ HAR\ Dataset/features.txt",
               header = FALSE)
#Read training data
xtrain <- read.table("./UCI\ HAR\ Dataset/train/X_train.txt",
                     header=FALSE)
subjectTrain <- read.table("./UCI\ HAR\ Dataset/train/subject_train.txt",
                           header=FALSE)
ytrain <- read.table("./UCI\ HAR\ Dataset/train/y_train.txt",
                     header=FALSE)
#Read test data
subjectTest <- read.table("./UCI\ HAR\ Dataset/test/subject_test.txt",
                           header=FALSE)
xtest <-  read.table("./UCI\ HAR\ Dataset/test/X_test.txt",
                     header = FALSE)
ytest <- read.table("./UCI\ HAR\ Dataset/test/y_test.txt",
                    header=FALSE)

#Set the names for data frames from features.txt
names(xtrain) <- features$V2
names(xtest) <- features$V2

#Remove names which are not mean or std
NamesRequired <- NamesRequired <- grep("mean()", names(xtrain),fixed=TRUE)
NamesRequired <- c(NamesRequired,grep("std()", names(xtrain),fixed=TRUE))
xtrain <- xtrain[, NamesRequired]
xtest <- xtest[, NamesRequired]

#Add columns for subject data
xtrain$subject <- subjectTrain$V1
xtest$subject <- subjectTest$V1

#Add columns for activity data with Labels
xtrain$Activity <- as.factor(ytrain$V1)
xtrain$Activity <- factor(xtrain$Activity, 
                          levels = activityLabels$V1,
                          labels = activityLabels$V2,
                          ordered = TRUE)
xtest$Activity <-as.factor(ytest$V1)
xtest$Activity <- factor(xtest$Activity,
                         levels = activityLabels$V1,
                         labels = activityLabels$V2,
                         ordered = TRUE)

#Adding additional column to separate test and training data
xtrain$RecordType <- factor(rep("TRAIN", nrow(xtrain)),
                            levels = c("TEST","TRAIN"),
                            labels = c("TEST","TRAIN"),
                            ordered = TRUE)
xtest$RecordType <- factor(rep("TEST", nrow(xtest)),
                            levels = c("TEST","TRAIN"),
                            labels = c("TEST","TRAIN"),
                            ordered = TRUE)

#Merge the test and training datasets
xmerged <- rbind(xtrain, xtest)

#Cleanup names to remove () and add meaningful prefixes
names(xmerged) <- sub("()", "", names(xmerged),fixed=TRUE)
names(xmerged) <- sub("^t", "timeDomain", names(xmerged))
names(xmerged) <- sub("^f", "FFT", names(xmerged))

#Convert subject into factor
xmerged$subject = as.factor(trialxmerged$subject)

#Loop to get the means for required column and assemble new data set

finalDataSet <- xmerged[0,]
for (Subject in levels(xmerged$subject)) {
  for (activity in levels(xmerged$Activity)) {
    
    #Get column means for each subject, activity combo
    means <- colMeans(subset(trialxmerged,
                             subject == Subject & 
                               Activity == activity, 
                             select = 1:66))
    
    tmp <-xmerged[0,1:66]
    
    #Need to take transverse of means to allow rbind
    tmp <-rbind(tmp,t(means))
    tmp[1,"subject"] <- Subject
    tmp[1,"activity"] <- activity
    finalDataSet <- rbind(finalDataSet, tmp)
  }
}

#Loop to add MeanOf as a prefix to all names except subject and Activity
count <- length(names(finalDataSet)) - 2
for (i in 1:count) {
  names(finalDataSet)[i] = paste("MeanOf", names(finalDataSet)[i], sep="")
}

#Write the dataset to a txt file.
write.table(finalDataSet, file = "tidyData.txt")