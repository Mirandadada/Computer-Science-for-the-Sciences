source("a1funs.R")


data <- as.matrix(read.table("http://www.cs.utoronto.ca/~radford/csc120/a1data.txt"))
set.seed(28)
find_pairings(data,tries=10,plot=TRUE) 