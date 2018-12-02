## Put comments here that give an overall description of what your
## functions do
## use a given matrix to produce a special object
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        reverse <- NULL
        set <- function(y) {
                x <<- y
                reverse <<- NULL
        }
        get <- function() x
        setreverse <- function(reverse) reverse <<- reverse
        getreverse <- function() reverse
        list(set = set, get = get,
             setreverse = setreverse,
             getreverse = getreverse)

}


## calculate the reverse, if already calculated, return cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     
         reverse <- x$getreverse()
        if(!is.null(reverse)) {
                message("getting cached data")
                return(reverse)
        }
        data <- x$get()
        reverse <- solve(data, ...)
        x$setreverse(reverse)
       
}
