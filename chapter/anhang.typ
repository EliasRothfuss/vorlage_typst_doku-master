= Nutzung von Künstliche Intelligenz basierten Werkzeugen

Im Rahmen dieser Arbeit wurden Künstliche Intelligenz (KI) basierte
Werkzeuge benutzt. Tabelle~@label:tab:ki-werkzeuge gibt eine
Übersicht über die verwendeten Werkzeuge und den jeweiligen
Einsatzzweck.


#figure(
  caption: [Übersicht über die KI-Werkzeuge und deren Nutzung],
  table(
    columns: (1fr, 2fr),
    align: (left,left,),
    stroke: none,
    column-gutter: 1em,
    row-gutter: 0.4em,
    table.header([#strong[Werkzeug];], [#strong[Beschreibung der Nutzung];],),
    table.hline(),
    [ChatGPT], [- Grundlagenrecherche zu bekannten Prinzipien optischer Sensorik zur Abstandsmessung siehe Abschnitt …)
    - Suche nach Herstellern von Lidar-Sensoren (siehe Abschnitt …)

    - …
    ],
    [ChatPDF], [- Recherche und Zusammenfassung von wissenschaftlichen Studien im Themenfeld …

    - …
    ],
    [DeepL], [- Übersetzung des Papers von $[dots.h]$],
    [Tabnine AI coding assistant], [- Aktiviertes Plugin in MS Visual Studio zum Programmieren des …

    - …
    ],
    […], [- …],
    table.hline(),
  ), 
  kind: table
)<label:tab:ki-werkzeuge>

#pagebreak(weak: true)
= Ergänzungen

== Details zu bestimmten theoretischen Grundlagen

== Weitere Details, welche im Hauptteil den Lesefluss behindern


#pagebreak(weak: true)
= Details zu Laboraufbauten und Messergebnissen
== Versuchsanordnung

== Liste der verwendeten Messgeräte

== Übersicht der Messergebnisse

== Schaltplan und Bild der Prototypenplatine

#pagebreak(weak: true)
= Zusatzinformationen zu verwendeter Software

== Struktogramm des Programmentwurfs

== Wichtige Teile des Quellcodes

#pagebreak(weak: true)
= Datenblättern

Auf den folgenden Seiten wird eine Möglichkeit gezeigt, wie aus einem
anderen PDF-Dokument komplette Seiten übernommen werden können, z.~B.
zum Einbindungen von Datenblättern. Der Nachteil dieser Methode besteht
darin, dass sämtliche Formateinstellungen (Kopfzeilen, Seitenzahlen,
Ränder, etc.) auf diesen Seiten nicht angezeigt werden. Die Methode wird
deshalb eher selten gewählt. Immerhin sorgt das Package
#emph[pdfpages];~für eine korrekte Seitenzahleinstellung auf den im
Anschluss folgenden nativen~LaTeX-Seiten.

Eine bessere Alternative ist, einzelne Seiten mit
#emph[$without$includegraphics];~einzubinden.

