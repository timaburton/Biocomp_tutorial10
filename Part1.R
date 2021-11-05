# Assuming UWvMSU_1-22-13.txt is in the cwd
rm(list=ls())

# Read in file
game <- read.table("UWvMSU_1-22-13.txt",header=TRUE,sep="",stringsAsFactors=FALSE)
UWgame <- game[game$team == "UW",]
MSUgame <- game[game$team == "MSU",]

# Create cumulative score
UWgame$score = cumsum(UWgame$score)
MSUgame$score = cumsum(MSUgame$score)

# plot the lines
plot(c(0,UWgame$time,40), c(0,UWgame$score,max(UWgame$score)), xlab="time", ylab="score",type="l", xlim=c(0,40), ylim=c(0,max(c(UWgame$score,MSUgame$score))+3), col="red")
lines(c(0,MSUgame$time,40), c(0,MSUgame$score,max(MSUgame$score)), col="blue")
