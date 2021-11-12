setwd("C:/Users/megan/Biocomp_tutorial10")
#Question 1
data <- read.table(file = 'UWvMSU_1-22-13.txt', header = FALSE, sep = "", na.strings="", stringsAsFactors = FALSE)
msu <- data[data$V2=="MSU",]
uw <- data[data$V2=="UW",]
scoreMSU <- sum(as.numeric(msu$V3))
scoreUW <- sum(as.numeric(uw$V3))

adds <- c()
scoreM <- 0
#creates an array of the score at each time the team scores
for (i in 1:nrow(msu)){
  scoreM <- scoreM + as.numeric(msu[i,3])
  adds <- append(adds,c(scoreM))
}
#adds array to table
msu$V4 <- adds
#creates plot
plot(msu$V1,msu$V4, main="The Score",
     ylab="points", xlab = "time")
lines(msu$V1 , msu$V4, col = "green")

add <- c()
scoreW <-0
#creates an array of the score at each time the team scores
for (j in 1:nrow(uw)){
  scoreW <- scoreW + as.numeric(uw[j,3])
  add <-append(add,c(scoreW))
}
#adds array to table
uw$V4 <- add
lines(uw$V1,uw$V4, col ="red")



#Question 2
rand <- sample(1:100,1)
#reads input
x<- readline("Guess a random number between 1 to 100. You have ten tries: ")
y=1
#while you have not guessed correctly
while (x!=rand){
  #if you guess too many times
  if (y> 10){
    print("You lose")
    break
  }
  #if you guess too low
  if (rand > x){
    print("Too low. Guess again?")
    x<- readline("Guess a random number between 1 to 100? ")
  }
  #if you guess too high
  else {
    print("Too high Guess again?")
    x<- readline("Guess a random number between 1 to 100? ")
  }
  #keeps track of number of tries
  y= y+1
}
print("You got it right!")
print(x)
