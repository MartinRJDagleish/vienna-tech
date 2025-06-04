#import "@preview/vienna-tech:1.1.0": *

#show "Typst": fancy-typst
#show "LaTeX": fancy-latex

// Useing the configuration
#show: tuw-thesis.with(
  header-title: "Instruktionen zur Abfassung der Bachelorarbeit",
)
#maketitle(
  title: [Instruktionen zur Abfassung der Bachelorarbeit],
  thesis-type: [Bachelorarbeit],
  authors: (
    (
      name: "Vorname Nachname",
      email: "email@email.com",
      matrnr: "12345678",
    ),
  ),
)

#abstract[
  #lorem(150)
]
#outline()
// Some Example Content has already been created for you, to show you how to use the configuration
// and to give you some useful information about the structure of a Bachelor Thesis
// You can delete this content and start writing your own content

// Main Content
= Einleitung
#lorem(200)
@madje2022programmable

= Methode
#lorem(200)
@haug2022fast
== Figure
#lorem(100)
#figure(rect(width: 3.5cm, height: 5cm), caption: shortcap([Rechteck], [Dies ist
  ein Beispiel für eine Abbildungsbeschriftung]))<fig:winston>
== Table
#lorem(100)
#figure(
  table(
    columns: 4,
    align: (left, left, left, left),
    table.hline(),
    table.header(
      [Überschriftenebene], [Beispiel], [LaTeX - Befehle], [Typst - Befehle]
    ),
    table.hline(),
    [Titel (zentriert)],
    [Instruktionen],
    "\\title{}",
    [],
    [Überschrift 1],
    [1 Einleitung],
    "\section{}",
    "= ",
    [Überschrift 2],
    [2.1 Textbereich],
    "\subsection{}",
    "== ",
    [Überschrift 3],
    [2.1.1 Unterlagen],
    "\subsubsection{}",
    "===",
    table.hline(start: 0),
  ),
  caption: shortcap([Beispiel Tabelle], [Die Tabellenbeschriftung ist
    normalerweise über der Tabelle. Tabellen sollen durchgehend nummeriert sein.
    Der letzte Satz der Tabellenbeschriftung endet ohne Punkt]),
)<tab:überschriften>

= Ergebnisse
#lorem(200)
= Diskussion
#lorem(200)

#pagebreak()
#show: appendix.with(title: "Anhang")

= Anhang
#lorem(200)

#bibliography("../../template/assets/refs.bib")

#fig-outline()

#tab-outline()

