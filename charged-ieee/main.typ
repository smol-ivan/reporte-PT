#import "@preview/charged-ieee:0.1.4": ieee

#show: ieee.with(
  title: [Optimizacion de portafolios de inversion en criptomonedas mediante algoritmos bioinspirados],
  abstract: [
    The process of scientific writing is often tangled up with the intricacies of typesetting, leading to frustration and wasted time for researchers. In this paper, we introduce Typst, a new typesetting system designed specifically for scientific writing. Typst untangles the typesetting process, allowing researchers to compose papers faster. In a series of experiments we demonstrate that Typst offers several advantages, including faster document creation, simplified syntax, and increased ease-of-use.
  ],
  authors: (
    (
      name: "Ivan Javier Gordillo Solis",
      department: [Ingenieria en Computacion],
      organization: [UAM Cuajimalpa],
      location: [CDMX, Mexico],
      email: "gordillosolis@icloud.com",
    ),
  ),
  index-terms: ("Scientific writing", "Typesetting", "Document creation", "Syntax"),
  bibliography: bibliography("refs.bib"),
  figure-supplement: [Fig.],
)

= Introduction
La optimización de portafolios de inversión constituye una tarea
fundamental dentro del ámbito financiero, ya que busca asignar de manera
eficiente los recursos disponibles entre distintos activos, con el
objetivo de maximizar el rendimiento esperado y minimizar el riesgo
asociado.

En el contexto del mercado de criptomonedas, este problema adquiere una
complejidad adicional debido a su alta volatilidad, sensibilidad a
eventos externos y cambios abruptos en las tendencias de precios. Estas
características dificultan la predicción del comportamiento del mercado
y limitan la efectividad de los métodos tradicionales de optimización.

Ante este panorama, los algoritmos bioinspirados (_estrategias de
búsqueda basadas en procesos naturales_) se presentan como una
alternativa viable para abordar problemas no lineales y de alta
dimensionalidad, caracterizados por un gran número de variables y
restricciones.

Si bien estas metaheurísticas no garantizan alcanzar el óptimo global,
han demostrado ser altamente efectivas en la obtención de soluciones
aproximadas de buena calidad en problemas complejos.

En este trabajo se propone el uso de algoritmos bioinspirados para la
optimización de portafolios de criptomonedas, con el objetivo de
analizar su capacidad para equilibrar la relación riesgo-rendimiento en
un entorno altamente dinámico.

= Criptomonedas

Las criptomonedas son un sistema digital de intercambio descentralizado
(#emph[peer to peer];) en el que la criptografía se utiliza para generar
y transferir valor. Al ser descentralizadas, no existe una autoridad
única que las regule; por ello, en cada transacción se requiere un
mecanismo de verificación.

- Que el monto sea correcto.
- Que el remitente tenga fondos suficientes.
- Evitar el doble gasto de una misma unidad monetaria.

Este proceso de aseguramiento y verificación forma parte de lo que se
conoce como minería.

== Tipos de criptomonedas

El conjunto de criptomonedas más valiosas cambia con el tiempo. En la
Tabla @cripto-comparativa se presentan algunas de las más
representativas.

#figure(table(
  columns: 4,
  table.header([#strong[Bitcoin];], [#strong[Ethereum];], [#strong[Ripple];], [#strong[Litecoin];]),
  table.hline(),
  [Primera criptomoneda digital (2009); registra transacciones en la
    cadena de bloques.],
  [Lanzada en 2015, permite contratos
    inteligentes y aplicaciones descentralizadas.],
  [Red de liquidación
    global en tiempo real para pagos internacionales de bajo
    costo.],
  [Basada en código abierto, con mayor tasa de generación de
    bloques que Bitcoin.],
)) <cripto-comparativa>

Debido a su relevancia histórica y de mercado, Bitcoin se utiliza en
este documento como referencia para explicar de manera general el
fundamento, la creación y el mantenimiento de las criptomonedas.

== Blockchain

La #emph[blockchain] de Bitcoin es, en esencia, un registro público que
almacena todas las transacciones realizadas, además de la creación de
nuevas unidades. La cadena se construye enlazando cada bloque nuevo con
referencias criptográficas a bloques anteriores.

Los componentes principales de un bloque son:

- Un hash de referencia al bloque previo.

- El hash propio del bloque.

- Fecha de creación.

- Información de transacciones incluidas.

= Methods <sec:methods>
#lorem(45)

$ a + b = gamma $ <eq:gamma>

#lorem(80)

#figure(
  placement: none,
  circle(radius: 15pt),
  caption: [A circle representing the Sun.],
) <fig:sun>

In @fig:sun you can see a common representation of the Sun, which is a star that is located at the center of the solar system.

#lorem(120)

#figure(
  caption: [The Planets of the Solar System and Their Average Distance from the Sun],
  placement: top,
  table(
    // Table styling is not mandated by the IEEE. Feel free to adjust these
    // settings and potentially move them into a set rule.
    columns: (6em, auto),
    align: (left, right),
    inset: (x: 8pt, y: 4pt),
    stroke: (x, y) => if y <= 1 { (top: 0.5pt) },
    fill: (x, y) => if y > 0 and calc.rem(y, 2) == 0 { rgb("#efefef") },

    table.header[Planet][Distance (million km)],
    [Mercury], [57.9],
    [Venus], [108.2],
    [Earth], [149.6],
    [Mars], [227.9],
    [Jupiter], [778.6],
    [Saturn], [1,433.5],
    [Uranus], [2,872.5],
    [Neptune], [4,495.1],
  ),
) <tab:planets>

In @tab:planets, you see the planets of the solar system and their average distance from the Sun.
The distances were calculated with @eq:gamma that we presented in @sec:methods.

#lorem(240)

#lorem(240)
