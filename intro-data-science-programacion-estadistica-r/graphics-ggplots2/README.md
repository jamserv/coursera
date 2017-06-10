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

