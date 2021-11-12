print("Welcome to Guess My Number")
print("Please guess a number between 1 and 100")
#input a number from keyboard and assign it to a
a <- scan("")
#generate a random number between 1 and 100
number <- 1:100
b <- sample(x=number,size=1)
#assign guessing time to c
c <- 0
#compare a and b, if a>b and c<10,let user try again,and add 1 to c; if a<b and c<10,let user try again, and add 1 to c
#stop comparing of a and b when a=b or c=10
while(a!=b&&c<=10){
if(a>b){
  print("Higher")
  print("Please try again")
}else if(a<b){
  print("Lower")
  print("Please try again")
}
  c <- c+1
  a <- scan("")
}
#if a=b, print "correct"; if c=10, print "Guessing time is up to 10"
if(a==b){
  print("Correct")
}else{
  print("Guessing time is up to 10")
}