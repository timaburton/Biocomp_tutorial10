##Guess My Number

###A game that allows user to guess a randomly generated number and gives feedback
###for correct and incorrect guesses.

#Generate a random number between 1 and 100

range <- 1:100
randonumber <- sample(range, i)

# Write a for loop that allows a user to guess up to ten times
# Output 'Lower' if guess is greater than random number
# Output 'Higher' if guess is less than random number
# Output 'Correct!' if user guesses random number

for (i in 1:10) {
  guess <- readline(prompt = "Guess:")
  guess <- as.integer(guess)
    if (guess > randonumber){
      print("Lower")
    } else if (guess < randonumber){
      print("Higher")
    } else {
      print("Correct!")
      break
    }
  }