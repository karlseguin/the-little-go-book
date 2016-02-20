## About ##
[The Little Go Book](http://openmymind.net/The-Little-Go-Book/) is a free book introducing Go.

The book was written by [Karl Seguin](http://openmymind.net), author of:

* [Scaling Viki](http://openmymind.net/scaling-viki/)
* [The Little Redis Book](http://openmymind.net/2012/1/23/The-Little-Redis-Book/)
* [The Little MongoDB Book](http://openmymind.net/2011/3/28/The-Little-MongoDB-Book/)
* [Foundations of Programming](http://openmymind.net/FoundationsOfProgramming.pdf)

## License ##
The book is freely distributed under the  [Attribution-NonCommercial-ShareAlike 4.0 International](<http://creativecommons.org/licenses/by-nc-sa/4.0/>).

## Translations ##

* [Spanish](https://github.com/raulexposito/the-little-go-book/tree/master/es) by Raúl Expósito

## Formats ##
The book is written in [Markdown](http://daringfireball.net/projects/markdown/) and converted to PDF using [Pandoc](http://johnmacfarlane.net/pandoc/).

The TeX template makes use of [Lena Herrmann's JavaScript highlighter](http://lenaherrmann.net/2010/05/20/javascript-syntax-highlighting-in-the-latex-listings-package).

Kindle and ePub format provided using [Pandoc](http://johnmacfarlane.net/pandoc/).

## Generating books ##
Packages listed below are for Ubuntu. If you use another OS or distribution names would be similar.

### PDF

#### Dependencies

Packages:

* `pandoc`
* `texlive-xetex`
* `texlive-latex-extra`
* `texlive-latex-recommended`

You should have [some fonts](https://github.com/karlseguin/the-little-redis-book/blob/master/common/pdf-template.tex#L11) installed too.
Or you could change them to other ones if you want. Consider that fonts could cause [building troubles](https://github.com/karlseguin/the-little-redis-book/issues/26).

#### Building

Run `make en/go.pdf`.

### ePub

#### Dependencies

Packages:

* `pandoc`

#### Building

Run `make en/go.epub`.

### Mobi

#### Dependencies

Packages:

* `pandoc`

You should have [KindleGen](http://www.amazon.com/gp/feature.html?ie=UTF8&docId=1000765211) installed too.

#### Building

Run `make en/go.mobi`.

## Title Image ##
A PSD of the title image is included. The font used is [Comfortaa](http://www.dafont.com/comfortaa.font).
