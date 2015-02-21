##STEP 1

##Read in the data files 
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)


##Combine the test data into a single table, and repeat the same for the training data
test <- cbind(subject_test,y_test,x_test)
train <- cbind(subject_train,y_train,x_train)


##Combine the teat and training data into a single table
data <- rbind(test,train)

##STEP 2

##Read the features
features <- read.table("./UCI HAR Dataset/features.txt")

##Extract the columns which have the mean or standard deviation in them
featurecolnum <- grep("-mean\\(\\)|-std\\(\\)", features$V2)


##Select the main data which relates to the mean or standard deviation
subdata <- data[,c(1,2,featurecolnum+2)]


##STEP 3

##Read in activitiy file
labels <- read.table("./UCI HAR Dataset/activity_labels.txt")


##Use the Activities file to assign descriptive activity names to the activities
subdata[,2] <- labels[subdata[,2],2]


##STEP 4

##Create a list containing the names of the columns
subfeatures <- features[featurecolnum,]
featurelabel <- subfeatures$V2
featurelabel2 <- as.vector(featurelabel)
colnames <- c("subject","label",featurelabel2)

##Assign the column names to the data
colnames(subdata) <- colnames


##STEP 5

##Find the means
agg <- aggregate(subdata[,3:ncol(subdata)],by=list(subject=subdata$subject,label=subdata$label),mean)


##Write the result to a file
write.table(format(agg,scientific=TRUE),"TidyData.txt",row.name=FALSE,col.name=TRUE,quote=2)