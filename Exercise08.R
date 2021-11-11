### Problem 1 ###

setwd("C:/Users/Julian Najera/OneDrive - Johns Hopkins/Documents/Notre Dame/Semester 1/Introduction to Biocomputing/Biocomp_tutorial10/")

game <- read.table("UWvMSU_1-22-13.txt",header = TRUE,sep = "",stringsAsFactors = FALSE)

## Extract Points Scored for Individual School ##

UW <- game[game$team=="UW",]
MSU <- game[game$team=="MSU",]

## Calculate Cumulative Points Scored for Each School ##

cum_score_UW <-numeric(length(UW$score))
for(i in 1:length(UW$score)){
  cum_score_UW[i]<-sum(UW$score[1:i])
}
cum_score_UW

cum_score_MSU <-numeric(length(MSU$score))
for(i in 1:length(MSU$score)){
  cum_score_MSU[i]<-sum(MSU$score[1:i])
}
cum_score_MSU

# Alternative Approach Using Built-In Cumulative Function

# cum_score_UW <- cumsum(UW$score)
# cum_score_UW

# cum_score_MSU <- cumsum(MSU$score)
# cum_score_MSU

## Plot Scores ##

x1 <- UW$time
x2 <- MSU$time
y1 <- cum_score_UW
y2 <- cum_score_MSU


plot(x1,y1,type="l",main="UW vs. MSU Basketball Score", xlab = "Time (min)", ylab = "Points Scored")
lines(x2,y2)


### Problem 2 ###

## Generate a random number between 1 and 100 ##

guess_my_number <- function(number) {

  for (i in 1:10){
    my.guess <- strtoi(readline(prompt = "Guess a Number Between 1-100: "), base=0L)
    if (my.guess > number){
      print("Lower")
    } else if (my.guess < number){
      print("Higher")
    } else {
      print("Correct!")
      break
    }
  }
}

## Test ##

number <- sample(100,1)

