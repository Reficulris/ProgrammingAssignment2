## Functions for calculating the inverse of a matrix (cached)

## Using cached results for the inverse rather than calculating repeatedly.

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
                m <<- y
                inv <<- NULL
        }
        get <- function() m
}


## This function checks for an inverse, if not, calculates it and prints it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        if (is.null(inv)) inv <<- solve(m) %*% m
        inv 
        }
list(set = set, get = get, cacheSolve = cacheSolve)
}
