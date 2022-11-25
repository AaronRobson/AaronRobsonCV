# AaronRobsonCV

## Instructions

### GNU/Linux

#### Using pdflatex
```sh
sudo apt-get install texlive-latex-extra
wget -O res.cls http://www.ctan.org/tex-archive/macros/latex/contrib/resume/res.cls
pdflatex aaronrobson-cv.tex
```

#### Using docker
```sh
docker run --rm -i \
    --user $(id -u ${USER}):$(id -g ${USER}) \
    --net=none \
    --read-only \
    -v $(pwd):/data \
    blang/latex:ctanbasic \
    pdflatex aaronrobson-cv.tex
```

#### Automatically
Use locally installed `pdflatex` if present and if not try `docker`.
```sh
make
```

### Windows

1. Download [TeXstudio](http://texstudio.sourceforge.net/).
2. Open `aaronrobson-cv.tex` in it.
3. Build with `F5`.
4. Allow it to download the `res.cls` package.

### To push to the [aaronrobson.uk/cv](http://www.aaronrobson.uk/cv/) website
Make a change in a branch and push to github.
Have the PR merged to master.
A sutiable semantic version should be produced and the release produced here
https://github.com/AaronRobson/AaronRobsonCV/releases/latest/
