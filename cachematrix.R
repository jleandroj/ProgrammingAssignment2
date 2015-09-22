## caching the inverse of a matrix:
## matrix inversion is usually a costly computation and there may be some benefit to caching the inverse of a matrix rather than cumpute it repeatedly.
## belo are a pair of function that are used to create a spaecial obeject that stores a matrix and cache it tis ivnerse

## that functios creates a special matrix object that cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        inv<-NULL
        set<-function(y){
                x<<-y
                inv<<-NULL
        }
        get<-functio()x
        setInverse<-function(inverse) inve<<-inverse
        getInverse<-function() inv
        list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}


## the next functio computes the inverse of the special matrix created by makeCacheMatrix above. if the inverse has already been calculated (and the matrix has not changed), then it should retrieve the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv<-x$getInverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        mat<-x$get()
        inv<-solve(mat,...)
        x$setInverse(inv)
}        
        
