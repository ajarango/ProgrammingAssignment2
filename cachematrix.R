## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix will create a cache and return the functions
## Dim x as Matrix in working environment
makeCacheMatrix <- function(x = matrix()){
	
	## set the cache to 'NULL'
	cache <- NULL
	
	## Create a function 'set' in the local environment
	set <- function(y){
		
		## Dim x as y only locally (vba is my only real language sorry for confusion)
		x <<- y 
		
		## Dim cache as NULL only locally
		cache <<- NULL 
		
		## close out inside function (lexical scoping of some kind)
		}
		
	## not sure if I use = or <- here to 'get' the function
	## this calls the value of the matrix
	get = function()x 
		
	## invert and set into the Cache
	SetInverse <- function(inverse) 
		
	## More lexical scoping for use in this section of code
	cache <<- inverse
		
	## call the 'setinverse' from the cache
	GetInverse <- function() cache

	## grab all the functions and make into a list to be used -
	## in the biger environment	
	list(set = set, get = get, SetInverse = SetInverse, GetInverse = GetInverse) 
	}
	
## CacheSolve will calculate the inverse of the matrix created in makeCacheMatrix
## There is a branching dynamic that will select if there is anything in the cache or not
## If statement will function for branching method
## IF in the cache is that if not build it
## I am used to coding pascal notation so if my Camel gets messed up I apologize
## Set function name and use ellipse for passing through variables
cacheSolve <- function (x, ...){
	
	## set 'cache' using name attribute '$' from previous function
	## should be the inverse of the original matrix
	cache = x$GetInverse()
	
	## begin 'If' statement
	## '!' as a logical negation operator
		IF (!is.null(cache)){
		## SHould skip the calculation if it has already been calc'ed
		## add message
		message("Getting Cached Data")
		
		##console.write
		return(cache)
		##Close first side of IF statement
		}
		
		## Build INverse matrix if NULL
		matrix <- x$get()
		
		## console.write
		return(cache)
	## Close CacheSolve 
	}
	

	





}