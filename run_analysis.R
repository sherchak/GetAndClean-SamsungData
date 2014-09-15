feature.name<-read.table('./UCI HAR Dataset/features.txt')

feature.train<-read.table("./UCI HAR Dataset/train/x_train.txt")
activity.train<-read.table("./UCI HAR Dataset/train/y_train.txt")
subject.train<-read.table("./UCI HAR Dataset/train/subject_train.txt")

feature.test<-read.table("./UCI HAR Dataset/test/x_test.txt")
activity.test<-read.table("./UCI HAR Dataset/test/y_test.txt")
subject.test<-read.table("./UCI HAR Dataset/test/subject_test.txt")

##Step 1: Merge test and training data, create one data set

subject<-rbind(subject.train,subject.test)
activity<-rbind(activity.train,activity.test)
feature<-rbind(feature.train,feature.test)

dataset<-cbind(subject,activity,feature)

##Step 2: Extract only mean and standard deviation for all accelerometer and gyroscope data
feature.mean.std<-grepl("^.+(-mean()|-std()).+$",feature.name[,2])
dataset<-cbind(subject,activity,feature[,feature.mean.std])

##Step 3: Change numeric activities into descriptive names

dataset[,2][dataset[,2]==1]<- "WALKING"
dataset[,2][dataset[,2]==2]<- "WALKING_UPSTAIRS"
dataset[,2][dataset[,2]==3]<- "WALKING_DOWNSTAIRS"
dataset[,2][dataset[,2]==4]<- "SITTING"
dataset[,2][dataset[,2]==5]<- "STANDING"
dataset[,2][dataset[,2]==6]<- "LAYING"

##Step 4:Name the dataset
colnames(dataset)<-c("subject","activity",as.character(feature.name[,2][feature.mean.std]))

##Create tidy data with the average of each variable for each activity and each subject.
tidy.data<-list()

for(subject.number in 1:30){
    valid.subject.entries<-as.matrix(subject)==subject.number
    
    for(activity.number in 1:6){        
        valid.activity.entries<-activity==activity.number
        
        if(activity.number==1)
            activity.name="WALKING"
        if(activity.number==2)
            activity.name="WALKING_UPSTAIRS"
        if(activity.number==3)
            activity.name="WALKING_DOWNSTAIRS"
        if(activity.number==4)
            activity.name="SITTING"
        if(activity.number==5)
            activity.name="STANDING"
        if(activity.number==6)
            activity.name="LAYING"
        tidy.data<-rbind(tidy.data,c(subject.number,activity.name,
                    unname(colMeans(dataset[,3:81][valid.activity.entries&valid.subject.entries,]))))
    }
}
colnames(tidy.data)<-c("subject","activity",as.character(feature.name[,2][feature.mean.std]))
write.table(tidy.data, file="./tidyData.txt", row.names=FALSE)

