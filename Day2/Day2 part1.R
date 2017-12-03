library(readr)
input <- read_delim("~/AdventCode/Day2/input.txt","\t", escape_double = FALSE, col_names = FALSE,trim_ws = TRUE)
sum(apply(input,1,max)-apply(input,1,min))