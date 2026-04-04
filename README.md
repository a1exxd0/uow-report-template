# Report template for submissions of work at the University of Warwick

Built with [Typst](https://typst.app/).

# Usage

Edit `main.typ` to configure your title, author, student ID, supervisor, and date. Add chapters as `.typ` files in `chapters/` and `#include` them in `main.typ`. The template (`template.typ`) provides `report`, `theorem`, `definition`, and `proof` environments.

# Dependencies

- [Typst](https://typst.app/) (`brew install typst` on macOS)

# Build

```sh
typst compile main.typ          # build pdf
typst watch main.typ            # recompile on changes
```
