## This function creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL  # Initialize the inverse as NULL

    # Function to set the matrix
    set <- function(y) {
        x <<- y
        inv <<- NULL  # Reset the inverse cache when a new matrix is set
    }

    # Function to get the matrix
    get <- function() x

    # Function to set the inverse
    setInverse <- function(inverse) inv <<- inverse

    # Function to get the inverse
    getInverse <- function() inv

    # Return a list of the functions
    list(set = set, get = get, 
         setInverse = setInverse, 
         getInverse = getInverse)
}
