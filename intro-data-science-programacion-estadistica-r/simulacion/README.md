## Simulación.

Usualmente cada distribución tendrá 4 funciones de la forma prefijo + apodo_distribucion. Cada prefijo indica: 

* r - la función para generar números aleatorios
* p - la función de distribución
* d - la función de densidad
* q - la función que te da cuantiles.

> Para obtener una lista completa de las distribuciones disponibles en R, ingresa:

```
help(Distributions)
```

## Problema de simulación.

Supón que quisieras encontrar la probabilidad de tener al menos 5 caras al lanzar 7 veces una moneda justa.
Recuerda que el lanzamiento de una moneda puede ser modelado por una variable aleatoria bernoulli.

Es decir, donde p es la probabilidad de éxito; en este caso que caiga una cara, por lo que 1-p es la probabilidad de fracaso, es decir, que no caiga cara.