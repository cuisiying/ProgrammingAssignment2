## Put comments here that give an overall description of what your
## functions do

## This object is used for operation of the matrix and its inverse matrix with a cache to reduce reputation and enlarge efficiency
## set the value of matrix
## get the value of matrix
## get the value of the inverse of the matrix
## set the value of the inverse of the matrix
## List serves as a cache here.


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
## this function is used to compute the inverse of a matrix by using cache to reduce reputation and enlarge efficiency, 
## It means that the result will be shown directly if it can be found in cache. If not, the function will compute it and save it in cache.

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

