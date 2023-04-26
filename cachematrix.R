## Put comments here that give an overall description of what your
## functions do

## Function to create the matrix that caches its inverse

makeCacheMatrix<-function(x=matrix())  {
  inv<-NULL
  set<-function(y) 
    x<-y
    inv<-NULL
  }
  get<-function() x
  setinv<-function(inverse) inv <<- inverse
  getinv<-function() inv
  list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## This is the function to determine the inverse of the matrix 

cacheSolve<-function(x, ...) {
        inv<-x$getinv()
  if(!is.null(inv)) {
    message("Retrieving cached inverse")
    return(inv)
  }
  mat<-x$get()
  inv<-solve(mat, ...)
  x$setinv(inv)
  inv
}
