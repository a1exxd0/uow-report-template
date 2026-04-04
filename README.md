# Report template for submissions of work at the University of Warwick

Built with [Typst](https://typst.app/).

## Preview

<p align="center">
  <img src="assets/preview-title.png" width="32%" />
  <img src="assets/preview-toc.png" width="32%" />
  <img src="assets/preview-body.png" width="32%" />
</p>
<p align="center">
  <em>Title page, table of contents, and chapter body with theorem environments</em>
</p>

<p align="center">
  <img src="assets/preview-appendix.png" width="32%" />
</p>
<p align="center">
  <em>Appendix with quantum circuit diagrams</em>
</p>

## Usage

Edit `main.typ` to configure your title, author, student ID, supervisor, and date. Add chapters as `.typ` files in `chapters/` and `#include` them in `main.typ`. The template (`template.typ`) provides `report`, `theorem`, `definition`, and `proof` environments.

The `bibliography.bib` works the same as in `LaTeX`.

## Dependencies

- [Typst](https://typst.app/) (`brew install typst` on macOS)

## Build

```sh
typst compile main.typ          # build pdf
typst watch main.typ            # recompile on changes
```
