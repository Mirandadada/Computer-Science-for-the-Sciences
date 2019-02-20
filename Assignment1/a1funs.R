distance <- function (v1,v2){ 
  sum <- 0 
  for(i in 1:length(v1)){
    square_of_diff<-(v1[i]-v2[i])^2 
    sum <- sum +(square_of_diff) 
    distance <- sqrt(sum)} 
  distance
} 
#distance is equal to the square root of the sum of each square of the differences in elements of the two vectors


total_distance <- function (matrix_of_points, matrix_of_pairings){
  total<-0
  for (i in 1:nrow(matrix_of_pairings)){
    add<-distance (matrix_of_points[matrix_of_pairings[i,1],],matrix_of_points[matrix_of_pairings[i,2],])
    total<-total+add
  }
  total
}
#total distance is equal to the sum of the distance of each paird pionts


plot_pairs<-function(matrix_of_points,matrix_of_pairings) {
  plot(data,pch=20,xlab="v1",ylab="v2",xlim=c(-3,6),ylim=c(-2,5))
  for(i in 1:nrow(matrix_of_pairings)){
    left<-c(matrix_of_points[matrix_of_pairings[i,1],1],matrix_of_points[matrix_of_pairings[i,2],1]) #one point in each pair
    right<-c(matrix_of_points[matrix_of_pairings[i,1],2],matrix_of_points[matrix_of_pairings[i,2],2]) # the other one point in each pair
   #connect the two points in each pair
    lines(left,right)}
}

random_pairings<-function(number_of_points){  
  n<-number_of_points
  M<-matrix(sample(n),ncol=2,nrow=n/2) #smaple function: the elements in the matrix of pairings are random numbers form 1 to n
  M
} 

improve_pairings <- function(matrix_of_points, matrix_of_pairings) {
  for(i in 1:(nrow(matrix_of_pairings)-1)) { #every pair except the last    
    for(j in (i+1):nrow(matrix_of_pairings)){ #pairs after i 
      A<-c(matrix_of_pairings[i,1])
      B<-c(matrix_of_pairings[i,2])
      C<-c(matrix_of_pairings[j,1])
      D<-c(matrix_of_pairings[j,2])
      
      AB<-distance(matrix_of_points[matrix_of_pairings[i,1],],matrix_of_points[matrix_of_pairings[i,2],])+distance (matrix_of_points[matrix_of_pairings[j,1],],matrix_of_points[matrix_of_pairings[j,2],])
      AC<-distance(matrix_of_points[matrix_of_pairings[i,1],],matrix_of_points[matrix_of_pairings[j,1],])+distance (matrix_of_points[matrix_of_pairings[i,2],],matrix_of_points[matrix_of_pairings[j,2],])
      AD<-distance(matrix_of_points[matrix_of_pairings[i,1],],matrix_of_points[matrix_of_pairings[j,2],])+distance (matrix_of_points[matrix_of_pairings[i,2],],matrix_of_points[matrix_of_pairings[j,1],])
      if (AC<AB) {
        if(AC<AD){#one of the shortest distance situations
        fix<-matrix_of_pairings[i,2]
        matrix_of_pairings[i,2]<-matrix_of_pairings[j,1]
        matrix_of_pairings[j,1]<-fix}}
        if (AC<AB) {
          if(AD<AC){#one of the shortest distance situations
          fix<-matrix_of_pairings[i,2]
          matrix_of_pairings[i,2]<-matrix_of_pairings[j,2]
          matrix_of_pairings[j,2]<-fix}
      }
    }
  }
    matrix_of_pairings #returns to the improved pairing 
}
  

find_pairings<-function(matrix_of_points,tries=1,plot=FALSE){ #tries defaults to 1, plot defaults to FALSE
  smallest<-Inf
  n<-nrow(matrix_of_points)
  i<-0
  for(e in 1:tries){ #"tries" specifies how many random initial pairings to try
    improve<-improve_pairings(matrix_of_points,random_pairings(n)) #imorove the random pairings
    total<-total_distance(matrix_of_points,improve) #total distance of improved pairings
    if(total<smallest){ #compared total distance
      smallest<-total
      plot_pairs(matrix_of_points, improve)
      title(paste("Total distance",smallest)) #title function
      cat("Total distance",smallest,"\n") #the output of total distance
      i<-i+1
    }
    else { 
      smallest
      plot_pairs(matrix_of_points, improve)
      title(paste("Total distance",smallest))
      cat("Total distance",smallest,"\n")
    }
  }
}