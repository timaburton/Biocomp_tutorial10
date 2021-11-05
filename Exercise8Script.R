###Marlee Shaffer 
##Exercise 8 

###Part 1
##Generate a plot similar using the data summarized in UWvMSU to show cumulative score throughout the game for University of Wisconsin vs Michigan State University

df<-read.table("UWvMSU_1-22-13.txt", header=TRUE, sep=" ")


####Part 2 
###Guess my number 

rand<- sample(1:100, 1)

for (i in 1:10){
  print("I'm thinking of a number 1 to 100.", quote=FALSE)
  usernum <- as.integer(readline(prompt = "What is your guess?  "))
  if (i < 10){
    if (usernum > rand) {
      print("Lower", quote=FALSE)
    } else if (usernum < rand){
        print("Higher", quote=FALSE)
    } else {
        print("Correct", quote=FALSE)
      break 
      }
  }
  else {
    if (usernum == rand){
      print("Correct", quote=FALSE)
    }
    else {
      print("Sorry. Thanks for playing.", quote=FALSE)
    }
  }
}


