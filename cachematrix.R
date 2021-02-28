
##makeCacheMatrix creates a matrix and has a list of function to do the following:
##set values of matrix
##get values of matrix
##set values of inverse matrix 
##get values of inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
      x <<- y
      inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}



## CacheSolve first check if the inverse matrix has been calculated. 
## If yes, it will return the values. If not, it will proceed with calculation.
## After calculation, the values are set in the cache through setinverse function.


cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    if(!is.null(inv)) {
      message("getting cached data")
      return(inv)
    }
    inversematrix <- x$get()
    inv <- solve(inversematrix, ...)
    x$setinverse(inv)
    inv
  
  
          ## Return a matrix that is the inverse of 'x'
}
