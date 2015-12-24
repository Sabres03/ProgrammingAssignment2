# Takes a matrix as input and caches the inverse

makeCacheMatrix <- function(x = matrix()) {
  # sets m to null
  m <- NULL
  # allows the stored matrix to be changed
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  # retrieves the matrix
  get <- function() x
  
  # sets the inverse of the matrix
  setInv <- function(Inv) m <<- solve(a)
  # retrieves the matrix inverse
  getInv <- function() m
  # creates a list of functions which can be called
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}

# Return a matrix that is the inverse of x

cacheSolve <- function(x, ...) {
  # gets the cached inverse
  m <- x$getInv()
  # checks if m is null, if not retrieves the cached matrix
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  # if m is null, calculates the inverse of the matrix
  data <- x$get()
  m <- solve(x, ...)
  x$setInv(m)
  m
}
