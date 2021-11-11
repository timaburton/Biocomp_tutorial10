# Problem 1: Generate a graph using score-by-score info from game in txt file

# Load the score-by-score information
UWvMSU<-read.table(file="UWvMSU_1-22-13.txt",header=TRUE,stringsAsFactors=FALSE)
# Organize score info by school
UW<-UWvMSU[UWvMSU$team=='UW',]
MSU<-UWvMSU[UWvMSU$team=='MSU',]
# Aggregate the score data for each school by the time
totalscoreUW<-numeric(length(UW$score))
for(i in 1:length(UW$score)){
  totalscoreUW[i]<-sum(UW$score[1:i])
}

totalscoreMSU<-numeric(length(MSU$score))
for(i in 1:length(MSU$score)){
  totalscoreMSU[i]<-sum(MSU$score[1:i])
}

# Plot aggregate scores with time as the other variable
time<-UWvMSU[UWvMSU$time=='time']
