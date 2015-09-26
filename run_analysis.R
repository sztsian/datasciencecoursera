library(plyr)
# download the data file
fileURL <-  "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile = "./UCI_HAR_Dataset.zip", method = "curl")
unzip("UCI_HAR_Dataset.zip")

# read the files
features <- read.table("UCI\ HAR\ Dataset/features.txt", colClasses = c("character"))
activity_labels <- read.table("UCI\ HAR\ Dataset/activity_labels.txt" , col.names = c("ActivityId", "Activity"))
x_train <- read.table("UCI\ HAR\ Dataset/train/X_train.txt")
y_train <- read.table("UCI\ HAR\ Dataset/train/y_train.txt")
subject_train <- read.table("UCI\ HAR\ Dataset/train/subject_train.txt")
x_test <- read.table("UCI\ HAR\ Dataset/test/X_test.txt")
y_test <- read.table("UCI\ HAR\ Dataset/test/y_test.txt")
subject_test <- read.table("UCI\ HAR\ Dataset/test/subject_test.txt")

# 1 Merge
train_data <- cbind(cbind(x_train, subject_train), y_train)
test_data <- cbind(cbind(x_test, subject_test), y_test)
merged_data <- rbind(train_data, test_data)
col_labels <- rbind(rbind(features, c(562, "Subject")), c(563, "ActivityId"))[,2]
names(merged_data) <- col_labels

# 2 Extract mean
mean_data <- merged_data[,grepl("mean|std|Subject|ActivityId", names(merged_data))]

# 3 Activity names
named_data <- join(mean_data,activity_labels, by = "ActivityId", match = "first")

# 4 Rename
names(named_data) <- gsub('^t',"TimeOf",names(named_data))
names(named_data) <- gsub('^f',"FreqOf",names(named_data))

# 5 Output
output <- ddply(named_data, c("Subject","Activity"), numcolwise(mean))
write.table(output, "clean_data.txt", row.name=FALSE)
