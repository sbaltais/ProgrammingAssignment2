## Assignment: Caching the Inverse of a Matrix
## version 1:  20 Dec 2014 8:40 EST Australia

## Matrix inversion is usually a costly computation and their may be some benefit to 
## caching the inverse of a matrix rather than compute it repeatedly (there are also alternatives to 
## matrix inversion that we will not discuss here). Your assignment is to write a pair of functions 
## that cache the inverse of a matrix.

## The following functions:

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
##
## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should 
## retrieve the inverse from the cache.

## Computing the inverse of a square matrix will be done with the solve function in R. 
## If X is a square inverte matrix,  solve(X) will return its inverse.


## to initial getMatrix call:  getMatrix <- makeCacheMatrix(y). This returns the inverse matrix to be used
## in the cacheSolve function.


makeCacheMatrix <- function(x = matrix()) {
  ## store the matrix passed by function.
  getMatrix <- x
  
  ## invert the passed matrix using the solve function and return the value.
  return(solve(getMatrix))
  ## getMatrix <- MakeCacheMatrix(y) stores the inversed Matrix for use in cacheSolve.
}


## cacheSolve - takes a variable type matrix and compares it against a cached inverted matrix, if it exists.
## if the matrix variable passed by the function is equal to the 'inverse' of the cached inverted matrix  
## the cached inverted matrix is returned. if they are not the same, the inverse of the passed matrix variable is 
## calculated and returned.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  ## store the variable type matrix passed by the function
  m <- matrix()
  m <- x
  ## save stored matrix in setMatrix
  setMatrix <- m
  print("getmatrix")
  print(getMatrix)
  print("get setMatrix")
  print(setMatrix)
   
  ## if setMatrix  equals getMatrix (the stored inverse of a Matrix) the inverse of SetMatrix is returned.
  if (all.equal(solve(getMatrix),setMatrix) == TRUE)  {
    print("Returning the inverse matrix that is already stored.")
    ## returned cached inverse matrix
    return(getMatrix)
    
  }
  else {
    
    ## the passed variable type matrix doesnt equal the inverse of the cached inverted matrix therefore calculate the 
    ## inverse of matrix passed by the function.
    getMatrix <- solve(setMatrix)
    print("cached inverse matrix not found, returning inverse of matrix.")
    return(getMatrix)
  }
      
}
