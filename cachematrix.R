
makeCacheMatrix <- function(x = matrix()) { 
        ## function that returns list containing functions to
        m<-NULL
        
        ## set matrix
        set<-function(y){ 
                x<<-y   ##<<- is used to assign a value to object in other enviroment
                m<<-NULL 
                }
        ## getmatrix
        get<-function() x
        
        ## set inverse matrix
        setmatrix<-function(solve) m<<- solve
        
        ## get inverse matrix
        getmatrix<-function() m
        
        ## list is used as input for cachesolve function
        list(set=set, get=get, setmatrix=setmatrix,getmatrix=getmatrix)
}

cacheSolve <- function(x=matrix(), ...) {
        
        ## returns inverse of the original matrix ipnut to makeCacheMatrix
        m<-x$getmatrix()
        
        ## if the inverse has been already calculated
        if(!is.null(m)){
        ## get it from the cache
                message("getting cached data")
                return(m)
        }
        ## otherwise, calculate
        matrix<-x$get
        m<-solve(matrix, ...)
        x$setmatrix(m)
        m
}