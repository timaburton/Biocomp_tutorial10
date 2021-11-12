#1. create summary plot from UWvMSU_1-22-13.txt

#setting it to my computer 
setwd("/Users/erinlewis/Desktop/Biocomp_tutorial10/")

#separate both teams points 
game <- read.table("UWvMSU_1-22-13.txt", header = TRUE, sep = "\t")

UW_game<-game[game$team=="UW",]
MSU_game<-game[game$team=="MSU",]

#create two data frames to store each team's output 
UWscores <- data.frame('time' = UW_game$time,
                       'score' = numeric(length(UW_game$score)))

MSUscores <- data.frame('time' = MSU_game$time,
                        'score' = numeric(length(MSU_game$score)))

#create for loops in order to get the cumulative score for the two teams 
sumUW = 0
sumMSU = 0 

for(i in 1:length(UW_game$team)){
  sumUW = sumUW + game$score[i]
  UWscores$score[i] <- sumUW
}

for(i in 1:length(MSU_game$team)){
  sumMSU = sumMSU + game$score[i]
  MSUscores$score[i] <- sumMSU
}

#creating the plot  
plot(UWscores$time, UWscores$score, type = 'l', xlab="Time (min)", ylab="Score", col="red")
lines(MSUscores$time,MSUscores$score, col="green")
