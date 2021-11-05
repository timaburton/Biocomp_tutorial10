# Assuming user only inputs integer values
rm(list=ls())

# Generate random value
num <- sample(1:100, 1)

# loop through 10 guesses
for (i in 1:10) {
  usernum <- strtoi(readline(prompt = "Choose a number: "))
  # check guess
  if (usernum == num) {
    print("Correct") 
    break
  } else if (usernum > num) {
    print("Lower")
  } else if (usernum < num) {
    print("Higher")
  }
}
