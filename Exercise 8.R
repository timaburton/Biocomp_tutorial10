
#Exercise 8 problem 1

#set working directory
setwd("~/Desktop/Biocomp_tutorial10-main")


GB<-read.table("UWvMSU_1-22-13.txt", header=TRUE,sep="", stringsAsFactors=FALSE)

#Obtain data from UW and MSU

UW<-GB[GB$team=="UW",]
MSU<-GB[GB$team=="MSU",]

#Sum of points

UWsum<-numeric(length(UW$score))
for(i in 1:length(UW$score)){
  UWsum[i]<-sum(UW$score[1:i])
}

MSUsum<-numeric(length(MSU$score))
for(i in 1:length(MSU$score)){
  MSUsum[i]<-sum(MSU$score[1:i])
}

## Generation of Plot ##

x1<-UW$time
x2<-MSU$time
y1<-UWsum
y2<-MSUsum

plot(x1,y1,type="l", xlab="Time", ylab="Points", main="UW vs MSU", col="green")
lines(x2,y2)

#Exercise 8 problem 2

#Generate a random number between 1 and 100

range=sample(1:100, 1)

#Player can guess a number within the range 10 times max

for(i in 1:10){
  A<-readline(prompt = "Input a number between 1 and 100: ")
  if(number<A){
    print("lower")
  }else{
    if(number>A){
      print("higher")
    }else {
      print("correct!")
      break
    }
  }
}

