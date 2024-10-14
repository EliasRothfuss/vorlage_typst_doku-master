// #import "@preview/hydra:0.5.1": hydra

#import "config.typ"

#set page("a4")
#set text(
  lang: "de", 
  size: 12pt, 
  font: "Arial",
)
#set par(
  justify: true, 
  leading: 0.7em,
)

// Set the heading style
#show heading.where(level: 1): set text(size: 26pt)
#show heading.where(level: 1): set block(spacing: 2em)

#show heading.where(level: 2): set text(size: 20pt)
#show heading.where(level: 2): set block(spacing: 1.5em)

#show heading.where(level: 3): set text(size: 16pt)
#show heading.where(level: 3): set block(spacing: 1em)

#show heading.where(level: 4): set text(size: 14pt)
#show heading.where(level: 4): set block(spacing: 0.5em)

#show heading.where(level: 5): set text(size: 12pt)
#show heading.where(level: 5): set block(spacing: 0.5em)

#show heading.where(level: 6): set text(size: 12pt)
#show heading.where(level: 6): set block(spacing: 0.5em)

// Set caption style
#show figure.where(kind: image): set figure.caption(position: bottom)
#show figure.where(kind: image): set figure(supplement: "Abbildung")

#show figure.where(kind: table): set figure.caption(position: top)
#show figure.where(kind: table): set figure(supplement: "Tabelle")

#show figure.where(kind: raw): set figure.caption(position: top)
#show figure.where(kind: raw): set figure(supplement: "Code")


#set heading(outlined: false)
#include "pages/titelseite.typ"

#set page(numbering: "i")
#counter(page).update(1)
#set figure(numbering: "i")
#include "pages/erklaerung.typ"

#pagebreak()
#include "chapter/abstract.typ"
#pagebreak()


#show outline.entry.where(
  level: 1
): it => {
  v(12pt)
  strong(it)
}

#outline(
  title: "Inhaltsverzeichnis",
  target: heading.where(outlined: true),
  fill: none,
  indent: auto, 
)

#set figure(numbering: "1.1")

// Set Figure numbering to chapter.figure
#set figure(numbering: num => {
    let chap_num = counter(heading).at(here()).first()
    let fig_num = counter(figure).at(here()).first()
    numbering("1.1", chap_num, fig_num)
})


#set heading(outlined: true)
#set page(numbering: "1")
#set heading(numbering: "1.")
#counter(page).update(1)

#counter(figure).update(0)
#include "chapter/einleitung.typ"
#pagebreak()
#counter(figure).update(0)
#include "chapter/grundlagen.typ"
#pagebreak()
#counter(figure).update(0)
#include "chapter/vorgehen.typ"
#pagebreak()
#counter(figure).update(0)
#include "chapter/umsetzung.typ"
#pagebreak()
#counter(figure).update(0)
#include "chapter/zusammenfassung.typ"
#pagebreak()


#set heading(numbering: none)
#bibliography(
  "literature/literatur.bib", 
  title: "Literaturverzeichnis",
  style: "institute-of-electrical-and-electronics-engineers"
)
#pagebreak()

#outline(target: figure.where(kind: image), title: "Abbildungsverzeichnis")
#pagebreak()

#outline(target: figure.where(kind: table), title: "Tabellenverzeichnis")
#pagebreak()

#set heading(numbering: "A.1")

// Set Figure numbering for appendix
#set figure(numbering: num => {
    let chap_num = counter(heading).at(here()).first()
    numbering("A.1", chap_num, num)
})

#counter(heading).update(0)
#counter(figure).update(0)

#include "chapter/anhang.typ"
#pagebreak()

#set heading(numbering: none)
#pagebreak()
#include "pages/abkuerzungen.typ"