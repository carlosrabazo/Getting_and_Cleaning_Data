getwd()

# Set Working Directory
workingDirectory <- "/Users/carlosrabazo/Dropbox/COURSERA/03_GETTING_AND_CLEANING_DATA/COURSE_PROJECT/UCI_HAR_Dataset"
setwd(workingDirectory)
getwd()

# Files from Working Directory
featuresFile <- "features.txt"
activityLabelsFile <- "activity_labels.txt"

######################################################################
# Files from ./test
subjectTestFile <- "./test/subject_test.txt"
xTestFile <- "./test/X_test.txt"
yTestFile <- "./test/y_test.txt"
# Files from ./test/Inertial_Signals
bodyAccXTestFile <- "./test/Inertial_Signals/body_acc_x_test.txt"
bodyAccYTestFile <- "./test/Inertial_Signals/body_acc_y_test.txt"
bodyAccZTestFile <- "./test/Inertial_Signals/body_acc_z_test.txt"
bodyGyroXTestFile <- "./test/Inertial_Signals/body_gyro_x_test.txt"
bodyGyroYTestFile <- "./test/Inertial_Signals/body_gyro_y_test.txt"
bodyGyroZTestFile <- "./test/Inertial_Signals/body_gyro_z_test.txt"
totalAccXTestFile <- "./test/Inertial_Signals/total_acc_x_test.txt"
totalAccYTestFile <- "./test/Inertial_Signals/total_acc_y_test.txt"
totalAccZTestFile <- "./test/Inertial_Signals/total_acc_z_test.txt"

# Files from ./train
subjectTrainFile <- "./train/subject_train.txt"
xTrainFile <- "./train/X_train.txt"
yTrainFile <- "./train/y_train.txt"
# Files from ./train/Inertial_Signals
bodyAccXTrainFile <- "./train/Inertial_Signals/body_acc_x_train.txt"
bodyAccYTrainFile <- "./train/Inertial_Signals/body_acc_y_train.txt"
bodyAccZTrainFile <- "./train/Inertial_Signals/body_acc_z_train.txt"
bodyGyroXTrainFile <- "./train/Inertial_Signals/body_gyro_x_train.txt"
bodyGyroYTrainFile <- "./train/Inertial_Signals/body_gyro_y_train.txt"
bodyGyroZTrainFile <- "./train/Inertial_Signals/body_gyro_z_train.txt"
totalAccXTrainFile <- "./train/Inertial_Signals/total_acc_x_train.txt"
totalAccYTrainFile <- "./train/Inertial_Signals/total_acc_y_train.txt"
totalAccZTrainFile <- "./train/Inertial_Signals/total_acc_z_train.txt"

######################################################################
# Load Files from Working Directory
features <- read.table(featuresFile)
activityLabels <- read.table(activityLabelsFile)

# Load Files from ./test
subjectTest <- read.table(subjectTestFile)
xTest <- read.table(xTestFile)
yTest <- read.table(yTestFile)
# Load Files from ./test/Inertial_Signals
bodyAccXTest <- read.table(bodyAccXTestFile)
bodyAccYTest <- read.table(bodyAccYTestFile)
bodyAccZTest <- read.table(bodyAccZTestFile)
bodyGyroXTest <- read.table(bodyGyroXTestFile)
bodyGyroYTest <- read.table(bodyGyroYTestFile)
bodyGyroZTest <- read.table(bodyGyroZTestFile)
totalAccXTest <- read.table(totalAccXTestFile)
totalAccYTest <- read.table(totalAccYTestFile)
totalAccZTest <- read.table(totalAccZTestFile)

# Load Files from ./train
subjectTrain <- read.table(subjectTrainFile)
xTrain <- read.table(xTrainFile)
yTrain <- read.table(yTrainFile)
# Load Files from ./train/Inertial_Signals
bodyAccXTrain <- read.table(bodyAccXTrainFile)
bodyAccYTrain <- read.table(bodyAccYTrainFile)
bodyAccZTrain <- read.table(bodyAccZTrainFile)
bodyGyroXTrain <- read.table(bodyGyroXTrainFile)
bodyGyroYTrain <- read.table(bodyGyroYTrainFile)
bodyGyroZTrain <- read.table(bodyGyroZTrainFile)
totalAccXTrain <- read.table(totalAccXTrainFile)
totalAccYTrain <- read.table(totalAccYTrainFile)
totalAccZTrain <- read.table(totalAccZTrainFile)

######################################################################
library(data.table)

features <- data.table(features)
activityLabels <- data.table(activityLabels)

subjectTest <- data.table(subjectTest)
xTest <- data.table(xTest)
yTest <- data.table(yTest)

subjectTrain <- data.table(subjectTrain)
xTrain <- data.table(xTrain)
yTrain <- data.table(yTrain)


features <- data.frame(lapply(features, as.character), stringsAsFactors=FALSE   
                       
library(dplyr)
finalTestData <- xTest                 
finalTestData[,subject:=subjectTest]
finalTestData[,activity:=yTest]
finalTestData[,test_or_train:="test"]

finalTrainData <- xTrain
finalTrainData[,subject:=subjectTrain]
finalTrainData[,activity:=yTrain]
finalTrainData[,test_or_train:="train"]

write.table(finalTestData, file = "results.txt", row.names = FALSE)
write.table(finalTrainData, file = "results.txt", append = TRUE, row.names = FALSE)
