##1. Plot the score UWvMSU
setwd("/Users/lillian/Desktop/Biocomp_tutorial10/")
score <- read.table("UWvMSU_1-22-13.txt", header = TRUE)
MUSscore <- score[score$team == "MSU",]
UWscore <- score[score$team == "UW",]
dfMUS <- data.frame(MUSscore$time, cumsum(MUSscore$score))
dfUW <- data.frame(UWscore$time,cumsum(UWscore$score))

plot(dfMUS,type="l",frame = TRUE, 
     col = "red", xlab = "time", ylab = "cumulative score")
lines(dfUW, col = "blue", type = "l", lty = 2)
legend("topleft", legend=c("MUS", "UW"),
       col=c("red", "blue"), lty = 1:2, cex=0.8)


##2. game “guess my number”.
number <-  sample.int(100,1)
for(i in 1:10){
  guess <- as.numeric(readline(prompt="your guess: "))
  if(number == guess){
    print("correct")
    break
  }else{
    if(number > guess){
      print("higher")
    }else{
      print("lower")
    }
  }
}
