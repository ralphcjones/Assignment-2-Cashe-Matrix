## Put comments here that give an overall description of what your
## The functions uses the get, set, and inverse for results. 


  makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
      x <<- y
      inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set=set,
         get=get,
         setinverse=setinverse,
         getinverse=getinverse)
  }
}

## The below function assumes the matric is invertable. 

}
cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}