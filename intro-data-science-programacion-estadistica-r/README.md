mi_matriz <- matrix(data = 1:16, nrow = 4, ncol = 4)

## aplicar apply a mi_matriz
donde : MARGIN = 1(row) - 2(column). <br>
apply(X=mi_matriz, MARGIN = 1, FUN = min)

# consultar los argumentos de la funcion lapply
args(lapply)


mayusculas <- lapply(mi_lista, toupper)

View(asa_datos)

# conocer el tipo de datos cargados en el data-frame
lapply(asa_datos, class)

A la hora de trabajar con factores es importante que conozcas los niveles que los datos pueden tomar

# mira los datos en una columna (description)
asa_datos$Descripcion

Una manera de poder ver todos los niveles aun cuando sean muchos es usando la función unique(). La función unique() elimina duplicados. Ingresa
unique(asa_datos$Descripcion) en la línea de comandos.

# saber el número total de pasajeros nacionales que viajaron en alguno de los aeropuertos pertenecientes a la red ASA
sum(asa_datos$Pasajeros.nacionales)

asa_pasajeros <- asa_datos[,c("Pasajeros.nacionales", "Pasajeros.internacionales")]

lapply(asa_pasajeros, sum)

table(asa_datos$Estado)

tapply(asa_datos$Pasajeros.nacionales, asa_datos$Estado, sum)

# Ahora obtén el promedio o media de pasajeros nacionales que viajaron por mes en cada aeropuerto. Recuerda que para calcular la media puedes usar la función mean().

tapply(asa_datos$Pasajeros.nacionales, asa_datos$Codigo.IATA, mean)

## Comienza viendo las columnas Sepal.Length y Petal.Length. Otra vez especifica un color por especie. Ingresa plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species) en la línea de comandos.

plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species)
