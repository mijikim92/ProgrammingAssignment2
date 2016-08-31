## Put comments here that give an overall description of what your
## functions do

##creates a special mamtrix to set and get the matrix, and set and get the inverse

makeCacheMatrix <- function(x = matrix()) {
	  inv <- NULL
	set <- function(y){
    		x <<- y
    		inv <<- NULL
		}
  	get <- function() x
   		setinverse <- function(inverse) inv <<- inverse
    		getinverse <- function() inv
    		list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## First checks to see if the inverse has already been calculated, if so, get from the cache, if not, calculate the inverse and set it in the cache for futrue reference

cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'
		inv <- x$getinverse()
		if(!is.null(inv)){
			message("Getting cached data")
			return(inv)
			}
  	data <- x$get()
  	inv <- solve(data)
  	x$setinverse(inv)
  	inv
}
