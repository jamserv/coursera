## Quiz Week-2

**1. Suppose I define the following function in R**
```
cube <- function(x, n) {
        x^3
}
cube(3)
```
**27**

**2. The following code will produce a warning in R.**
```
x <- 1:10
if(x > 5) {
        x <- 0
}
```
* 'x' is a vector of length 10 and 'if' can only test a single logical statement. 

**3. Consider the following function**
```
f <- function(x) {
        g <- function(y) {
                y + z
        }
        z <- 4
        x + g(x)
}
z <- 10
f(3)
```
**10**

**4. Consider the following expression:**
```
x <- 5
y <- if(x < 3) {
        NA
} else {
        10
}
```
What is the value of 'y' after evaluating this expression?
**10**

**5. Consider the following R function**
```
h <- function(x, y = NULL, d = 3L) {
        z <- cbind(x, d)
        if(!is.null(y))
                z <- z + y
        else
                z <- z + f
        g <- x + y / z
        if(d == 3L)
                return(g)
        g <- g + 10
        g
}
```
Which symbol in the above function is a free variable?
**f**

**6. What is an environment in R?**
* a collection of symbol/value pairs**