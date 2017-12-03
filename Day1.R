Input="91212129"
Values<-as.numeric(unlist(strsplit(Input,"")))
sum(Values[which(Values==c(Values[-1],head(Values,1)))])
