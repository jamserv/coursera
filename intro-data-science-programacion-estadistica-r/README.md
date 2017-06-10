```
mi_matriz <- matrix(data = 1:16, nrow = 4, ncol = 4)
```
**Aplicar apply a mi_matriz**.

donde : MARGIN = 1(row) - 2(column).
```
apply(X=mi_matriz, MARGIN = 1, FUN = min)
```
**Consultar los argumentos de la funcion lapply**.

```
args(lapply)
mayusculas <- lapply(mi_lista, toupper)
View(asa_datos)
```

**conocer el tipo de datos cargados en el data-frame**.
```
lapply(asa_datos, class)
```
> A la hora de trabajar con factores es importante que conozcas los niveles que los datos pueden tomar

**mira los datos en una columna (description)**
```
asa_datos$Descripcion
```

Una manera de poder ver todos los niveles aun cuando sean muchos es usando la función unique(). La función unique() elimina duplicados. Ingresa
unique(asa_datos$Descripcion) en la línea de comandos.

**Total de pasajeros nacionales que viajaron en alguno de los aeropuertos pertenecientes a la red ASA**
```
sum(asa_datos$Pasajeros.nacionales)

asa_pasajeros <- asa_datos[,c("Pasajeros.nacionales", "Pasajeros.internacionales")]

lapply(asa_pasajeros, sum)

table(asa_datos$Estado)

tapply(asa_datos$Pasajeros.nacionales, asa_datos$Estado, sum)
```

**Ahora obtén el promedio o media de pasajeros nacionales que viajaron por mes en cada aeropuerto**
```
tapply(asa_datos$Pasajeros.nacionales, asa_datos$Codigo.IATA, mean)
```
**Comienza viendo las columnas Sepal.Length y Petal.Length.** 
Otra vez especifica un color por especie.
```
plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species)
```
## Parámetros en el Sistema de Gráficos

**Un parámetro importante es el símbolo que se usa para graficar puntos; éstos se cambian usando el parámetro pch.** 
Este parámetro puede recibir valores de dos maneras. 

```
par(pch=15)
plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species, pch="A")
```
> Los códigos numéricos que puedes usar son los números del 0 al 25.
```
plot(1:26, pch=0:25) 
```

En particular a los símbolos del 21 al 25 les puedes cambiar el color de la orilla y el de relleno. Esto se hace usando los parámetros col y bg
```
plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species, pch = 21, bg = "blue")
```
También puedes cambiar el tamaño de los símbolos usando el argumento cex
```
plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species, cex = 2)
```

**La función legend() puede ser usada para añadir leyendas a las gráficas**.
```
legend(x = 4.5, y = 7, legend = levels(iris$Species), col = c(1:3), pch = 16)
```

## Colores en el Sistema de Graficos.

En R puedes especificar colores de tres maneras: 
* como una cadena 
* usando los componentes RGB (rojo, verde, azul)
* haciendo referencia a un índice de la paleta de colores mediante un entero.

> Para obtener la lista de los nombres de colores válidos, usa la función:
```
colors()
```
Para buscar todos los colores que contengan la subcadena "yellow" ingresa:
```
grep("yellow", colors(), value=TRUE)
```

Si requieres un número más grande de colores para graficar, necesitarás acceder a una paleta más grande.
Algunos ejemplos de estas funciones son **rainbow(), heat.colors(), topo.colors(), y terrain.colors()**.
```
paleta_arcoiris <- rainbow(10)
palette(paleta_arcoiris)
plot(1:10, col=1:10, main="Paleta Arcoiris", pch=17, cex=3)
```

Paraespecificar los colores que quieras puedes crear un vector que contenga dichos colores. Por ejemplo, crea el vector:
```
mi_paleta <- c("red", "green", "#0019FFFF")
```
Si deseas regresar a la paleta de colores por defecto debes de ingresar:
```
palette("default")
```

## Creación de Gráficas en 3D.

> This lesson requires the ‘rgl’ package.

