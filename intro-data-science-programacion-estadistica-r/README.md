mi_matriz <- matrix(data = 1:16, nrow = 4, ncol = 4)

##aplicar apply a mi_matriz.
##donde : MARGIN = 1(row) - 2(column)
apply(X=mi_matriz, MARGIN = 1, FUN = min)

##consultar los argumentos de la funcion lapply
args(lapply)
