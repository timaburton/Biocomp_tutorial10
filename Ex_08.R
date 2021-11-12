## read in table with score data
scores = read.table("UWvMSU_1-22-13.txt", sep = "\t", header = T, stringsAsFactors = F)

## declare all variable to be used
wisconsin = 0
msu = 0

scoreUW = 0
scoreMSU = 0

## set up for loop to run through all rows of scores table
for (i in 1:nrow(scores)){
  ## if team column is UW then put the scores into a new vector
  if(scores$team[i] == "UW"){
    scoreUW [i] = wisconsin + scores$score[i]
    wisconsin = scoreUW[i]
    scoreMSU [i] = msu
  } else{
        scoreMSU [i] = msu + scores$score[i]
        msu = scoreMSU[i]
        scoreUW[i] = wisconsin
  }
}
## plot the functions above
plot(scores$time, wisconsin, 
     main = "UW/MSU Scores vs Time",
     ylab = "Scores",
     xlab = "Time (min)",
     type = "l", 
     col = "red")
grid(NULL,NULL)
lines(scores$time, msu, col="green")
legend("topleft",
       c("UW", "MSU"),
       fill = c("red","green"))


### Guessing Number Game ###

## generate random number that the user will try to guess what it is
magicNum = sample(1:100,1, replace = TRUE)

print("Welcome the Guessing Game. You will have 10 chances to guess the number (1-100) I am thinking of. Are you ready? Here we go.")
counter = 1

while (counter <= 10) {
  guess = readline(prompt ="Please enter your guess: ")
  if (guess == magicNum){
    print("WOW WEE WOW WOO WOW! You got it right! Congrats!")
    options("show.error.messages" = F)
    stop()
  } else if (guess < magicNum){
    print(paste0("The number you guessed is lower than the magic number. You have ", 10-counter, " attempts left."))
    counter = counter + 1  
  } else if (guess > magicNum) {
    print(paste0("The number you guessed is higher than the magic number. You have ", 10-counter, " attempts left."))
    counter = counter + 1
  }
}
