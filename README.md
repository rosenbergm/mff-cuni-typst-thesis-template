# MFF CUNI Thesis Template for Typst

For a starter document, look into [`template/thesis.typ`](template/thesis.typ).
You can compile this using

```bash
cd template
typst compile --root .. -f pdf --pdf-standard a-2u thesis.typ
```

## Configuration

All thesis metadata is set via named parameters on `mff-thesis` in `template/thesis.typ`:

| Parameter               | Type       | Description                                           |
| ----------------------- | ---------- | ----------------------------------------------------- |
| `title`                 | `str`      | Thesis title                                          |
| `author`                | `str`      | Student's full name                                   |
| `department`            | `str`      | Student's home department                             |
| `supervisor`            | `str`      | Supervisor's name and title                           |
| `supervisor-department` | `str`      | Supervisor's department                               |
| `study-programme`       | `str`      | Study programme                                       |
| `study-branch`          | `str`      | Study branch / specialization                         |
| `year`                  | `int`      | Year of submission                                    |
| `keywords`              | `array`    | List of keyword strings                               |
| `abstract`              | `content`  | Thesis abstract                                       |
| `acknowledgements`      | `content`  | Acknowledgements page (`none` to omit)                |
| `logo`                  | `content`  | University logo, e.g. `image("logo-en.svg")`          |
| `defense-date`          | `datetime` | Declaration date (defaults to today)                  |
| `sgn-where`             | `str`      | Where the thesis was written                          |
| `thesis-type`           | `str`      | `"bachelor"` or `"master"`                            |
| `for-print`             | `bool`     | Asymmetric margins for double-sided printing          |
| `table-of-contents`     | `content`  | TOC element (default: `outline(depth: 3)`)            |
| `codly-aliases`         | `dict`     | Extra codly language aliases, e.g. `("riscv": "asm")` |

## Credits

A ton of layout and typography inspiration and some assets were taken from the
[thesis-en](https://gitlab.mff.cuni.cz/teaching/thesis-templates/thesis-en)
repository by Martin Mareš.

## License

Similar to the `thesis-en` repository:

This package can be freely distributed, used, and modified according to
the [Creative Commons CC-0](https://creativecommons.org/public-domain/cc0/)
license.

The only exception are the faculty logos in the `template` directory, whose use
is governed by the Dean's directive 5/2016 and related regulations.
