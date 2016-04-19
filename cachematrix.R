@@ -3,7 +3,23 @@

#set the value of the matrix
#get the value of the matrix
#get the value of the inverse of the matrix
#set the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()){
        m <- NULL
        set <- function(y) {
                x <<- y
                inver <<- NULL
        }
        get <- function() x
        setinversion <- function(solve) m <<- solve
        getinversion <- function() m
        list(set=set, get=get,
             setinversion=setinversion,
             getinversion=getinversion)
}



@@-12,4 +28,13 @@makeCacheMatrix <- function(x=matrix())  {

cacheSolve <- function(x,...){
         ## Return a  matrix that is the inverse of "x"
         m <- x$getinversion
         if(!is.null(m)) {
                message("getting cached data")
                return(m)
         }

         data <- x$get()
         inver <- solve(data, ...)
         x$setinversion(m)
         m
} 
        

