## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# 1 If called without arguments, create an empty matrix x and intstantiate the
# inverse matrix to nothing
# 2 The set function requires a matrix as argument and assigns that matrix to x, 
# the inverse of that matrix is yet to be calculated so the inverse is nothing (so far)
# 3 The get function simply returns whatever is currently stored in x
# 4 The set.inverse funtion assigns the_inverse that is provided by the caller to inverse
# 5 The get.inverse simply returns whatever is currently stored in inverse

makeCacheMatrix <- function(x = matrix()) {
      inverse <- NULL
      set <- function(a_new_matrix){
          x <<- a_new_matrix
          inverse <<- NULL
        
          }
      get <- function() x
      set.inverse <- function(the_inverse) inverse <<- the_inverse
      get.inverse <- function() inverse
      list( set = set, 
            get = get, 
            set.inverse = set.inverse,
            get.inverse = get.inverse
      )

}


## Write a short comment describing this function
# 1 get the current value of the inverse of x
# 2 if that is not null (meaning it has a value) then the job is done once it's returned
# 3 if it is null, then the inverse must be calculated, so retrieve the matrix, solve it
#   update the cached matrix and return the inverse

cacheSolve <- function(x, ...) {
      my_inverse <- x$get.inverse()
      if(!is.null(my_inverse)) {
          message("To recalculate this is too tiresome, here, have some good old data ")
          return(my_inverse)
      }else {
          my_matrix <- x$get()
          my_inverse <-solve(my_matrix)
          x$set.inverse(my_inverse)
          my_inverse
        
      }
      
       
}
