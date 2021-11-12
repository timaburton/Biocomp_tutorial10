dt = data.frame(a = c(1:4),
                b = c(5:8),
                c = c(9:12))

for (i in 1:length(dt$a)){
  row = dt[i,]
  print(row)
  
  col.3 = dt$c[i]
  print(col.3)
}

wages = read.csv("wages.csv", stringsAsFactors =  F, header = T)
maleWage = 0
femaleWage = 0
for (i in 1:length(wages$gender)){
  if (wages$gender[i] == 'male'){
    maleWage = maleWage + wages$wage[i]
  } else {
    femaleWage = femaleWage + wages$wage[i]
  }
}
print(maleWage)
print(femaleWage)