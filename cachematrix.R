## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function
## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        
        ## set the matrix
        set<-fnction(y){
                x<<-y
                m<<-NULL
        }
        
        ##get the matrix
        get<-function()x
        
        ##set the inverse of the matrix
        setinverse<-function(inverse)m<<-inverse
        
        ##get the inverse of the martix
        getinverse<-function()m
        
        ##return the list
        list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}

## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        m<-x$getinverse()
        
        ## Return the inverse if its already been set
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        
        ##Get the matrix
        data<-x$get()
        
        ##Calculate the inverse
        m<-slove(data,...)%*%data        
        x$setinverse(m)        
        m
}
