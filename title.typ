#import "settings.typ": *

#import "@preview/muchpdf:0.1.0": muchpdf

#align(center)[
  #pad(left: 10em, image("logo-en.svg", width: 150%))

  #v(0.8fr)

  #text(size: 22pt, weight: "bold")[BACHELOR THESIS]

  #v(4em)

  #text(size: 18pt)[#author]

  #v(2em)

  #box(width: 70%)[
    #set par(justify: false)
    #text(size: 24pt, weight: "bold")[
      #title
    ]
  ]

  #v(4em)

  #department

  #v(4em)

  #table(
    columns: 2,
    stroke: none,
    align(right)[Supervisor:], align(left)[#supervisor],
    align(right)[Study programme:], align(left)[#study_programme],
    align(right)[Study branch:], align(left)[#study_branch]
  )

  #v(4em)

  Prague #year

  #v(1fr)
]

#pagebreak()
#pagebreak()
