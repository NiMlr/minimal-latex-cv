Minimal usage example

```shell
# watch out; will install tons of (unneeded) packages
# it is best to extend an existing texlive installation
sudo apt-get install texlive-full
# needs something like inkscape on path for the svg in the example
pdflatex --shell-escape main.tex
```

Feel free to make PRs, e.g., for a letter/a4 or modern/classical switch.
