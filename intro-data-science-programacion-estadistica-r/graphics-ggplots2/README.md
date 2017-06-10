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