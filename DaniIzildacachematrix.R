## Put comments here that give an overall description of what your
## functions do
## The first function is supossed to create a matrix that can cache its inverse
## The second one retrieve the inverse from the cache
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function (z) {
                x <<- z
                inv <<- NULL
        }
        get <- function () x
        setinverse <- function (inverse) inv <<- inverse
        getinverse <- function() inv
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- NULL
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- inverse(data, ...)
        x$setinverse(inv)
        inv
}
