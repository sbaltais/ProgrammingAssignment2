## Assignment: Caching the Inverse of a Matrix

## Matrix inversion is usually a costly computation and their may be some benefit to 
## caching the inverse of a matrix rather than compute it repeatedly (there are also alternatives to 
## matrix inversion that we will not discuss here). Your assignment is to write a pair of functions 
## that cache the inverse of a matrix.

## following functions:

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should 
## retrieve the inverse from the cache.

## Computing the inverse of a square matrix will be done with the solve function in R. 
## For example, if X is a square invertible matrix, then solve(X) returns its inverse.

## to initial getMatrix call:  getMatrix <- makeCacheMatrix(y)


makeCacheMatrix <- function(x = matrix()) {
  ## store the matrix given by function.
  getMatrix <- y
  ## inverse the stored matrix and return it.
  return(solve(getMatrix))
  ## getMatrix <- MakeCacheMatrix(y) stores inverse Matrix
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ## store the matrix given by the function
  m <- matrix()
  m <- x
  ## save stored matrix in setMatrix
  setMatrix <- m
  
  ## if setMatrix doesnt equal getMatrix (the stored inverse of a Matrix) the inverse SetMatrix and return it.
  if (identical(getMatrix,setMatrix) == FALSE) {
    
    ## the stored matrix doesnt equal cached matrix therefore evaluate inverse matrix from stored matrix.
    getMatrix <- solve(setMatrix)
    print("cached inverse matrix not found, processing now")
    return(getMatrix)
  }
  else {
    print("Returning the inverse matrix that is already stored.")
    ## returned cached inverse matrix
    return(getMatrix)
  }
    
}
