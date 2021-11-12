#Question 1
#Read the table of scores
Scores<-read.table(file="UWvMSU_1-22-13.txt",header=TRUE,stringsAsFactors = FALSE)
GameSummary<-data.frame(matrix(ncol=3, nrow =50))
x<-c("time","UWscore", "MSUscore")
colnames(GameSummary)=x
GameSummary$time=Scores$time
sumMSU<-0
sumUW<-0
for (i in 1:nrow(Scores)) {
  if(Scores[i,2]=="UW"){
    sumUW<-sumUW+Scores$score[i]
    GameSummary[i,2]=sumUW
    GameSummary[i,3]=sumMSU
  }else if(Scores[i,2]=="MSU"){
    sumMSU<-sumMSU+Scores$score[i]
    GameSummary[i,2]=sumUW
    GameSummary[i,3]=sumMSU
   }
}
x<-GameSummary$time
y<-GameSummary$UWscore
z<-GameSummary$MSUscore
plot(x,y, type = 'l', col= "Red", xlab = "Time", ylab = "Score", main = "Game Summary")
lines(x,z, type = 'l', col= "Green")

#Question 2
w<-sample(1:100,1)
for (i in 1:10) {
  print("Guess My Number:")
  t<-strtoi(readline())
  if(w>t){
    print("Higher")
  }else if(w<t){
  print("Lower")
  }else if(w==t){
  print("Correct!")
    break
    }
}

