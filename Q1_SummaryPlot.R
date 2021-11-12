#import the data as a dataframe
data <- read.table(file = "UWvMSU_1-22-13.txt", header = TRUE)

#divide the dataframe into two sets, UW and MSU
data_UW <- data[data$team=="UW",]
data_MS <- data[data$team=="MSU",]

#Create cumulative sum data
cum_UW <- c(data_UW[1,3])
for (i in 1:nrow(data_UW)-1){
  cum_UW <- append(cum_UW,data_UW[i+1,3] + cum_UW[i])
}
cum_MS <- c(data_MS[1,3])
for (i in 1:nrow(data_MS)-1){
  cum_MS <- append(cum_MS,data_MS[i+1,3] + cum_MS[i])
}

#Plot
plot(data_MS$time,cum_MS,type="o", col="blue", xlab = 'time', ylab ='score')
points(data_UW$time,cum_UW,type="o", col="red")
legend("topleft",legend=c("MSU","UW"), col=c("blue","red"),pch=c("o"), lty = 1)

