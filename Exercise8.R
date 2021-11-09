# Task 1

setwd("/Users/johi/Desktop/Courses/Biocomputing/Biocomp_tutorial10")
data <- read.table(file = "UWvMSU_1-22-13.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)
tail(data)

sum_UW = 0
sum_MSU = 0

UW = numeric()
MSU = numeric()

for (i in 1:length(data$team)) {
  if (data$team[i] == "UW") {
    sum_UW = sum_UW + data$score[i]
    print("UW")
    print(sum_UW)
    UW[i] = paste(sum_UW)
  }
  else {
    sum_MSU = sum_MSU + data$score[i]
    print("MSU")
    print(sum_MSU)
    MSU[i] = paste(sum_MSU)
  }
}
length(MSU)

plot(x_time, MSU, type = 'l')
