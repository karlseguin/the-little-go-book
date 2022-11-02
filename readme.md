## About ##
[The Little Go Book](https://openmymind.net/The-Little-Go-Book/) is a free book introducing Go.

The book was written by [Karl Seguin](http://openmymind.net), author of:

* [Scaling Viki](https://openmymind.net/scaling-viki/)
* [The Little Redis Book](https://openmymind.net/2012/1/23/The-Little-Redis-Book/)
* [The Little MongoDB Book](https://openmymind.net/2011/3/28/The-Little-MongoDB-Book/)
* [Foundations of Programming](https://openmymind.net/FoundationsOfProgramming.pdf)

## License ##
The book is freely distributed under the  [Attribution-NonCommercial-ShareAlike 4.0 International](<http://creativecommons.org/licenses/by-nc-sa/4.0/>).

## Translations ##

* [Spanish](https://github.com/raulexposito/the-little-go-book/tree/master/es) by Raúl Expósito
* [Chinese](https://github.com/songleo/the-little-go-book_ZH_CN) by Songleo
* [Traditional Chinese](https://github.com/kevingo/the-little-go-book) by KevinGo
* [Vietnamese](https://github.com/quangnh89/the-little-go-book/blob/master/vi/readme.md) by Quang Nguyễn
* [Italian](https://github.com/francescomalatesta/the-little-go-book-ita) by Francesco Malatesta
* [Russian](https://github.com/sefus/the-little-go-book/blob/master/ru/go.md) by Roman Dolgopolov
* [German](https://github.com/Aaronmacaron/the-little-go-book-de/blob/master/de/go.md) (15% done) by Aaron
* [Amharic](https://github.com/codeethiopia/the-little-go-book-amharic) by codeethiopia
* [Korean](https://github.com/shoebillk/the-little-go-book/blob/master/ko/go.md) by Byounghoon Kim
* [Burmese](https://github.com/nainglinaung/the-little-go-book/blob/master/mm/go.md) By Naing Lin Aung
* [Turkish](https://github.com/umutphp/the-little-go-book) By Umut Işık

## Formats ##
The book is written in [Markdown](http://daringfireball.net/projects/markdown/) and converted to PDF using [Pandoc](http://johnmacfarlane.net/pandoc/).

The TeX template makes use of Lena Herrmann's JavaScript highlighter.

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
