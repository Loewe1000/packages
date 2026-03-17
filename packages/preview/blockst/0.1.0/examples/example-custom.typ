// Example 4 – Custom block definition
#import "@preview/blockst:0.1.0": blockst, scratch

#set page(width: auto, height: auto, margin: 3mm, fill: white)

#blockst[
  #import scratch.de: *

  #let zeichne-n-eck = eigener-block(
    "zeichne ",
    (name: "n"),
    "-Eck mit Seite ",
    (name: "s"),
  )

  #definiere(zeichne-n-eck)[
    #wiederhole(anzahl: parameter("n"))[
      #gehe(schritte: parameter("s"))
      #drehe-rechts(grad: dividiere(360, parameter("n")))
    ]
  ]

  #wenn-gruene-flagge-geklickt[
    #zeichne-n-eck(6, 40)
    #zeichne-n-eck(4, 60)
  ]
]
