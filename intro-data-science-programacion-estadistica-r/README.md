## Vectores, Matrices y DataSets

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

rgl es un paquete de gráficos 3D que produce gráficas interactivas en 3D en tiempo real. Permite rotar de forma interactiva, ampliar los gráficos, etc. Ingresa ?rgl en la línea de comandos para conocer un poco más del paquete rgl.

> Es necesario instalar la libreria rgl en mi caso uso ubuntu.
```
sudo apt-get install r-cran-rgl
```
Cargando el dataset iris y asignandole valores a "x", "y" & "z"
```
data("iris")
x <- iris$Sepal.Length
y <- iris$Petal.Length
z <- iris$Sepal.Width
```
Para inicializar la interfaz 3D usa la función open3d()
```
open3d()
```
Ahora puedes utilizar la función plot3d(); ésta funciona de manera similar a la función plot() del sistema base de R:
```
plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width)
```

Al igual que con plot() puedes especificar el tipo de gráfica usando el parámetro type
```
plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width, type="s")
```
> Los tipos soportados son 'p' para puntos, 's' para esferas, 'l' para líneas, 'h' para segmentos de línea con z = 0, y 'n' para nada.
Asimismo, puedes especificar el color usado para graficar a los elementos usando el parámetro col
```
plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width, type="s", col=rainbow(150))
```

**graficar elemento por especie**
```
plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width, type="s", col=as.integer(iris$Species))
```
**cambiar el tamaño del elemento graficado**
```
plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width, type="s", col=as.integer(iris$Species), radius=1.5)
```

## Expresiones regulares.
```
substr("abcdef", 2, 4)
substring("abcdef", 1:6, 1:6)
```
> strsplit is more efficient.

**conocer la longitud de una cadena**
```
substring(texto, 7, 11) <- "Swirl"
nchar(texto)
```
**Cadenas formateadas**.
```
sprintf("El cuadrado de %d es %d", i, i^2)
```
**sustituir caracteres en cadenas**.
```
chartr("o", "a", "¡Hola Mundo!")
```

**Las expresiones regulares o patrones no son más que una especie de comodín o un atajo para referirse a una gran cantidad de cadenas**.
```
patron <- "H(a|ä|ae)ndel"
musicos <- c("Handel","Mendel","Haendel","Händel","Handemore","handel")
grep(patron, musicos)
```
> Esta función toma como argumentos primero un patrón y como segundo argumento un vector de cadenas

Si deseas construir un patrón que además incluya las cadenas "Mendel" y "handel"
```
nuevo_patron <- ".(a|ä|ae|e)ndel"
grep(nuevo_patron, musicos)
```

Otra función que trabaja con expresiones regulares es regexpr()
```
regexpr(patron, musicos)
```

**puedes ver cómo las utiliza R usando ?regexpr**.
```
grep(pattern, x, ignore.case = FALSE, perl = FALSE, value = FALSE,
     fixed = FALSE, useBytes = FALSE, invert = FALSE)

grepl(pattern, x, ignore.case = FALSE, perl = FALSE,
      fixed = FALSE, useBytes = FALSE)

sub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE,
    fixed = FALSE, useBytes = FALSE)

gsub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE,
     fixed = FALSE, useBytes = FALSE)

regexpr(pattern, text, ignore.case = FALSE, perl = FALSE,
        fixed = FALSE, useBytes = FALSE)

gregexpr(pattern, text, ignore.case = FALSE, perl = FALSE,
         fixed = FALSE, useBytes = FALSE)

regexec(pattern, text, ignore.case = FALSE,
        fixed = FALSE, useBytes = FALSE)
```
