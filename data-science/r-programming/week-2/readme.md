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