## Put comments here that give an overall description of what your
## functions do
# makeCacheMatrix: return a list of functions to:
# 1. Set the value of the matrix
# 2. Get the value of the matrix
# 3. Set the value of the inverse
# 4. Get the value of the inverse

## Write a short comment describing this function


#makeCacheMatrix - input :matrix , output:list of functions nested within makeCacheMatrix 
makeCacheMatrix <- function(x = matrix()) {
  # Initialize the inverse matrix to NULL
  invmat <- NULL
  # Matrix setter
  set <- function(y) {
    x <<- y
    invmat <<- NULL
  }
  #matrix getter
  get <- function() x
  
  #inverse matrix setter
  setinverse <- function(inverse) invmat <<- inverse
  
  #inverse matrix getter
  getinverse <- function() invmat
  
  #return a list of functions nested within makeCacheMatrix.
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}




## Write a short comment describing this function
## cacheSolve returns the inverted form of the submitted matrix.
#input : matrix output : inverse of matrix

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  # If the inverse is already calculated, returns it
  inv_mat <- x$getinverse()
  if(!is.null(inv_mat)) {
    message("get the cached inverse matrix data.")
    return(inv_mat)
  }
  
  # The uninversed matrix obtained
  matrix_initial <- x$get()
  
  #Use solve() to invert the initial matrix
  inv_mat <- solve(matrix_intial)
  
  #cache the inverse matrix
  x$setinverse(inv_mat) m <- makeCacheMatrix()
  
  #return the inverse matrix
  inv_mat
}


