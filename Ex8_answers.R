##Tutorial 10 problem 1
#insert uwvmsu into table

bballdata<-read.table(file = "UWvMSU_1-22-13.txt", header = TRUE, stringsAsFactors = FALSE)
scores<-data.frame(matrix(ncol = 3, nrow = 50))
x<-c("Time","UW score", "MSU score")
##create new data frame with cumulative score for each team
colnames(scores)<-x

scores$Time <- bballdata$time
uwsum = 0
msusum = 0
for(i in 1:nrow(scores)){
  if(bballdata[i,2] == "UW"){
    uwsum = uwsum + bballdata$score[i]
    scores[i,2] <- uwsum
    scores[i,3] <- msusum
  }else if(bballdata[i,2] == "MSU"){
    msusum = msusum + bballdata$score[i]
    scores[i,3] <- msusum
    scores[i,2] <- uwsum
    }
}

plot(scores$Time,scores$`UW score`,type = "l")
lines(scores$Time,scores$`MSU score`)

##Tutorial question 2
#creating a random sampler

x <-sample(1:100,1)
for(i in 1:10){
  print('Guess number:')
  y<-strtoi(readline())
  if(y < x){
   print("Higher")
  }else if(y > x){
    print("Lower")
  }else if (y == x){
    print("Correct!")
    break
  }
}
