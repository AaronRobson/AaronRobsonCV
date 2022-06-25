# AaronRobsonCV

## Instructions

### GNU/Linux

#### Using pdflatex
```bash
sudo apt-get install texlive
wget -O res.cls http://www.ctan.org/tex-archive/macros/latex/contrib/resume/res.cls
pdflatex aaronrobson-cv.tex
```

#### Using docker
```bash
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
```bash
make
```

### Windows

1. Download [TeXstudio](http://texstudio.sourceforge.net/).
2. Open `aaronrobson-cv.tex` in it.
3. Build with `F5`.
4. Allow it to download the `res.cls` package.

### To push to the [aaronrobson.uk/cv](http://www.aaronrobson.uk/cv/) website
Run this to find what the next tag should be:
```bash
git tag
```

Then tag and upload like this:
```bash
git tag vx.x
git push --tags
```
