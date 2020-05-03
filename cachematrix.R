## Hi! I hope you have a good day! This is my solution
## Thank you already for looking at it :3

# So, in this func i pass the matrix and set/get it
# Then i define setter and getter for inversid matrix
# And after all return a list with first and second matrixes

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    
    #setting the matrix
    set<-function(y){
        x <<- y
        m <<- NULL
    }
    #getting the matrix
    get <- function() { x }
    
    #function for inversing
    setmatrix <- function(solve) { m <<- solve }
    
    #return inversing
    getmatrix <- function() { m }
    
    #return a list with startes and final matrixes
    list(set = set, get = get,
         setmatrix = setmatrix,
         getmatrix = getmatrix)
}


## And this func is checking, if inversed matrix already exists

cacheSolve <- function(x, ...) {
    #looking for an empty parameter
    m <- x$getmatrix()
    
    #if m is not empty (matrix already exists)
    if(!is.null(m)){
        message("getting cached data") 
        # print a message and return a matrix
        m
    }
    
    #else calculate inverse matrix
    start <- x$get() #getting started 
    m <- solve(start, ...) #inversed
    x$setmatrix(m)  #setting finished
    m
        ## Return a matrix that is the inverse of 'x'
}
