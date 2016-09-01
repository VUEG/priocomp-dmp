## Data management plan for priocomp project

This DMP document is written in Markdown and can be compiled into a PDF
using [pandoc](http://pandoc.org/). For styling, this project uses
[panzer](https://github.com/msprev/panzer) as an additional wrapper around
pandoc.

### Editing the DMP

The source file for the data DMP is [priocomp-dmp.md](priocomp-dmp.md) file. It
is written in [Markdown](http://commonmark.org/). All editing of the DMP happens
through this plain text file, which can be edited with any text editor.

### Converting Markdown to other formats

This project uses `make` which is configured in the project
[Makefile](Makefile). Following command will convert the Markdown file into
`.docx`, `.epub`, `.html`, `.odt`, `.pdf` and `.rtf` formats:

```
make
```

All the output files are placed in the sub-directory `build`.

To remove all output files, type:

```
make clean
```

## Contributions

+ Joona Lehtomäki <joona.lehtomaki@gmail.com>
