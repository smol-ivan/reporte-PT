#import "@preview/charged-ieee:0.1.3": ieee

#let article(
  title: none,
  abstract: none,
  authors: (),
  doc,
) = {
  show: ieee.with(
    title: title,
    abstract: abstract,
    authors: authors,
    index-terms: ("Optimización de portafolios", "Criptomonedas", "PSO", "CVaR"),
  )

  doc
}
