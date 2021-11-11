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
par(mar=c(1,1,1,1))
plot(dfMSU$Time,dfMSU$Score, type="l")
lines(dfUW$Time, dfUW$Score)

#"Guess My Number" Game 
#generate a random number between 1:100
read<-function(){
  n<-readline(prompt="Guess:")
  if(!grepl("^[0-9]",n)){
    return(read())
  }
  return(as.integer(n))
}
num<-round(runif(1)*100, digits=0)
guess<-1
PlayTheGame<-function(guess){
  while(guess !=num){
    guess<-read()
    if(guess<num){
      print("Higher")
    } else if (guess>num){
      print("Lower")
    }else{
      print("Correct!")
    }
    }
}
