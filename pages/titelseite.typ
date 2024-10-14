#import "../config.typ"

#image("../images/DHBW_d_R_FN_46mm_4c.jpg", width: 20%)
#set align(center)


#v(5em)
#text(24pt)[
  #config.data.title
]

#text(17pt)[
  #config.data.subtitle
]
#v(2em)
#text(20pt)[
  #config.data.arbeit
]
#v(1em)
#text(14pt)[
  Studiengang #config.data.studiengang
]

#text(12pt)[
  Studienrichtung #config.data.studienrichtung
  Duale Hochschule Baden-Württemberg Ravensburg, Campus Friedrichshafen
  #v(2em)
  von \
  #config.data.author
]

#v(2em)

#table(
    columns: 2,
    stroke: none,
    align: (left,left,),
    [Abgabedatum:], [#config.data.abgabe],
    [Bearbeitungszeitraum:], [#config.data.bearbeitungszeitraum],
    [Matrikelnummer:], [#config.data.matrikelnr],
    [Kurs:], [#config.data.kurs],
    [Dualer Partner:], [#config.data.dualer_partner],
    [Betreuerin / Betreuer:], [#config.data.betreuer],
    [Gutachterin / Gutachter:], [#config.data.gutachter],
)