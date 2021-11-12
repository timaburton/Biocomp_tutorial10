### Guessing Number Game ###

## generate random number that the user will try to guess what it is
magicNum = sample(1:100,1, replace = TRUE)

print("Welcome the Guessing Game. You will have 10 chances to guess the number I am thinking of. Are you ready? Here we go.")
guess = readline(prompt ="Please enter your guess: ")

counter = 0

while (counter < 11) {
  if (guess == magicNum){
    print("WOW WEE WOW WOO WOW! You got it right! Congrats!")
    options("show.error.messages" = F)
    stop()
  } else if (guess < magicNum){
    counter = counter + 1
    print(paste0("The number you guessed is lower than the magic number. You have ", 10-counter, " attempts left."))
    guess = readline(prompt="The number you guessed is lower than the magic number. Try again: ")
  } else if (guess > magicNum) {
    counter = counter + 1
    print(paste0("The number you guessed is higher than the magic number. You have ", 10-counter, " attempts left."))
    guess = readline(prompt="Try again: ")
  }
}
print(paste0("Unfortunately, you're out of guesses. The correct number was ", magicNum))
