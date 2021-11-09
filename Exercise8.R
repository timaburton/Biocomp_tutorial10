# Task 1

setwd("/Users/johi/Desktop/Courses/Biocomputing/Biocomp_tutorial10")
data <- read.table(file = "UWvMSU_1-22-13.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)
tail(data)

sum_UW = 0
sum_MSU = 0

UW = 0
MSU = 0

for (i in 1:length(data$team)) {
  if (data$team[i] == "UW") {
    sum_UW = sum_UW + data$score[i]
    UW = c(UW, sum_UW)
  }
  else {
    sum_MSU = sum_MSU + data$score[i]
    MSU = c(MSU, sum_MSU)
  }
}

x_time = 1:length(MSU)
plot(x_time, MSU, type = 'l')
xt = 1:length(UW)
lines(xt, UW)

# Task2
# Guess my number

rand = round(runif(1, 1, 100))

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





