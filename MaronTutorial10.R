#Maron Tutorial 10 Assignment 
setwd("~/Desktop/r-novice-inflammation/BioComp/Classwork/Biocomp_tutorial10")

#Generate Graph with Cumulative Score
a<-read.table(file="UWvMSU_1-22-13.txt",header=TRUE, stringsAsFactors = FALSE )
score<-a[order(a$team,a$time),]
#Variables and DF production
UW<-tail(score,23)
MSU<-head(score,27)
a<-cumsum(UW$score)
b<-cumsum(MSU$score)
All<-c(b,a)
df<-data.frame("Team"=score$team,"Time"=score$time, "Score"=All)
dfMSU<-head(df,27)
dfUW<-tail(df,23)
#Plot 
plot(dfMSU$Time,dfMSU$Score, type="l")
lines(dfUW$Time, dfUW$Score)

#"Guess My Number" Game 
#generate a random number between 1:100
