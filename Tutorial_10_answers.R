#set working directory 
setwd("~/Desktop/r-novice-inflammation/Biocomp_tutorial10/")

###### This is my answer for question 1 #####
#generate a graph from UWvMSU.txt 
#read in data
scores <- read.table(file="UWvMSU_1-22-13.txt", header=TRUE)
scores

#need a cumulative score at each time point 
#create a matrix for cumulative score for each time 
#whenever their team scores 
#create a matrix
UW_and_MSUscores <- matrix(data=0, nrow=51, ncol=3) 
colnames(UW_and_MSUscores) <- c("time", "UW", "MSU")

for(i in 1:nrow(scores)){ 
  if(scores$team[i]=="UW"){
    UW_and_MSUscores[(i+1),2] <- UW_and_MSUscores[i,2] + scores[i,3]
    UW_and_MSUscores[(i+1),3] <- UW_and_MSUscores[i,3]
    UW_and_MSUscores[(i+1),1] <- scores[i,1]
  }else{
    UW_and_MSUscores[(i+1),3] <- UW_and_MSUscores[i,3] + scores[i,3]
    UW_and_MSUscores[(i+1),2] <- UW_and_MSUscores[i,2]
    UW_and_MSUscores[(i+1),1] <- scores[i,1]
  }
}

UW_and_MSUscores

#plot: plot(x,7,type'1')
#x and y are vectors, type='1' specifies a line graph 
#can add a second line with lines(x,y)
plot(UW_and_MSUscores[,1], UW_and_MSUscores[,2], type='l', xlab="time", ylab="score")
lines(UW_and_MSUscores[,1], UW_and_MSUscores[,3])



######## This is my answer for number 2 #####
#write "guess my number" game

#generate random number between 1-100
set <- 1:100
sample(set, 1)

#print "lower" if guess is too high 

#print "higher" if guess is too low 

#print "correct" if the guess is right 

#player can guess up to 10 times 

number <- sample(set, 1) 

for(i in 1:10){
  guess <- readline(prompt="Make a guess")
  if(guess > number){
    print("lower")
  }else if(guess < number){
    print("higher")
  }else{
    print("Correct!")
  }
}


