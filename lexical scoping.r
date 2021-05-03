makeCacheMatrix <- function(k = matrix()) {
  n <- NULL
  set <- function(y){
    k <<- y
    n <<- NULL
  }
  get <- function()k
  setInverse <- function(inverse) n <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}



cacheSolve <- function(k, ...) {
  ## Returns a matrix that is the inverse of 'k' matrix
  j <- k$getInverse()
  if(!is.null(n)){
    message("getting cached data")
    return(j)
  }
  mat <- k$get()
  n <- solve(mat,...)
  k$setInverse(n)
  n
}