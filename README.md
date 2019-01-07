# AaronRobsonCV

[![Build Status](https://travis-ci.org/AaronRobson/AaronRobsonCV.svg?branch=master)](https://travis-ci.org/AaronRobson/AaronRobsonCV)

## Instructions

### GNU/Linux

```console
sudo apt-get install texlive
wget -O res.cls http://www.ctan.org/tex-archive/macros/latex/contrib/resume/res.cls
pdflatex aaronrobson-cv.tex
```

aka
```console
make
```

### Windows

1. Download [TeXstudio](http://texstudio.sourceforge.net/).
2. Open aaronrobson-cv.tex in it.
3. Build with F5.
4. Allow it to download the res.cls package.

### To push to the [aaronrobson.uk/cv](http://www.aaronrobson.uk/cv/) website
Run this to find what the next tag should be:
```console
git tag
```

Then tag and upload like this:
```console
git tag vx.x
git push --tags
```
