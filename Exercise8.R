# Task 1

# set the working directory and read the data
setwd("/Users/johi/Desktop/Courses/Biocomputing/Biocomp_tutorial10")
data <- read.table(file = "UWvMSU_1-22-13.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)

# initialize the score cumulative sum variable
sum_UW = 0
sum_MSU = 0

# initialize the empty vectors for the score cumulative sums from each timepoint
UW = 0
MSU = 0

# separate the UW and MSU data (for time purposes)
UW_data = data[data$team == "UW", ]
MSU_data = data[data$team == "MSU", ]

# for loop with if-else statement to search through the whole data table
# cumulative sum of the score for each team is calculated and assigned to a growing vector in each loop
# a time vector for each team is created from the corresponding extracted team data time column where each time point corresponds to the cumulative sum of the score at this point
for (i in 1:length(data$team)) {
  if (data$team[i] == "UW") {
    sum_UW = sum_UW + data$score[i]
    UW = c(UW, sum_UW)
    UW_time = c(0, UW_data$time)
  }
  else {
    sum_MSU = sum_MSU + data$score[i]
    MSU = c(MSU, sum_MSU)
    MSU_time = c(0, MSU_data$time)
  }
}

# plotting the corresponding graphs
plot(MSU_time, MSU, type = "l", main = "UW vs. MSU basketball", xlab = "Time", ylab = "Score", col = "blue")
lines(UW_time, UW, col = "red")
legend("topleft", c("MSU", "UW"), fill = c("blue", "red"))

# Task2
# Guess my number

# generating a random number
rand = round(runif(1, 1, 100))

# for loop to let the user make 10 guesses and give feedback every time using if-else statement
for (i in 1:10) {
  input = strtoi(readline(prompt = "Guess the number: "), base = 0L)
  if (rand < input) {
    print("Try lower.")
  }
  else if (rand > input) {
    print("Try higher.")
  }
  else {
    print("Well done!")
    break
  }
}





