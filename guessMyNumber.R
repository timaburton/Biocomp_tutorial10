#choose the random number
num <- sample(1:100,1)

#Ask for input
attempt <- 1
guess <- strtoi(readline(prompt="Take a guess: "))
while(guess != num & attempt < 10){
  if (guess > num){
    print("lower")
    guess <- strtoi(readline(prompt="Take a guess: "))
    attempt <- attempt + 1
  }
  else if(guess < num){
    print("higher")
    guess <- strtoi(readline(prompt="Take a guess: "))
    attempt <- attempt + 1
  }
}
if(guess == num){
  print('Correct')
}else{
  print('End of guesses')
}