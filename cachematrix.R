## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## initialize the inverse property
    i <- NULL

  ## to set the matrix
    to_set <- function( matrix ) {
            x <<- matrix
            i <<- NULL
    }

  ## to get the matrix
    to_get <- function() {
  ## Return the matrix
    	x
    }

  ## to set the inverse of the matrix
    set_inverse <- function(inverse) {
        i <<- inverse
    }

  ## to get the inverse of the matrix
    get_inverse <- function() {
  ## Return the inverse property
        i
    }

  ## Return a list of the methods
    list(to_set = to_set, to_get = to_get,
         set_inverse = set_inverse,
        get_inverse = get_inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         m <- x$get_inverse()

    ## return the inverse if its already set
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }

    ## to get the matrix from our object
    data <- x$to_get()

    ## calculate the inverse using matrix multiplication
    m <- solve(data) %*% data

    ## to set the inverse to the object
    x$set_inverse(m)

    ## return the matrix
    m
}
