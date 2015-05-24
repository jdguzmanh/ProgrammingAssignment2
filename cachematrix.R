## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	## assign null to control the variable m/asignar null a la variable m de control
	m <- NULL
	## assign values to the global variables/asignar valores a las variables globales
	set <- function(y){
			x <<-y
			m<<-NULL
	}
	get <- function() {
			x 
	}
	##the inverse matrix to assign the global variable m/asignar la matriz inversa a la variable global m
	setminv <- function(solve){
			m<<- solve
			
	}
	##function returns the inverse matrix calculated / función que retorna la matriz inversa calculada
	getminv <- function() {
			m
			
	}
	list(set = set, get = get, setminv = setminv, getminv = getminv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
	m <-x$getminv()
	## Assesses whether the control variable is null, obtinte not be the inverse of the global variable / Evalúa si la variable de control es nula, de no serlo obtinte la inversa de la variable global
	if(!is.null(m)){
			message("getting cached data")
			return(m)
	}
	## if m is not null computes the inverse matrix / si m no es nulo calcula la inversa de la matriz
	data <-x$get()
	m <- solve(data,...)
	x$setminv(m)
	##returns m / Retorma m
	m
}
