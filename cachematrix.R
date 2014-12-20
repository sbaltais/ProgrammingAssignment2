## Assignment: Caching the Inverse of a Matrix
## version 1:  20 Dec 2014 8:40 EST Australia
## Author: S. Baltais

## Matrix inversion is usually a costly computation and their may be some benefit to 
## caching the inverse of a matrix rather than compute it repeatedly (there are also alternatives to 
## matrix inversion that we will not discuss here). Your assignment is to write a pair of functions 
## that cache the inverse of a matrix.

## The following functions:

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse (cached inverse matrix).
##
## cacheSolve: This function computes the inverse of the special matrix 'getMatrix' returned by makeCacheMatrix above. 
##
## If the inverse has already been calculated (and the matrix has not changed), then the cacheSolve function should 
## retrieve the inverse 'getMatrix' from the cache.

## Computing the inverse of a square matrix will be done with the solve function in R. 
## If X is a square inverte matrix,  solve(X) will return its inverse.


## to initiate 'getMatrix' perform the following function.
## 'getMatrix <- makeCacheMatrix(y)'. This returns the inverse matrix to be used in the cacheSolve function.


## to cache a matrix the follwing function must be used. until a new matrix is cached the current matrix will
## be the only matrix to remain in cache. Multiple matrix could be stored but this will require the creation of
## more variables and this will require more memory (cache)

makeCacheMatrix <- function(x = matrix()) {
  ## store the matrix passed by function.
  getMatrix <- x
  
  ## invert the passed matrix using the R 'solve' function and return the value.
  return(solve(getMatrix))
  ## getMatrix <- MakeCacheMatrix(y) stores the inversed Matrix for use in cacheSolve.
}


## cacheSolve - takes a variable type matrix and compares it against the 'cached inverse matrix', if it exists.
## if the matrix variable passed by the function is equal to the 'inverse' of the 'cached inverse matrix'  
## the 'cached inverse matrix' is returned. if they are not the same, the inverse of the passed matrix variable is 
## calculated and returned.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  ## store the variable type matrix passed by the function
  m <- matrix()
  m <- x
  ## save stored matrix in setMatrix
  setMatrix <- m
   
  ## if setMatrix  equals the inverse of getMatrix (the 'cached inverse Matrix') the inverse of 
  ## SetMatrix (getMatrix) is returned.
  if (all.equal(solve(getMatrix),setMatrix) == TRUE)  {
    print("Returning the inverse matrix that has already been cached.")
    ## returned 'cached inverse matrix'
    return(getMatrix)
    
  }
  else {
    
    ## If the passed variable type matrix doesnt equal the 'inverse' of the 'cached inverse matrix' calculate the 
    ## inverse of matrix passed by the function.
    getMatrix <- solve(setMatrix)
    print("cached inverse matrix not found, returning the inverse of matrix you provided.")
    return(getMatrix)
  }
      
}
