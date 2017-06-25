## Quiz Week-3

**1.**
```
round(mean(iris[which(iris$Species == "virginica"),]$Sepal.Length))
```

**2.**
```
apply(iris[, 1:4], 2, mean)
```
**3.**
```
with(mtcars, tapply(mpg, cyl, mean))
tapply(mtcars$mpg, mtcars$cyl, mean)
sapply(split(mtcars$mpg, mtcars$cyl), mean)
```

**5.**
Execution of 'ls' will suspend at the beginning of the function and you will be in the browser.