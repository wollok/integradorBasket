# Liga de basquet

**Nos piden desarrollar un sistema que pueda representar partidos de básquet. Para ello deberemos definir los siguientes requerimientos.**

### Partido
El partido es un enfrentamiento entre dos equipos, en el que el ganador es aquel que obtiene el mayor puntaje.  Como hay alargues, nunca el partido termina en empate.

Se pide averiguar:
- El equipo ganador del partido
- Saber si una victoria es aplastante, que es cuando la diferencia es de puntos es de más de 20.

### Equipos
Cada equipo representa a su localidad y consta de varios jugadores y un entrenador.El puntaje de un equipo se calcula como la valoración, pero redondeada a un número entero

Se pide saber
- La valoración total de un equipo, que es el promedio de las habilidades de los jugadores y el entrenador.
- Si es un equipo localista, lo cual sucede cuando todos sus integrantes son originarios de la localidad del equipo.

### Jugadores
Definimos a los jugadores, que pueden jugar como tiradores, pasadores o reboteros. De cada jugador se sabe su nombre, y lugar de origen, la altura en centímetros, su porcentaje de eficacia de triples y una serie de talentos, como ser inteligencia, velocidad, manejo de pelota, visión periférica y otros. Además, se sabe si es sucio o no.  

La habilidad de un jugador se calcula según de qué juega.
- Para los tiradores priorizará la capacidad para meter triples. La fórmula base es: eficacia de triples * cantidadDeTalentos + altura /3. Si es sucio el valor se disminuye a la mitad, mientras que si no lo es, se aumenta un 10%.
- En los pasadores, son fundamentales ciertos talentos. Su fórmula base es: (altura * 0.75 + eficacia de triples * 0.25) * cantidad de talentos especiales (son aquellas que su nombre tiene más de 10 caracteres). No importa si es sucio o no.
- En los reboteros se destaca la altura. Su fórmula base es:  altura + eficacia de tripes* 0.25. Si es sucio el valor se disminuye a la mitad, mientras que si no lo es, se aumenta un 10%.

**Cabe aclarar que los jugadores pueden ocupar distintos roles a través del tiempo.**

Se pide:
- Saber si un jugador es crack, que quiere decir que independientemente de su posición en el juego, su habilidad supera 90.
- Hacer que un jugador cambie de posición.

### Entrenadores
Los entrenadores no son todos iguales: como también sucede en ingeniería y tantas otras profesiones, están los que saben y los vendehumo.

De todos ellos se conoce su nombre, la cantidad de torneos ganados y el lugar de origen.

De los entrenadores se puede calcular la habilidad. 
- La habilidad de un entrenador que sabe se calcula como la cantidad de torneos ganados más los años que lleva siendo entrenador.
- La habilidad de los entrenadores vendehumo se calcular a partir de la habilidad de otro entrenador (del cual el vendehumo se copia), pero con un 25% menos. Los vendeHumo no dejan de serlo nunca, pero van cambiando con el tiempo de qué entrenador se copian.

Los entrenadores que saben pueden ir ganando más trofeos con el tiempo.
 
### Puntos creativos
- Crear un nuevo tipo de entrenador, usando super en el método para calcular su habilidad.
- Crear una nueva posición en la que un jugador puede jugar y que todo lo anterior siga funcionando
- Hacer tests que prueben estos últimos casos
 
### Para pensar
Justificar la aplicación del concepto de polimorfismo, buscando casos donde se presente con o sin ella herencia.

