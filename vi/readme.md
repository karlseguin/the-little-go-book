## Giới thiệu ##
[The Little Go Book](http://openmymind.net/The-Little-Go-Book/) là một cuốn sách miễn phí, giới thiệu về ngôn ngữ Go.

Sách được viết bởi [Karl Seguin](http://openmymind.net), là tác giả của:

* [Scaling Viki](http://openmymind.net/scaling-viki/)
* [The Little Redis Book](http://openmymind.net/2012/1/23/The-Little-Redis-Book/)
* [The Little MongoDB Book](http://openmymind.net/2011/3/28/The-Little-MongoDB-Book/)
* [Foundations of Programming](http://openmymind.net/FoundationsOfProgramming.pdf)

## Tác quyền ##
Sách có thể phân phối tự do theo giấy phép  [Attribution-NonCommercial-ShareAlike 4.0 International](<http://creativecommons.org/licenses/by-nc-sa/4.0/>).

## Dịch thuật ##

* [Spanish](https://github.com/raulexposito/the-little-go-book/tree/master/es) by Raúl Expósito
* [Chinese](https://github.com/songleo/the-little-go-book_ZH_CN) by [songleo](https://github.com/songleo)
* [Nội dung tiếng Việt](https://github.com/quangnh89/the-little-go-book/blob/master/vi/go.md) do [Quang Nguyễn](https://github.com/quangnh89) biên dịch.

## Định dạng ##
Sách được viết dưới dạng [Markdown](http://daringfireball.net/projects/markdown/) và được chuyển đổi sang PDF bằng [Pandoc](http://johnmacfarlane.net/pandoc/).

 TeX template dùng [Lena Herrmann's JavaScript highlighter](http://lenaherrmann.net/2010/05/20/javascript-syntax-highlighting-in-the-latex-listings-package).

Định dạng cho Kindle và ePub được cung cấp bởi [Pandoc](http://johnmacfarlane.net/pandoc/).

## Tạo sách ##
Các gói dưới đây dành cho hệ điều hành Ubuntu. Nếu bạn sử dụng một hệ điều hành khác, có thể tìm các gói có tên tương tự.

### PDF

#### Các gói phụ thuộc

Tên gói:

* `pandoc`
* `texlive-xetex`
* `texlive-latex-extra`
* `texlive-latex-recommended`

Bạn nên có sẵn [một số font](https://github.com/karlseguin/the-little-redis-book/blob/master/common/pdf-template.tex#L11).
Bạn có thể tùy chọn một loại font khác cho phù hợp. Một số nguyên nhân [lỗi](https://github.com/karlseguin/the-little-redis-book/issues/26) do fonts.

#### Tạo sách

Chạy `make en/go.pdf`.

### ePub

#### Các gói phụ thuộc

Tên gói:

* `pandoc`

#### Tạo sách

Chạy `make en/go.epub`.

### Mobi

#### Các gói phụ thuộc

Tên gói:

* `pandoc`

Bạn nên cài sẵn [KindleGen](http://www.amazon.com/gp/feature.html?ie=UTF8&docId=1000765211).

#### Tạo sách

Chạy `make en/go.mobi`.

## Ảnh tiêu đề ##
Một file PSD dùng font [Comfortaa](http://www.dafont.com/comfortaa.font) chứa ảnh tiêu đề.
