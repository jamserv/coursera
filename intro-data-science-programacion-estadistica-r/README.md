mi_matriz <- matrix(data = 1:16, nrow = 4, ncol = 4)

apply(X=mi_matriz, MARGIN = 1, FUN = min)
