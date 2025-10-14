#import "@preview/abbr:0.2.3"
#abbr.load("abbreviations.csv")
#abbr.config(style: it => text(black, it))

#let ite(key, supplement: none) = {
  show regex(".* "): none
  cite(key, supplement: supplement)
}

= Introduction

Here goes your content.
