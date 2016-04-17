## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()){
        inver <- NULL
        set <- function(y) {
                x <<- y
                inver <<- NULL
        }
        get <- function() x
        setinversion <- function(solve) inver <<- solve
        getinversion <- function() inver
        list(set = set, get = get,
             setinversion = setinversion,
             getinversion = getinversion)
}



## Write a short comment describing this function

cacheSolve <- function(x,...){
         inver <- x$getinversion
         if(!is.null(inver)) {
                message("getting cached data")
                return(inver)
         }

         data <- x$get()
         inver <- solve(data, ...)
         x$setinversion(inver)
         inver
} 
        ## Return a matrix that is the inverse of 'x'

