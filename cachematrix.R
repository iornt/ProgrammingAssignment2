## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  # assign matrix for further calculate
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  # set inverse matrix
  setmatrix <- function(solve) m <<- solve
  getmatrix <- function() m #get matrix
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getmatrix() # get matrix for further calculation
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }#check if inverse matrix is there
  data <- x$get()
  m <- solve(data, ...)# do the calculate
  x$setmatrix(m)
  m
}
