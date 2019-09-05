#Exercise 1
x<- c(5,1,5,5,1,1,5,3,2,
      3,2,6,4,4,1,2,1,3)
attr(x=x, which ="dim") <-c(3,3,2)
x
attributes(x)

#Exercise2
z<- c(1,2,3,4,1,4,5,6,6,7,3)
airport <- c("RDU","ABE","DTW","GRR","GNV","JFK","SFO")
attr(x=z, which = "Levels") <- airport
attr(x=z, which = "Class") <- "factor"
attributes(z)
