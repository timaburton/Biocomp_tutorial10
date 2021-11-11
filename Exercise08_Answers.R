### Casey Novak
## Exercise 08 Answers

setwd("~/Desktop/Fall-2021/Biocomputing/Biocomp_tutorial10/")

# Question 1
### Generate line graph depicting cumulative score for each team as a function of time 

# Create data frame with game information
game<-read.table("UWvMSU_1-22-13.txt",sep="\t",header=TRUE,stringsAsFactors=FALSE)

# Create matrix with time and cumulative scores as columns 
## 51 rows to begin at time point 0, three columns so that scores can be added together with increasing time
results<-matrix(0,nrow=51,ncol=3)
# Name columns for time and cumulative team scores
colnames(results)<-c('Time','UW','MSU')

# Add time values to results matrix from the game data frame 
results[,1]<-c(0,game$time)

# For loop to add cumulative scores for each team at each time point to results matrix
for(i in 1:nrow(game)){
  if(game$team[i]=="UW"){
    results[(i+1),2]<-results[i,2]+game[i,3]
    results[(i+1),3]<-results[i,3]
  }else{
    results[(i+1),3]<-results[i,3]+game[i,3]
    results[(i+1),2]<-results[i,2] 
  }
}
# Print matrix with time and cumulative scores
results

# Plot results from game in a line graph with time on x-axis and cumulative score as a function of time for UW on y-axis
plot(results[,1],results[,2],type='l',xlab='Time',ylab='Score')
# Add line for MSU score as a function of time
lines(results[,1],results[,3])



# Question 2

### Guess my number game 
print("Let's play a game called guess my number.")
print("I'm thinking of a number 1-100...")
# Computer generates random number from 1-100
number<-sample(1:100,1)
# Create vector to establish number of guesses allowed, player can continue guessing up to ten times
x<-c(1:10)
# Computer will reply with a message for each guess 
for(i in 1:length(x)){
  #guess <- readline(prompt="Guess:")
  guess <- readline(prompt="Guess:")
  # The computer replies "lower" if the random number is lower than the guess 
  if(number < guess){
    print("Lower")
  }else{
    # Replies "higher" if the random number is higher than the guess 
    if(number > guess){
      print("Higher")
    }else{
      # Replies "correct!" if the guess matches the random number and exits the game
      print("Correct!")
      break
    }
  }
}
 
