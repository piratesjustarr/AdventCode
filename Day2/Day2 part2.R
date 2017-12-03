Dividor<-function(x,y)
{
  (x/y)%%1==0
}

testResult<-function(input)
{
  divTable<-sapply(input,Dividor,input)
  divIndex=which(apply(X = divTable,1,sum)>1)
  testResult= max(input[divTable[divIndex,]])/min(input[divTable[divIndex,]])
}

library(readr)
input <- read_delim("~/AdventCode/Day2/input.txt","\t", escape_double = FALSE, col_names = FALSE,trim_ws = TRUE)
sum(apply(input,1,testResult),na.rm = TRUE)
