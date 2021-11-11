## Problem 1: Generate a graph using score-by-score info from game in txt file

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
x1<-UW$time
x2<-MSU$time
y1<-totalscoreUW
y2<-totalscoreMSU
plot(x1,y1,type='l',xlab='time',ylab='score')
lines(x2,y2)


## Problem 2:Generate "Guess my number" game

# Generate random number from 1-100
randomnum<-sample(1:100,1)
# Limit to 10 guesses
for (i in 1:10){
  guess<-readline(prompt="Pick a number from 1 to 100")
# Generate output "lower", "higher", and "correct"
if(randomnum<guess){
  print("lower")
  }else if(randomnum>guess){
      print("higher")
        }else
  if(randomnum==guess){
    print("correct!")
  }
}