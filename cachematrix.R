## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Initializes the inverse to null
# Defines setters and getters function
# Returns the setters and getters

makeCacheMatrix <- function(m = matrix()) {
  inverse <- NULL
  
  # setters and getters 
  
  set <- function(y) {
    x <<- y                      # different scope with <<-
    inverse <<- NULL             # different scope with <<-
  }
  get <- function() x
  setInverse <- function(inv) inverse <<- inv    # different scope with <<-
  getInverse<- function() inverse
  
  # returns the list of available functions
  list(set = set, 
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

# Gets the inverse of the matrix then checks if it is null
# If it is not null, it get the matrix
# Solve for the inverse
# Set the inverse
# Return the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  cachedInverse <- x$getInverse()                 # gets cached inverse
  if(!is.null(cachedInverse)) {                   # check if it is null
    message("getting cached data")
    return(m)
  }
  data <- x$get()                                 # gets the matrix data
  calculatedInverse <- solve(data, ...)           # computes for the inverse
  x$setInverse(calculatedInverse)                 # sets the cached inverse
  calculatedInverse                               # return the inverse
}
