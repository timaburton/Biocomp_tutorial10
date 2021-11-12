#part 1


data <- read.table(file = "UWvMSU_1-22-13.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)

msuSum = 0
uwSum = 0
msuScore = numeric()
uwScore = numeric()

for (i in 1:length(data$team)) {
  if (data$team[i] == "MSU") {
    msuSum = msuSum + data$score[i]
    msuScore = c(msuScore, msuSum)
  }
  else {
    uwSum = uwSum + data$score[i]
    uwScore = c(uwScore, uwSum)
  }
}

for (i in 1:length(data$team)) {
  msuTime = c(data[data$team == "MSU", ]$time)
  uwTime = c(data[data$team == "UW", ]$time)
}

plot(msuTime, msuScore, type = "l", main = "UW vs MSU", ylab = "score", xlab = "time")
lines(uwTime, uwScore, col = "green")

#part 2

number = round(runif(1, 1, 100))
for (i in 1:10) {
  user = strtoi(readline(prompt = "guess: "), base = 0L)
  if (number > user) {
    print("higher")
  }
  else if (number < user) {
    print("lower")
  }
  else {
    print("correct")
    break
  }
}