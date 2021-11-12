#read the data
table <- read.table(file="UWvMSU_1-22-13.txt",sep="\t",header=TRUE,stringsAsFactors=TRUE)
#get the line number of original data
print("line number of table:")
print(nrow(table))

#define the raw and colum name of the new file
rownames <- c(1:50)
colnames <- c("time","UW","MSU")
#Make a new file to store the score of each team by time
#Input first colum of original data(colum of time in table) into the first colum of new file "score"
score <- matrix(c(table[,1]),nrow=50,ncol=3,byrow=FALSE,dimnames=list(rownames,colnames))

#make start score of each team to be 0
scoreUW <- 0
scoreMSU <- 0
#loop through and calculate the total score of each team in different time point
for(i in 1:nrow(table)){
  schoolScore <- table[i,3]
  schoolName <- table[i,2]
  if(schoolName=="UW"){
    scoreUW <- scoreUW+schoolScore
  }else{
    scoreMSU <- scoreMSU+schoolScore
  }
  score[i,2] <- scoreUW
  score[i,3] <- scoreMSU
}
print(score)
#creating a graph to depict the score of two school in different time point
time <- score[,1]
UW <- score[,2]
MSU <- score[,3]
#depict the score of UW
#give name to x and y axis as "time" and "score" in graph
#give range to x and y axis in graph
plot(time,UW,type="l",col="black",axes=FALSE,frame.plot=TRUE,xlab="time",ylab="score",xlim=c(0,40),ylim=c(0,50))
#depict the score of MSU
lines(time,MSU,type="l",col="blue")
#label the x and y axis
axis(side=1,at=c(5,15,25,35),labels=c("1st","2nd","3rd","4th"))
axis(side=4,at=c(0,10,20,30,40,50),labels=c("0","10","20","30","40","50"))
#add straight lines to graph
abline(h = c(10,20,30,40,50), v = c(10,20,30,40,50),col="grey")
#add title name to graph
title(main="UW vs MSU")