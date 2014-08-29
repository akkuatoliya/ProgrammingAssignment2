## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  INV <- NULL
  set <- function(y) {
    x <<- y
    INV <<- NULL
  }
  get <- function() x
  setinv <- function(i) INV <<- i
  getinv <- function() INV
  list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  INV <- x$getinv()
  if(!is.null(INV)) {
    message("getting cached data.")
    return(INV)
  }
  z <- x$get()
  INV <- solve(z)
  x$setinv(INV)
  INV
}
