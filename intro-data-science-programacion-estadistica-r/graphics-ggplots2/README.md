## Graficación con ggplot2.

ggplot2 es un sistema de graficación muy poderoso en R que te provee con gráficos de alto nivel.

> Install package ‘ggplot2’.

En esta práctica trabajarás con el conjunto de datos diamonds del paquete ggplot2, el cual contiene las medidas, información de calidad y precios de casi 54 000 diamantes.

```
data("diamonds")
view(diamonds)
```
* carat representa el peso del diamante
* cut representa la calidad del corte (Fair, Good, Very Good, Premium, Ideal)
* color representa el color del diamante, desde J (el peor) a D (el mejor)
* clarity es una medida de qué tan claro es el diamante (I1 (el peor), SI1, SI2, VS1, VS2, VVS1, VVS2, IF (el mejor)).

**Crear un histograma de los colores**
```
qplot(color, data=diamonds)
```
**Grafica de dispersion**

Leer [Diagrama de dispersión](https://es.wikipedia.org/wiki/Diagrama_de_dispersi%C3%B3n)
```
qplot(carat, price, data=diamonds)
```

![Image of Yaktocat](https://github.com/jamserv/coursera/blob/master/intro-data-science-programacion-estadistica-r/graphics-ggplots2/img/Rplot.png)

Existe cierta correlación para ser exponencial y hay ciertos lugares donde parecen hacerse estrías. Esto puedes tratar de compensarlo haciendo una transformación de las variables; es decir, en lugar de usar los valores lineales, podrías aplicar una transformación logarítmica y entonces estarías graficando los valores logarítmicos contra los valores logarítmicos de  'x' y 'y'
```
qplot(log(carat), log(price), data = diamonds)
```
![Image of Yaktocat](https://github.com/jamserv/coursera/blob/master/intro-data-science-programacion-estadistica-r/graphics-ggplots2/img/2.png)

En ggplot2() puedes mapear alguna categoría que tenga una variable a un atributo estético, en este caso el atributo color de qplot(); por ejemplo, si utilizas diamonds puedes mapear la columna color que te indica el color del diamante a un color distinto en la gráfica. Ingresa qplot(carat, price, data=diamonds, color=color) en la línea de comandos.
```
qplot(carat, price, data = diamonds, color = color)
```
![Image of Yaktocat](https://github.com/jamserv/coursera/blob/master/intro-data-science-programacion-estadistica-r/graphics-ggplots2/img/3.png)

Mapear cada uno de los cortes distintos de los diamantes que tienes a una figura distinta.
```
qplot(carat, price, data = diamonds, shape = cut)
```
![Image of Yaktocat](https://github.com/jamserv/coursera/blob/master/intro-data-science-programacion-estadistica-r/graphics-ggplots2/img/4.png)

El atributo **alpha** de qplot() indica cuántos puntos se necesitan pintar o aparecer en un mismo lugar para que puedas pintar un punto completamente opaco.
```
qplot(carat, price, data = diamonds, alpha = I(1/10))
```
![Image of Yaktocat](https://github.com/jamserv/coursera/blob/master/intro-data-science-programacion-estadistica-r/graphics-ggplots2/img/5.png)

si cambias el **alpha** de un 1/10 a un 1/100 puedes encontrar nuevos patrones que no eran claros cuando usabas un alpha más grande.
```
qplot(carat, price, data = diamonds, alpha = I(1/100))
```
![Image of Yaktocat](https://github.com/jamserv/coursera/blob/master/intro-data-science-programacion-estadistica-r/graphics-ggplots2/img/6.png)

**size**, es un atributo que indica el tamaño, por lo que si usas size=table te pintará los puntos de diferente tamaño.

```
qplot(carat, price, data = diamonds, size = table)
```
![Image of Yaktocat](https://github.com/jamserv/coursera/blob/master/intro-data-science-programacion-estadistica-r/graphics-ggplots2/img/7.png)

El atributo **facets** te permite crear una tabla donde puedes subdividir en grupos. Si quisieras ver cómo se comporta la variable carat contra la variable price y le pides que te haga el **faceting** por color, entonces por cada color de diamante te va graficando el carat contra el price (peso vs precio).

```
qplot(carat, price, data = diamonds, facets = color ~ .)
```
![Image of Yaktocat](https://github.com/jamserv/coursera/blob/master/intro-data-science-programacion-estadistica-r/graphics-ggplots2/img/8.png)

El atributo **geom** de qplot() especifica el tipo de objeto que utilizará para graficar. El valor por defecto es "point" (punto); esto sólo si ’x’ y ‘y’ se encuentran especificados. Si sólo x se encuentra especificado el valor es "histogram" (histograma).
```
qplot(carat, price, data = diamonds, geom = c("point", "smooth"))
```
![Image of Yaktocat](https://github.com/jamserv/coursera/blob/master/intro-data-science-programacion-estadistica-r/graphics-ggplots2/img/9.png)

Un posible valor para **geom** es "smooth", el cual ajusta una curva a los puntos que estas especificando, además de que te dibuja el error estándar de esa curva.

**jitter**,  permite analizar en cajas cómo se están dispersando los puntos, dependiendo de las variables que quieras observar.
```
qplot(color, price/carat, data = diamonds, geom = "jitter")
```
![Image of Yaktocat](https://github.com/jamserv/coursera/blob/master/intro-data-science-programacion-estadistica-r/graphics-ggplots2/img/10.png)

Si usas **geom="boxplot"** te graficará una gráfica de caja, donde puedes observar la distribución de tus datos por la categoría que quieras observar.
```
qplot(color, price/carat, data = diamonds, geom = "boxplot")
```
![Image of Yaktocat](https://github.com/jamserv/coursera/blob/master/intro-data-science-programacion-estadistica-r/graphics-ggplots2/img/11.png)