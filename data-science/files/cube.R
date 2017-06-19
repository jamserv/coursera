cube <- function(x, n) {
        x ^ 3
}

advert <- function() {
        x < 1:10
        if(x > 5) {
                x <- 0
        }
        x
}

f <- function(x) {
        g <- function(y) {
                y + z
        }
        z <- 4
        x + g(x)
}