#### Exercise 8 - Using control structures in R
### Problem 1 - generate a plot using score-by-score information from "UWvMSU_1-22-13.txt"

## Load data file
scoreInfo<-read.delim("UWvMSU_1-22-13.txt")

## Separate score-by-score data by school
UWscores<-scoreInfo[scoreInfo$team=='UW',]
MSUscores<-scoreInfo[scoreInfo$team=='MSU',]

## Generate a matrix or dataframe with cumulative score for each team whenever either team scores
# Write for loops to sum cumulative scores for each team when they score
cumScoreUW<-numeric(length(UWscores$score))
for(i in 1:length(UWscores$score)){
  cumScoreUW[i]<-sum(UWscores$score[1:i])
}

cumScoreMSU<-numeric(length(MSUscores$score))
for(i in 1:length(MSUscores$score)){
  cumScoreMSU[i]<-sum(MSUscores$score[1:i])
}

## Plot cumulative score for each team as a function of time
x1<-UWscores$time
x2<-MSUscores$time
y1<-cumScoreUW
y2<-cumScoreMSU

plot(x1,y1,type='l',xlab='time',ylab='points scored')
lines(x2,y2)


### Problem 2 - "guess my number game"
## Generate random number between 1 and 100
randomnumber<-sample(1:100,1)
## Allow 10 guesses 
# Write a for loop to loop through guesses with the outputs 'higher', 'lower', or 'correct'.
for (i in 1:10) {
  userGuess<-readline(prompt="Enter guess between 1 and 100: ")
 if (userGuess < randomnumber){
   print("Higher...")
 } else if (userGuess > randomnumber){
   print("Lower...")
 } else {
   print ("Correct!!")
 }
}
