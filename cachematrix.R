## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
  set <- function (y) {
    x <<- y
    inv <<- NULL
  }
  get <- function () x
  setinv <- function (inverse) inv <<- inverse
  getinv <- function() inv
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
}

#######################################################Checking the functions##############################################################
a <- matrix(rnorm(25),5,5)
a1 <- makeCacheMatrix(a)
cacheSolve(a1)

##########################################################Result###########################################################################
cacheSolve(a1)
            [,1]        [,2]        [,3]       [,4]       [,5]
[1,]  0.22989227 -0.11832864  0.08604325  0.4893928 -1.4457342
[2,] -0.04112559 -0.03886854 -0.05934408  0.6656763 -0.3926284
[3,]  0.05959347  0.67068927 -0.45830603  0.2385935 -0.4220991
[4,]  0.33372653 -0.48644039  0.29055490 -0.1737969  0.6870788
[5,] -0.05700486 -1.19919133  0.23808958 -1.0180949  1.3604250
