#import "@preview/codly:1.3.0": *
#import "@local/codly-languages:0.1.8": *
#show: codly-init.with()

#codly(languages: codly-languages, aliases: ("riscv": "asm"))

#import "@preview/abbr:0.2.3"
#abbr.load("abbreviations.csv")
#abbr.config(style: it => text(black, it))

#import "settings.typ": *

#set document(
  title: title,
  author: author,
  keywords: keywords,
)

#show raw.where(block: true): set text(size: 8pt)

#set page(
  paper: "a4",
)

#set text(
  size: 12pt,
  lang: "en",
)

#set par(
  justify: true,
)

#show figure: it => [
  #v(1em)
  #block[#it.body]
  #it.caption
  #v(1em)
]

#set heading(
  numbering: "1.1",
)

#show heading.where(level: 1): it => [
  #set text(size: 24pt)
  #v(4%, weak: true)
  #block[#it]
  #v(3.5%, weak: true)
]

#show heading.where(level: 2): it => [
  #set text(size: 15pt)
  #v(3%, weak: true)
  #block[#it]
  #v(2.5%, weak: true)
]

#show heading.where(level: 3): it => [
  #set text(size: 13pt)
  #v(3%, weak: true)
  #block[#it]
  #v(2.5%, weak: true)
]

#include "title.typ"

#counter(page).update(1)
#set page(
  numbering: "i",
  margin: if for_print {(inside: 40mm, rest: 25mm)} else {auto}
)

#include "declaration.typ"

// Content

#counter(page).update(1)
#set page(
  numbering: "1",
  margin: if for_print {(inside: 40mm, rest: 25mm)} else {auto}
)

#show heading.where(level: 5): it =>  smallcaps(strong(it.body)) + [:]

#outline(depth: 3)

#pagebreak()

#include "content.typ"

#pagebreak()

#outline(
  target: figure,
)

#pagebreak()

#bibliography(
  "sources.bib",
  style: "./ieee-bc.csl"
)

#pagebreak()

#abbr.list()
