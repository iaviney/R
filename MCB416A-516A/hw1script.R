#Check the working directory and make sure the file of interest is in it
getwd()
list.files()

#Input data file as a dataframe and check that the file is correct
hw1data<-read.table("HW1.deepG0.diff.list.csv",sep=",",header=TRUE)
head(hw1data)
tail(hw1data)

#Check the dimensions of the dataframe
cat(dim(hw1data))

#Calculate the mean and median of column 3
cat(mean(hw1data[,3]))
cat(median(hw1data[,3]))

#Calculate the mean and median of column 9
cat(mean(hw1data[,9]))
cat(median(hw1data[,9]))

#Plot a boxplot of columns 2-11 using default parameters
boxplot(hw1data[,2:11])

#Plot a boxplot of columns 2-11 with outlier points omitted
boxplot(hw1data[,2:11],outline=F)

#Plot a line graph given the dataframe subset specifications on assignment #1
names(hw1data)<-c("c1","c2","c3","c4","c5","c6","c7","c8","c9","c10","c11")
sorted<-hw1data[order(hw1data$c2),]
plot(subset(sorted,c2<300&c2>=c3+100)$c2,subset(sorted,c2<300&c2>=c3+100)$c3,type='l')




