###Marlee Shaffer 
##Exercise 8 

###Part 1
##Generate a plot similar using the data summarized in UWvMSU to show cumulative score throughout the game for University of Wisconsin vs Michigan State University
#Load the data and make it a data frame
data<-read.table("UWvMSU_1-22-13.txt", header = TRUE, sep = "\t")
df<-as.data.frame(data)
#Data frame headers: time, team, score. All data mixed together
#Pull out data for UW and MSU separately
UWscore <-df[df$team == "UW",]
MSUscore <-df[df$team == "MSU",]
#Vectors for UW
UWtime<-UWscore$time
UWcscore<-cumsum(UWscore$score)
#Vectors for MSU
MSUtime<-MSUscore$time
MSUcscore<-cumsum(MSUscore$score)

UWdf<-data.frame(UWtime, UWcscore)
MSUdf<-data.frame(MSUtime, MSUcscore)

#Make plot
library(ggplot2)
ggplot()+geom_line(data = UWdf, aes(x=UWtime, y=UWcscore),color="red")+geom_line(data=MSUdf, aes(x=MSUtime, y=MSUcscore), color = "darkgreen")+ ggtitle("Cumulative Score for UW vs MSU Basketball Game")+ xlab("Time")+ylab("Cumulative Score")

####Part 2 
###Guess my number 

rand<- sample(1:100, 1)

for (i in 1:10){
  print("I'm thinking of a number 1 to 100.", quote=FALSE)
  usernum <- as.integer(readline(prompt = "What is your guess?  "))
  if (i < 10){
    if (usernum > rand) {
      print("Lower", quote=FALSE)
    } else if (usernum < rand){
        print("Higher", quote=FALSE)
    } else {
        print("Correct", quote=FALSE)
      break 
      }
  }
  else {
    if (usernum == rand){
      print("Correct", quote=FALSE)
    }
    else {
      print("Sorry. Thanks for playing.", quote=FALSE)
    }
  }
}

