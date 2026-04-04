// University of Warwick — Department of Computer Science report template.
// Usage: #show: report.with(title: ..., author: ..., ...)

#let report(
  title: none,
  author: none,
  student-id: none,
  supervisor: none,
  date: none,
  body,
) = {
  // ── Page & font setup ──────────────────────────────────────────────
  set document(title: title, author: author)
  set page(paper: "a4", margin: (x: 2cm, y: 2cm))
  set text(font: "New Computer Modern", size: 12pt, lang: "en")
  set par(justify: true, leading: 0.55em, spacing: 0.8em)
  set heading(numbering: "1.1")
  set block(spacing: 0.8em)

  // ── Heading styles ─────────────────────────────────────────────────
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    v(0.8em)
    text(size: 17pt, weight: "bold", it)
    v(0.5em)
  }

  show heading.where(level: 2): it => {
    v(0.6em)
    text(size: 13pt, weight: "bold", it)
    v(0.3em)
  }

  show heading.where(level: 3): it => {
    v(0.4em)
    text(size: 12pt, weight: "bold", it)
    v(0.2em)
  }

  // ── Figures & equations ────────────────────────────────────────────
  set math.equation(numbering: "(1)")
  set figure(gap: 0.8em)
  show figure.caption: set text(size: 0.9em)

  // ── Title page ─────────────────────────────────────────────────────
  {
    let brand-purple = rgb("#3C1053")
    set page(numbering: none, margin: 0pt)

    // Purple masthead band (background)
    place(top + left, rect(width: 100%, height: 13.5cm, fill: brand-purple))

    // Crest and wordmark (in the purple band)
    v(2.5cm)
    align(center)[
      #image("assets/warwick-crest-white.svg", height: 7cm)
      #v(0.4cm)
      #image("assets/warwick-wordmark-white.svg", width: 9cm)
    ]
    v(1.5cm)

    // Accent rule
    align(center, line(length: 5cm, stroke: 0.75pt + brand-purple))

    // Title and metadata
    v(1cm)
    align(center)[
      #text(size: 24pt, weight: "bold", title)
      #v(0.8cm)
      #text(size: 14pt, author)
      #if student-id != none [ \ #text(size: 12pt)[Student ID: #student-id] ]
      #v(0.5cm)
      #text(size: 12pt)[Supervisor: #supervisor]
      #v(0.3cm)
      #text(size: 12pt, date)
    ]

    v(1fr)

    // Department footer
    align(center)[
      #line(length: 3cm, stroke: 0.5pt + brand-purple)
      #v(0.4cm)
      #text(size: 11pt, fill: luma(100))[Department of Computer Science \ University of Warwick]
    ]
    v(2cm)

    pagebreak()
  }

  // ── Front matter (roman numerals) ─────────────────────────────────
  set page(numbering: "i")
  counter(page).update(1)

  body
}

// ── Theorem environments ───────────────────────────────────────────
#let theorem-counter = counter("theorem")
#let definition-counter = counter("definition")

#let theorem(body, name: none) = {
  theorem-counter.step()
  block(
    width: 100%,
    inset: 10pt,
    stroke: (left: 2pt + luma(80)),
    fill: luma(245),
  )[
    *Theorem #context theorem-counter.display()#if name != none [ (#name)]*. #emph(body)
  ]
}

#let definition(body, name: none) = {
  definition-counter.step()
  block(
    width: 100%,
    inset: 10pt,
    stroke: (left: 2pt + luma(140)),
    fill: luma(250),
  )[
    *Definition #context definition-counter.display()#if name != none [ (#name)]*. #body
  ]
}

#let proof(body) = {
  [_Proof._ #body #h(1fr) $square$]
}
