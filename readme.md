## За Книгата ##
[The Little Go Book](http://openmymind.net/The-Little-Go-Book/) е свободно достъпна книга представяща Go.

Книгата е написана от [Karl Seguin](http://openmymind.net), автор на:

* [Scaling Viki](http://openmymind.net/scaling-viki/)
* [The Little Redis Book](http://openmymind.net/2012/1/23/The-Little-Redis-Book/)
* [The Little MongoDB Book](http://openmymind.net/2011/3/28/The-Little-MongoDB-Book/)
* [Foundations of Programming](http://openmymind.net/FoundationsOfProgramming.pdf)

## Лиценз ##
Тази книга е свободно разпространявана под линценза на [Attribution-NonCommercial-ShareAlike 4.0 International](<http://creativecommons.org/licenses/by-nc-sa/4.0/>).

## Преводи ##

* [Испански](https://github.com/raulexposito/the-little-go-book/tree/master/es) направен от Raúl Expósito
* [Китайски](https://github.com/songleo/the-little-go-book_ZH_CN) направен от Songleo
* [Традиционен Китайски](https://github.com/kevingo/the-little-go-book) направен от KevinGo
* [Виетнамски](https://github.com/quangnh89/the-little-go-book/blob/master/vi/readme.md) направен от Quang Nguyễn
* [Италиански](https://github.com/francescomalatesta/the-little-go-book-ita) направен от Francesco Malatesta
* [Руски](https://github.com/sefus/the-little-go-book/blob/master/ru/go.md) направен от Roman Dolgopolov

## Формати ##
Книгата е написана с помоща на [Markdown](http://daringfireball.net/projects/markdown/) и конвертирана към PDF използвайки [Pandoc](http://johnmacfarlane.net/pandoc/).

The TeX template makes use of [Lena Herrmann's JavaScript highlighter](http://lenaherrmann.net/2010/05/20/javascript-syntax-highlighting-in-the-latex-listings-package).

Kindle and ePub format provided using [Pandoc](http://johnmacfarlane.net/pandoc/).

## Generating books ##
Пакетите показани по-доло са за Ubuntu. Ако ползвате друга Операционна Система или дистрибуция ще бъдат подобни.

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
