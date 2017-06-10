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

Y ahora puedes usar una variable aleatoria binomial que te dice el número de éxitos en **n** repeticiones de experimentos bernoulli. Esta variable aleatoria la puedes modelar con la función **rbinom()**. No olvides que si **n=1** el experimento que estarás observando es el lanzamiento de una moneda (el caso más simple).

Aplicando este experimento 100.000 veces.

```
resultado <- rbinom(100000,7,0.5)
tail(resultado)
```

Una vez teniendo los resultados de aplicar este experimento 100 000 veces, puedes encontrar cuántos de esos experimentos tuvieron 5 veces o más éxito
```
tail(resultado > 5)
```

Teniendo este vector ahora puedes encontrar la proporción de verdaderos contra falsos sacando la media.
```
mean(resultado >  5)
```
**[1] 0.06247**
