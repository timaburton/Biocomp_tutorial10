#Navigate to Working Directory
setwd("C:Desktop/R Studio Projects/Biocomp_tutorial10")

#rename UWvMSU_1-22-12.txt into data.txt
file.rename("UWvMSU_1-22-12.txt","data.txt")

#set up a data table
data<-read.table("data.txt",header=TRUE,sep="\t", stringsAsFactors=FALSE)

#seperate scores by team
UWscores<-data[data$team=="UW",]
MSUscores<-data[data$team=="MSU",]

#create a cumulative score column for each team
cum_scoreUW<-numeric(length(UWscores$score))
for(i in 1:length(UWscores$score)){
  cum_scoreUW[i]<-sum(UWscores$score[1:i])
}

cum_scoreMSU<-numeric(length(MSUscores$score))
for(i in 1:length(MSUscores$score)){
  cum_scoreMSU[i]<-sum(MSUscores$score[1:i])
}

#Assign variables
x1<-UWscores$time
x2<-MSUscores$time
y1<-cum_scoreUW
y2<-cum_scoreMSU

#Create a graphy of time v. score
plot(x1,y1,type='l',col="black", xlab='time',ylab='points scored')
lines(x2,y2,type='l',col="blue")
title(main="UW vs MSU")


##Problem 2
print("Welcome to Guess My Number")
print("Please input a number between 1 and 100")

#Generate random number between 1 and 100
randomnumber<-sample(1:100,1)

##Allow 10 guesses 
#Create a for loop
  #outputs = 'higher', 'lower', or 'correct'
for (i in 1:10) {
  guess<-readline(prompt="Enter a number between 1 and 100")
  if (guess < randomnumber){
    print("Higher")
  } else if (guess > randomnumber){
    print("Lower")
  } else {
    print ("Correct!")
  }
}
