### Biocomputing Exercise08 - Using Control Structures in R

## Generate a score-by-score graph representing the UW v. MSU basketball game
UWvMSU <- read.table("UWvMSU.txt", header=TRUE,stringsAsFactors=FALSE)
UW <- UWvMSU[UWvMSU$team=="UW",]
MSU <- UWvMSU[UWvMSU$team=="MSU",]

# Sum each team's score
UWscoretot <- numeric(length(UW$score))
for(row in 1:length(UW$score)){
  UWscoretot[row] <- sum(UW$score[1:row])
}
MSUscoretot <- numeric(length(MSU$score))
for(row in 1:length(MSU$score)){
  MSUscoretot[row] <- sum(MSU$score[1:row])
}

# Plot each team's scores on the same graph as a function of time
x1 <- UW$time
x2 <- MSU$time
y1 <- UWscoretot
y2 <- MSUscoretot
plot(x1,y1,type="l", lty=2, main="UWvMSU Basketball", xlab = "time (min)", ylab = "score")
lines(x2,y2)

## "Guess My Number" Game

# Generate the game
GuessMyNumber <- function(number) {
  for (i in 1:10){
    guess <- readline(prompt = "Guess a number between 1 and 100: ")
    if (guess > number){
      print("Lower")
    } else if (guess < number){
      print("Higher")
    } else {
      print("Correct!")
      break
    }
  }
}

# Generate a random number and test the game
number <- sample(1:100)
GuessMyNumber(number)
