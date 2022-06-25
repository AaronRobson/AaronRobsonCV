# AaronRobsonCV

## Instructions

### GNU/Linux

#### Using pdflatex
```sh
sudo apt-get install texlive
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
Run this to find what the next tag should be:
```sh
git tag
```

Then tag and upload like this:
```sh
git tag vx.x
git push --tags
```

Raise the PR in github, but don't merge it yet (https://stackoverflow.com/questions/60597400/how-to-do-a-fast-forward-merge-on-github).

Then merge locally with:
```sh
git checkout master && git merge your-new-branch --ff-only
```

And upload like this:
```sh
git checkout master
git push
```
