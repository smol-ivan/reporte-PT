#import "template.typ": project
#show: project.with(
  title: "Sample Project Report",
  subtitle: "A sample project on this & that",
  abstract: lorem(50),
  subject: "PROJ-CS881 PROJECT - III",
  guide: (
    name: "Mr. Aurghyadip Kundu",
    designation: "Assistant Professor",
    department: "Information Technology",
  ),
  authors: (
    (
      name: "Jane Doe",
      department: "Computer Science",
      rollno: "123456789",
      regno: "1000000010 of 2021-22",
    ),
  ),
  department: "Department of Information Technology",
  institute: "Calcutta Institute of Engineering and Management",
  address: "24/1A Chandi Ghosh Road, Kolkata - 700040",
)
= Introducción
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

Ante este panorama, los algoritmos bioinspirados ---estrategias de
búsqueda basadas en procesos naturales--- se presentan como una
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

- Verificar que el monto sea correcto.

- Verificar que el remitente tenga fondos suficientes.

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

== Cómo se sustenta el sistema
Para entender el mecanismo de Bitcoin, es necesario describir el rol del
minero. Un minero recolecta transacciones, valida su legitimidad (monto
correcto, fondos suficientes y ausencia de duplicados) y las agrupa como
candidatas a bloque.

Cualquier persona puede participar como minero con el software y una
copia actualizada de la cadena de bloques. En la práctica, la minería se
ha vuelto altamente competitiva por la demanda computacional, lo que
implica hardware especializado y alto consumo energético.

Para que un bloque sea aceptado, deben cumplirse condiciones básicas:

- Todas las transacciones deben ser válidas.

- El hash del bloque debe cumplir la condición de dificultad.

Esa condición se obtiene al aplicar la función hash doble SHA-256 al
bloque candidato. No basta cualquier resultado; el valor debe cumplir un
criterio específico de rareza:

- Estar por debajo de un umbral objetivo.

- Presentar múltiples ceros iniciales en su representación.

Cuando un minero encuentra un hash válido, el bloque se agrega a la
cadena y el resto de la red puede verificarlo. Como incentivo, se otorga
una recompensa en Bitcoin y comisiones de transacción. Además, la
emisión de nuevos bitcoins disminuye de forma programada hasta un máximo
de 21 millones de monedas.

== Volatilidad del mercado
La volatilidad de las criptomonedas, en particular de Bitcoin, suele
relacionarse con la ausencia de un valor fundamental único que funcione
como ancla de precio. En consecuencia, los movimientos se ven
influenciados por el sentimiento del mercado, la especulación y las
narrativas mediáticas, lo cual favorece episodios de burbuja y efecto
rebaño entre inversionistas.

Para dimensionar esta volatilidad, es útil compararla con mercados
tradicionales. La volatilidad anualizada de Bitcoin ha oscilado
históricamente entre 60% y 100%, mientras que índices bursátiles como el
S&P 500 presentan volatilidades típicas de 15% a 20%. Esta diferencia
implica que las fluctuaciones diarias en criptomonedas pueden ser de 5%
a 10%, movimientos que en mercados tradicionales se considerarían
eventos extremos.

Las causas de esta alta volatilidad incluyen:

- #strong[Mercado relativamente pequeño:] menor liquidez comparada con
  mercados tradicionales, lo que amplifica el impacto de transacciones
  grandes.

- #strong[Operación continua:] el mercado opera 24/7, sin pausas que
  permitan asimilar información.

- #strong[Sensibilidad a noticias:] anuncios regulatorios, adopción
  institucional o eventos de seguridad generan reacciones inmediatas.

- #strong[Comportamiento especulativo:] predominio de inversionistas que
  buscan ganancias a corto plazo.

Esta volatilidad extrema tiene implicaciones directas para la
optimización de portafolios. Los métodos tradicionales, que asumen
distribuciones normales de rendimientos, subestiman la frecuencia de
eventos extremos en criptomonedas. Por ello, se requieren enfoques que
consideren las colas pesadas de la distribución y que puedan adaptarse a
cambios abruptos en las condiciones del mercado.

= Optimización de portafolios
El manejo de portafolios se refiere al proceso de identificar,
seleccionar y administrar un conjunto de inversiones. Esto incluye la
asignación de recursos, el seguimiento del desempeño y la actualización
del portafolio en el tiempo.

El problema de optimización de portafolios se formalizó con el trabajo
de Harry Markowitz (1952), base de la Teoría Moderna del Portafolio.

#block[
  #emph["La optimización de portafolios puede definirse como el uso de
    métodos matemáticos para seleccionar activos considerando preferencias
    de decisión, restricciones relevantes e incertidumbre."]

]
Este problema puede formularse de distintas maneras:

+ Minimizar el riesgo para un rendimiento objetivo.

+ Maximizar el rendimiento esperado para un nivel de riesgo dado.

+ Balancear riesgo y rendimiento con un factor de aversión al riesgo.

+ Minimizar el riesgo sin imponer meta de rendimiento.

+ Maximizar el rendimiento sin imponer límite de riesgo.

== Definiciones
=== Rendimiento del activo
Es la tasa de ganancia o pérdida de un activo en un periodo de tiempo.
Una pérdida se representa con un valor negativo.

El rendimiento del activo $i$ en el periodo $t$ puede definirse como:

$ r_(i \, t) = frac(p_(i \, t) - p_(i \, t - 1) + d_(i \, t), p_(i \, t - 1)) $

donde:

- $p_(i \, t)$ es el precio de cierre del activo $i$ en el periodo $t$

- $p_(i \, t - 1)$ es el precio de cierre en el periodo anterior

- $d_(i \, t)$ representa los dividendos en el periodo $t$

El periodo de análisis puede ser diario, semanal, mensual o anual,
dependiendo de la frecuencia de los datos utilizados.

=== Portafolio
Sea un portafolio compuesto por $n$ activos, donde $w_i$ representa la
proporción de capital invertida en el activo $i$, cumpliendo la
restricción de presupuesto:

$ sum_(i = 1)^n w_i = 1 $

El rendimiento esperado del portafolio se define como:

$ mu_p = sum_(i = 1)^n w_i mu_i $

donde $mu_i$ es el rendimiento esperado del activo $i$.

En notación vectorial:

$ mu_p = upright(bold(w))^top bold(mu) $

El riesgo del portafolio, medido mediante la varianza, se expresa como:

$ sigma_p^2 = upright(bold(w))^top Sigma upright(bold(w)) $

donde $Sigma$ es la matriz de covarianzas entre los activos.

=== Modelo de media-varianza
El modelo clásico de Markowitz busca minimizar el riesgo del portafolio
para un nivel de rendimiento esperado dado:

$
  min_(upright(bold(w))) quad & upright(bold(w))^top Sigma upright(bold(w)) \
     upright("sujeto a") quad & upright(bold(w))^top bold(mu) = mu_0 \
                              & sum_(i = 1)^n w_i = 1 \
                              & w_i gt.eq 0 \, quad i = 1 \, dots.h \, n
$

donde $mu_0$ es el rendimiento objetivo del portafolio.

Este modelo establece un compromiso entre riesgo y rendimiento,
generando el conjunto de soluciones conocidas como portafolios
eficientes.

=== Short selling
Es la venta de un activo que no se posee, con la expectativa de
recomprarlo a menor precio. En términos de modelado, suele asociarse a
pesos negativos. En el modelo clásico de Markowitz, esta práctica puede
excluirse imponiendo $w_i gt.eq 0$.

=== Portafolio eficiente
Un portafolio factible es eficiente si maximiza el rendimiento esperado
para un nivel de riesgo dado, o equivalentemente, minimiza el riesgo
para un rendimiento esperado dado. En otras palabras, no existe otro
portafolio que ofrezca mayor rendimiento sin incrementar el riesgo, ni
uno que reduzca el riesgo sin sacrificar rendimiento.

Este concepto es central en la teoría de Markowitz: entre todos los
portafolios posibles, solo un subconjunto cumple con esta condición de
eficiencia, y son precisamente estos los que un inversionista racional
debería considerar.

=== Frontera eficiente
La frontera eficiente es la curva que representa gráficamente el
conjunto de portafolios eficientes en el espacio riesgo-rendimiento.
Cada punto sobre esta curva corresponde a una combinación óptima de
activos para un nivel de riesgo específico.

Geométricamente, la frontera tiene forma de hipérbola en el plano
$\( sigma_p \, mu_p \)$. Los portafolios ubicados por debajo de la
frontera son subóptimos, ya que existe al menos un portafolio eficiente
que ofrece mayor rendimiento para el mismo nivel de riesgo. Los
portafolios por encima de la frontera no son alcanzables con los activos
disponibles.

El problema de optimización de portafolios consiste, en esencia, en
encontrar puntos sobre esta frontera que satisfagan las preferencias del
inversionista y las restricciones del problema.

== Indicadores de riesgo
La medición del riesgo es fundamental para la optimización de
portafolios. Existen diversas métricas, cada una con características que
las hacen más o menos apropiadas según el contexto y los objetivos del
inversionista.

=== Varianza y desviación estándar
La varianza mide la dispersión total de los rendimientos respecto a su
media. Para un activo con rendimientos $r_1 \, r_2 \, dots.h \, r_T$ y
media $macron(r)$, se define como:

$ sigma^2 = frac(1, T - 1) sum_(t = 1)^T \( r_t - macron(r) \)^2 $

La desviación estándar $sigma$ es la raíz cuadrada de la varianza y se
interpreta como la volatilidad del activo. Es la medida de riesgo
utilizada en el modelo clásico de Markowitz.

Una limitación de la varianza es que penaliza tanto las desviaciones
positivas como las negativas, cuando en realidad solo las pérdidas
representan riesgo para el inversionista.

=== Semivarianza
La semivarianza aborda la limitación anterior al considerar únicamente
las desviaciones por debajo de un umbral $tau$ (típicamente la media o
cero):

$ S V = 1 / T sum_(t = 1)^T min \( r_t - tau \, 0 \)^2 $

Esta métrica captura el riesgo de pérdida (#emph[downside risk];) sin
penalizar los rendimientos favorables. Su uso es apropiado cuando el
inversionista tiene aversión asimétrica al riesgo.

=== Value at Risk (VaR)
El VaR representa la pérdida máxima esperada en un horizonte temporal
dado, para un nivel de confianza $alpha$ (comúnmente 95% o 99%).
Formalmente, es el cuantil $alpha$ de la distribución de pérdidas:

$ upright(V a R)_alpha \( L \) = inf { l in bb(R) : P \( L lt.eq l \) gt.eq alpha } $

Por ejemplo, un VaR$""_(95 %)$ de \$10,000 indica que existe un 95% de
probabilidad de que las pérdidas no excedan dicha cantidad.

El VaR es ampliamente utilizado en la industria financiera por su
interpretabilidad. Sin embargo, presenta limitaciones: no es una medida
coherente de riesgo (no cumple la propiedad de subaditividad) y no
proporciona información sobre la magnitud de las pérdidas cuando estas
exceden el umbral.

=== Conditional Value at Risk (CVaR)
El CVaR, también conocido como Expected Shortfall, mide la pérdida
promedio en los escenarios que exceden el VaR. Para un nivel de
confianza $alpha$:

$ upright(C V a R)_alpha \( L \) = bb(E) [L divides L gt.eq upright(V a R)_alpha \( L \)] $

donde $L$ representa la pérdida del portafolio.

A diferencia del VaR, el CVaR es una medida coherente de riesgo y
captura la severidad de las pérdidas extremas en la cola de la
distribución. Esto lo hace particularmente adecuado para mercados con
alta volatilidad, como el de criptomonedas, donde los eventos extremos
son más frecuentes que en mercados tradicionales.

Además, el CVaR tiene propiedades matemáticas favorables: es convexo, lo
que facilita su uso en problemas de optimización.

=== Estimación práctica de VaR y CVaR
En aplicaciones reales, estas métricas no se obtienen solo de forma
teórica, sino a partir de una muestra histórica de rendimientos o
mediante simulación. Los enfoques más utilizados son:

- #strong[Método histórico:] ordena las pérdidas observadas y toma el
  cuantil correspondiente al nivel $alpha$. Es simple y no exige suponer
  una distribución específica.

- #strong[Método paramétrico:] asume una distribución para los
  rendimientos o pérdidas; por ejemplo, si
  $L tilde.op cal(N) \( mu_L \, sigma_L^2 \)$, entonces
  $
    upright(V a R)_alpha \( L \) = mu_L + sigma_L z_alpha #h(2em) upright("y") #h(2em) upright(C V a R)_alpha \( L \) = mu_L + sigma_L frac(phi.alt \( z_alpha \), 1 - alpha)
  $
  donde $z_alpha$ es el cuantil de la normal estándar y
  $phi.alt \( dot.op \)$ es su densidad.

- #strong[Simulación de Monte Carlo:] genera escenarios futuros para
  estimar la distribución de pérdidas, especialmente útil cuando se
  desea incorporar correlaciones entre activos o supuestos no lineales.

Como ejemplo, si un portafolio presenta 100 rendimientos diarios y las 5
peores pérdidas son 4.2%, 4.6%, 5.1%, 6.0% y 8.3%, entonces el
VaR$""_(95 %)$ histórico es aproximadamente 4.2% y el CVaR$""_(95 %)$ es
5.64%. En un portafolio de \$1,000,000, ese CVaR implica una pérdida
promedio esperada de \$56,400 en el peor 5% de los casos.

=== Maximum Drawdown
El #emph[Maximum Drawdown] (MDD) mide la caída máxima acumulada desde un
máximo histórico hasta un mínimo posterior durante un horizonte de
tiempo. Si $P_t$ representa el valor del portafolio en el instante $t$,
entonces:

$ upright(M D D) = max_(1 lt.eq t lt.eq T) (frac(max_(1 lt.eq s lt.eq t) P_s - P_t, max_(1 lt.eq s lt.eq t) P_s)) $

Esta métrica es especialmente útil en criptomonedas, porque resume
caídas prolongadas que no siempre quedan bien representadas por la
varianza o el VaR. En la práctica, complementa al CVaR cuando se desea
evaluar no solo la severidad de las pérdidas, sino también su duración y
profundidad.

=== Comparativa de indicadores
#block[
  #figure(
    align(center)[#table(
      columns: 3,
      align: (left, left, left),
      table.header([#strong[Indicador];], [#strong[Ventajas];], [#strong[Limitaciones];]),
      table.hline(),
      [Varianza],
      [Simple de calcular; ampliamente conocida;
        convexa],
      [Penaliza ganancias y pérdidas por igual],
      [Semivarianza],
      [Solo considera pérdidas; asimetría
        realista],
      [Mayor complejidad computacional; menos datos
        disponibles],
      [VaR],
      [Interpretación intuitiva; estándar regulatorio],
      [No es
        coherente; ignora magnitud de pérdidas extremas],
      [CVaR],
      [Coherente; captura colas; convexo],
      [Requiere estimación de
        distribución; sensible a datos extremos],
      [Maximum Drawdown],
      [Fácil de interpretar; refleja caídas
        acumuladas],
      [No considera la frecuencia de recuperación ni la
        distribución completa],
    )],
    caption: [Comparativa de indicadores de riesgo],
    kind: table,
  )

] <tab:indicadores-riesgo>
Para el contexto de criptomonedas, donde la distribución de rendimientos
presenta colas pesadas y asimetría, el CVaR resulta especialmente
apropiado al capturar el comportamiento en escenarios de pérdidas
extremas. Sin embargo, el drawdown aporta una visión complementaria
sobre la magnitud de las rachas bajistas, que también es crítica en
mercados con alta volatilidad.

== Indicadores de desempeño
Además de las métricas de riesgo, existen indicadores que evalúan el
desempeño de un portafolio considerando simultáneamente el rendimiento
obtenido y el riesgo asumido.

=== Ratio de Sharpe
El ratio de Sharpe, propuesto por William Sharpe, mide el exceso de
rendimiento por unidad de riesgo. Se define como:

$ S = frac(mu_p - r_f, sigma_p) $

donde $mu_p$ es el rendimiento esperado del portafolio, $r_f$ es la tasa
libre de riesgo y $sigma_p$ es la desviación estándar del portafolio.

Un ratio de Sharpe mayor indica un mejor desempeño ajustado por riesgo.
Esta métrica permite comparar portafolios con diferentes niveles de
riesgo en una escala común y es ampliamente utilizada en la industria
para evaluar estrategias de inversión.

En el contexto de criptomonedas, donde no existe una tasa libre de
riesgo claramente definida, es común utilizar $r_f = 0$ o una tasa de
referencia del mercado tradicional.

=== Ratio de Sortino
El ratio de Sortino es una variante del Sharpe que utiliza la
semivarianza en lugar de la desviación estándar, penalizando únicamente
la volatilidad negativa:

$ S o = frac(mu_p - r_f, sigma_d) $

donde $sigma_d$ es la desviación estándar de los rendimientos negativos
(downside deviation). Este indicador es más apropiado cuando la
distribución de rendimientos es asimétrica.

== Formas de representar un portafolio
En el contexto de algoritmos metaheurísticos, la forma en que se
codifica una solución afecta directamente la eficiencia de la búsqueda.
Para el problema de optimización de portafolios, la representación más
directa es un vector de pesos
$upright(bold(w)) = \( w_1 \, w_2 \, dots.h \, w_n \)$, donde cada
componente indica la proporción del capital asignada a cada activo.

Sin embargo, esta representación directa puede generar soluciones no
factibles durante el proceso de búsqueda, particularmente cuando se
violan restricciones como $sum w_i = 1$ o los límites individuales de
cada peso. Por ello, se han propuesto codificaciones alternativas:

- #strong[Representación directa con reparación:] se utiliza el vector
  de pesos directamente, pero se aplica un mecanismo de normalización
  después de cada actualización para garantizar que se cumplan las
  restricciones. Por ejemplo, dividiendo cada peso entre la suma total:
  $w_(i') = w_i \/ sum_j w_j$.

- #strong[Representación híbrida:] combina una parte binaria para la
  selección de activos (cuáles incluir en el portafolio) con una parte
  continua para la asignación de pesos. Es útil cuando se imponen
  restricciones de cardinalidad.

- #strong[Codificación indirecta:] en lugar de representar pesos
  directamente, se codifican parámetros que luego se transforman en
  pesos válidos mediante una función de decodificación.

La elección de la representación depende de las restricciones del
problema y del algoritmo utilizado. Para algoritmos basados en
movimiento continuo, como PSO, la representación directa con reparación
suele ser la más natural y eficiente.

== Restricciones del mundo real
El modelo base de Markowitz impone la restricción de presupuesto
$sum w_i = 1$. En aplicaciones reales suelen añadirse restricciones
adicionales.

=== Límites mínimos y máximos
Se imponen cotas inferiores y superiores para cada peso:

- #strong[Límite inferior];: evita asignaciones demasiado pequeñas, que
  pueden incrementar costos de transacción.

- #strong[Límite superior];: evita concentraciones excesivas y mejora la
  diversificación.

=== Cardinalidad
Controla cuántos activos pueden componer el portafolio:

- #strong[Exacta];: exige exactamente $K$ activos.

- #strong[Suave];: fija un rango permitido de activos.

Con cardinalidad, el problema suele volverse no convexo y más difícil de
resolver con métodos exactos; por ello se usan penalizaciones o
procedimientos de poda de activos de bajo peso .

=== Rotación
Mide el cambio de pesos respecto a una asignación previa. Es relevante
en estrategias de horizonte largo para evitar costos excesivos por
comisiones e impuestos. Una forma común de modelarla es:
$ sum_(i = 1)^n \| w_i^(\( t \)) - w_i^(\( t - 1 \)) \| lt.eq tau $
donde $tau$ es el límite máximo de rotación permitido.

= Metaheurísticas y algoritmos bioinspirados
Las metaheurísticas son estrategias de alto nivel diseñadas para guiar
procesos de búsqueda hacia soluciones de buena calidad en problemas de
optimización complejos. A diferencia de los métodos exactos, que
garantizan encontrar el óptimo global pero pueden requerir tiempos
computacionales prohibitivos, las metaheurísticas buscan un equilibrio
entre calidad de solución y eficiencia computacional.

El problema de optimización de portafolios, particularmente cuando se
incorporan restricciones como cardinalidad o límites de rotación, se
convierte en un problema NP-difícil que no puede resolverse
eficientemente con métodos exactos. En estos casos, las metaheurísticas
ofrecen una alternativa práctica para obtener soluciones aproximadas de
alta calidad.

== Clasificación de metaheurísticas
Las metaheurísticas pueden clasificarse según diversos criterios:

- #strong[Basadas en trayectoria vs. poblacionales:] las primeras
  trabajan con una única solución que se modifica iterativamente (como
  búsqueda tabú o recocido simulado), mientras que las segundas
  mantienen un conjunto de soluciones que evolucionan en paralelo.

- #strong[Inspiración natural:] muchas metaheurísticas se inspiran en
  procesos biológicos o físicos, como la evolución (algoritmos
  genéticos), el comportamiento colectivo de animales (inteligencia de
  enjambre) o el enfriamiento de metales (recocido simulado).

== Algoritmos bioinspirados
Los algoritmos bioinspirados constituyen una familia de metaheurísticas
que emulan mecanismos observados en la naturaleza. Su popularidad se
debe a su capacidad para abordar problemas con espacios de búsqueda de
alta dimensionalidad, funciones objetivo no diferenciables y
restricciones complejas.

Entre las principales categorías se encuentran:

- #strong[Algoritmos evolutivos:] inspirados en la teoría de la
  evolución de Darwin, utilizan operadores de selección, cruzamiento y
  mutación para evolucionar poblaciones de soluciones. Ejemplos:
  algoritmos genéticos, estrategias evolutivas, programación genética.

- #strong[Inteligencia de enjambre:] modelan el comportamiento colectivo
  de grupos de organismos que, mediante interacciones simples entre
  individuos, exhiben comportamientos emergentes complejos. Ejemplos:
  optimización por enjambre de partículas (PSO), optimización por
  colonia de hormigas (ACO), algoritmo de abejas.

== Inteligencia de enjambre
La inteligencia de enjambre se refiere a la capacidad de sistemas
compuestos por agentes simples para resolver problemas complejos
mediante cooperación descentralizada. Cada agente sigue reglas locales
sencillas, pero la interacción colectiva produce un comportamiento
global inteligente.

Características distintivas de estos algoritmos:

- #strong[Autoorganización:] el comportamiento global emerge sin control
  centralizado.

- #strong[Comunicación indirecta:] los agentes comparten información a
  través del entorno o mediante señales simples.

- #strong[Robustez:] el sistema tolera la pérdida de agentes
  individuales sin colapsar.

- #strong[Flexibilidad:] capacidad de adaptarse a cambios en el entorno.

Ejemplos naturales incluyen el comportamiento de parvadas de aves,
cardúmenes de peces, colonias de hormigas y enjambres de abejas. Estos
fenómenos han inspirado algoritmos de optimización que aprovechan la
inteligencia colectiva para explorar eficientemente espacios de búsqueda
complejos.

= Optimización por enjambre de partículas (PSO)
La optimización por enjambre de partículas (PSO, por sus siglas en
inglés), propuesta por Kennedy y Eberhart, es una metaheurística
inspirada en el comportamiento colectivo observado en sistemas
naturales, como parvadas de aves o cardúmenes de peces.

El algoritmo emplea un conjunto de agentes denominados partículas, donde
cada partícula representa una solución candidata dentro del espacio de
búsqueda. Estas partículas se desplazan ajustando su posición con base
en su experiencia individual y en la mejor experiencia encontrada por el
grupo.

En cada iteración, las partículas actualizan su velocidad y posición con
el objetivo de acercarse a regiones prometedoras de la función objetivo.
Este proceso continúa hasta alcanzar un número máximo de iteraciones o
hasta que la mejora entre iteraciones sea marginal.

Este mecanismo de cooperación permite balancear la exploración del
espacio de búsqueda con la explotación de las mejores soluciones
encontradas.

== Modelo matemático
El comportamiento de cada partícula se define mediante dos ecuaciones
principales: la actualización de la velocidad y la actualización de la
posición.

$
  v_i \( t + 1 \) & = v_i \( t \) + c_1 r_1 \( p_(b e s t \, i) - x_i \( t \) \) + c_2 r_2 \( g_(b e s t) - x_i \( t \) \)\
  x_i \( t + 1 \) & = x_i \( t \) + v_i \( t + 1 \)
$

donde:

- $x_i \( t \)$ representa la posición de la partícula $i$ en la
  iteración $t$

- $v_i \( t \)$ es la velocidad de la partícula

- $p_(b e s t \, i)$ es la mejor posición encontrada por la partícula

- $g_(b e s t)$ es la mejor posición global del enjambre

- $c_1$ y $c_2$ son coeficientes de aceleración

- $r_1 \, r_2 tilde.op U \( 0 \, 1 \)$ son valores aleatorios

== Componentes del algoritmo
Cada partícula dentro del enjambre posee los siguientes elementos:

- Posición: representa una solución candidata en el espacio de búsqueda.

- Velocidad: determina la dirección y magnitud del movimiento.

- Memoria individual ($p_(b e s t)$): mejor solución encontrada por la
  partícula.

- Memoria global ($g_(b e s t)$): mejor solución encontrada por el
  enjambre.

El algoritmo opera de forma iterativa, evaluando la calidad de cada
partícula mediante una función objetivo y actualizando sus parámetros en
consecuencia.

== Estructura del algoritmo
El Algoritmo presenta el pseudocódigo de PSO. El proceso inicia
con la generación aleatoria de posiciones y velocidades, seguido de un
ciclo iterativo donde cada partícula actualiza su estado basándose en su
experiencia y la del enjambre.

== Topologías de comunicación
Las topologías de comunicación definen cómo las partículas comparten
información dentro del enjambre, lo cual influye directamente en el
balance entre exploración y explotación del algoritmo.

La elección de la topología afecta dos aspectos fundamentales: la
velocidad de convergencia y la capacidad de escapar de óptimos locales.
Topologías con mayor conectividad aceleran la convergencia pero pueden
provocar convergencia prematura; topologías más restringidas mantienen
diversidad a costa de iteraciones adicionales.

=== Modelo global (#emph[gbest];)
En esta topología, todas las partículas tienen acceso a la mejor
solución encontrada por cualquier miembro del enjambre. La ecuación de
velocidad utiliza $g_(b e s t)$ como atractor social:

$
  v_i \( t + 1 \) = w v_i \( t \) + c_1 r_1 \( p_(b e s t \, i) - x_i \( t \) \) + c_2 r_2 \( g_(b e s t) - x_i \( t \) \)
$

Esta es la topología original propuesta por Kennedy y Eberhart. Su
principal ventaja es la convergencia rápida, ya que todas las partículas
se dirigen hacia la mejor región conocida. Sin embargo, en problemas
multimodales (con múltiples óptimos locales), el enjambre puede quedar
atrapado prematuramente en un óptimo local.

=== Modelo local (#emph[lbest];)
Cada partícula solo se comunica con un subconjunto de vecinos,
típicamente definido por un anillo donde cada partícula conoce a sus $k$
vecinos más cercanos en el índice del enjambre. En lugar de
$g_(b e s t)$, se utiliza $l_(b e s t \, i)$, la mejor posición entre
los vecinos de la partícula $i$:

$
  v_i \( t + 1 \) = w v_i \( t \) + c_1 r_1 \( p_(b e s t \, i) - x_i \( t \) \) + c_2 r_2 \( l_(b e s t \, i) - x_i \( t \) \)
$

Esta topología preserva mayor diversidad en el enjambre y reduce el
riesgo de convergencia prematura. La información sobre buenas regiones
se propaga gradualmente, permitiendo que diferentes partes del enjambre
exploren distintas áreas del espacio de búsqueda.

=== Consideraciones para la selección
Para problemas con paisajes de aptitud suaves y un solo óptimo global,
la topología global suele ser preferible por su eficiencia. En problemas
multimodales o con alta dimensionalidad, como la optimización de
portafolios con restricciones, la topología local puede ofrecer mejores
resultados al mantener la diversidad del enjambre.

#block[
  #figure(
    align(center)[#table(
      columns: 3,
      align: (left, left, left),
      table.header(
        [#strong[Aspecto];],
        [#strong[Global
          (gbest)];],
        [#strong[Local (lbest)];],
      ),
      table.hline(),
      [Convergencia], [Rápida], [Más lenta, gradual],
      [Riesgo de óptimos locales],
      [Alto (convergencia prematura)],
      [Bajo
        (mayor exploración)],
      [Diversidad del enjambre],
      [Se reduce rápidamente],
      [Se mantiene por
        más tiempo],
      [Problemas recomendados],
      [Unimodales, convexos],
      [Multimodales,
        alta dimensionalidad],
      [Complejidad de implementación],
      [Simple],
      [Requiere definir
        vecindario],
    )],
    caption: [Comparativa de topologías de comunicación en PSO],
    kind: table,
  )

] <tab:topologias-pso>
== Modelos de velocidad
El modelo de velocidad determina la dinámica del movimiento de las
partículas y el balance entre exploración (búsqueda global) y
explotación (refinamiento local). La formulación original de PSO
presentaba problemas de convergencia, lo que motivó el desarrollo de
variantes más estables.

=== Factor de inercia
Shi y Eberhart introdujeron el factor de inercia $w$ para controlar la
influencia de la velocidad previa:

$
  v_i \( t + 1 \) = w v_i \( t \) + c_1 r_1 \( p_(b e s t \, i) - x_i \( t \) \) + c_2 r_2 \( g_(b e s t) - x_i \( t \) \)
$

El parámetro $w$ regula el balance exploración-explotación:

- $w > 1$: la partícula tiende a expandir su trayectoria (mayor
  exploración, posible divergencia).

- $w approx 1$: comportamiento similar al PSO original.

- $0 < w < 1$: la partícula desacelera gradualmente (mayor explotación).

Una estrategia común es decrementar $w$ linealmente durante la
ejecución, comenzando con valores altos ($approx 0.9$) para explorar y
terminando con valores bajos ($approx 0.4$) para refinar las soluciones.

=== Factor de constricción
Clerc y Kennedy propusieron el factor de constricción $chi$ como
alternativa para garantizar convergencia. Se deriva analíticamente de
las condiciones de estabilidad del sistema:

$
  v_i \( t + 1 \) = chi [v_i \( t \) + c_1 r_1 \( p_(b e s t \, i) - x_i \( t \) \) + c_2 r_2 \( g_(b e s t) - x_i \( t \) \)]
$

donde:
$ chi = 2 / lr(|2 - phi.alt - sqrt(phi.alt^2 - 4 phi.alt)|) \, quad phi.alt = c_1 + c_2 \, quad phi.alt > 4 $

Con valores típicos $c_1 = c_2 = 2.05$ (lo que da $phi.alt = 4.1$), se
obtiene $chi approx 0.7298$. Esta formulación elimina la necesidad de
limitar la velocidad máxima y proporciona convergencia garantizada.

=== PSO Barebones
Kennedy propuso esta variante simplificada que elimina completamente el
concepto de velocidad. La nueva posición se muestrea de una distribución
gaussiana centrada entre la mejor posición personal y la global:

$ x_i \( t + 1 \) tilde.op cal(N) (frac(p_(b e s t \, i) + g_(b e s t), 2) \, lr(|p_(b e s t \, i) - g_(b e s t)|)) $

La media de la distribución es el punto medio entre $p_(b e s t \, i)$ y
$g_(b e s t)$, mientras que la desviación estándar es la distancia entre
ambos. Esta formulación reduce el número de parámetros a ajustar y puede
ser efectiva en problemas donde el ajuste de parámetros tradicionales
resulta complejo.

=== Comparativa de modelos
#block[
  #figure(
    align(center)[#table(
      columns: 4,
      align: (left, left, left, left),
      table.header([#strong[Modelo];], [#strong[Ventajas];], [#strong[Desventajas];], [#strong[Parámetros];]),
      table.hline(),
      [PSO Original],
      [Simple de implementar],
      [Puede diverger; requiere
        límites de velocidad],
      [$c_1 \, c_2 \, v_(m a x)$],
      [Factor de inercia],
      [Control explícito
        exploración/explotación],
      [Sensible al valor de $w$; requiere
        ajuste],
      [$w \, c_1 \, c_2$],
      [Constricción],
      [Convergencia garantizada; sin $v_(m a x)$],
      [Menos
        flexible que inercia],
      [$chi \, c_1 \, c_2$],
      [Barebones],
      [Pocos parámetros; evita ajuste fino],
      [Puede ser muy
        aleatorio; menos control],
      [Ninguno],
    )],
    caption: [Comparativa de modelos de velocidad en PSO],
    kind: table,
  )

] <tab:modelos-velocidad>
= Metodologia (Propuesta PSO)
== Datos del mercado
Los datos utilizados en este trabajo corresponden a precios históricos
de criptomonedas, los cuales fueron obtenidos mediante la biblioteca
`yfinance` de Python, que permite acceder a información financiera desde
fuentes públicas.

Se seleccionaron las siguientes criptomonedas:

- Bitcoin (BTC)

- Ethereum (ETH)

- Solana (SOL)

- Cardano (ADA)

Debido a su relevancia dentro del mercado y disponibilidad de datos
históricos.

El periodo de análisis abarca desde 2020 hasta 2024, utilizando una
frecuencia diaria, lo que permite capturar el comportamiento del mercado
y su volatilidad en el tiempo.

A partir de estos datos, se calcularon los rendimientos logarítmicos de
cada activo, los cuales son utilizados como base para la construcción y
evaluación de los portafolios. $ r_t = ln (P_t / P_(t - 1)) $ Donde
$P_t$ representa el precio del activo en el tiempo $t$.

El motivo de utilizar rendimientos logarítmicos radica en su capacidad
para manejar mejor las variaciones porcentuales y su propiedad de
aditividad, lo que facilita el análisis de los portafolios y la
comparación entre diferentes activos.

== Como se maneja la volatilidad
=== Funcion objetivo
== Parametros del algoritmo
= Resultados
= Analisis de resultados
= Conclusiones
