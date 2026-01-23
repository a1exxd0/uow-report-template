# Report template for submissions of work at the University of Warwick

# Usage

To add packages, look in `utils/preamble.tex`.

Add chapters as tex files in `chapters/` and include them in `main.tex`.

I personally use [inkscape](https://inkscape.org/) as an SVG editor for the title page. Original credit to [Edmund Goodman](https://github.com/EdmundGoodman) for this!

# Dependencies

Need:

- [MacTeX](https://www.tug.org/mactex/) or another latex compiler

Might like:

- [latexindent](https://latexindentpl.readthedocs.io/en/latest/) for formatting

# Build

```sh
make           - build pdf
make clean     - remove auxiliary files
make distclean - remove all generated files including pdf
make watch     - continuously compile on changes
```
