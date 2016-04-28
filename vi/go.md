# Thông tin sách

## Bản quyền

The Little Go Book sử dụng bản quyền Attribution-NonCommercial-ShareAlike 4.0 International license. Bạn không cần trả tiền để mua quyển sách này.

Bạn được tự do sao chép, phát hành, chỉnh sửa hoặc hiển thị nội dung cuốn sách. Tuy nhiên, tôi yêu cầu bạn để tên tác giả, Karl Seguin, và không sử dụng cho mục đích thương mại.

Bạn có thể đọc toàn bộ nội dung của bản quyền tại địa chỉ này:

<http://creativecommons.org/licenses/by-nc-sa/4.0/>

## Phiên bản mới nhất

Phên bản mới nhất của sách có thể đọc tại đây:
<http://github.com/karlseguin/the-little-go-book>

# Giới thiệu
Tôi luôn luôn có một mối liên hệ thích - không thích khi nói đến việc học ngôn ngữ mới. Một mặt, ngôn ngữ rất gần với những gì chúng ta làm, ngay cả những thay đổi nhỏ có thể có tác động nhìn thấy được. Một thay đổi nhỏ sẽ ảnh hưởng tới cách bạn lập trình và cách bạn suy nghĩ trong các ngôn ngữ khác. Ngôn ngữ mới được cài tiến. Học từ khoá mới, hệ thống kiểu, phong cách viết mã cũng như các thư viện mới, các cộng đồng và mô hình được xem là một công việc không nhỏ. So với tất cả mọi thứ khác chúng ta phải học, học ngôn ngữ mới thường được xem là một đầu tư tốn kém về mặt thời gian.

Do đó, chúng ta *phải* cố gắng. Chúng ta *phải* sẵn sàng để thực hiện các bước thay đổi vì, một lần nữa, ngôn ngữ là nền tảng của những gì chúng ta làm. Mặc dù những thay đổi này thường tăng thêm, chúng có xu hướng tác động tới phạm vi rộng và chúng ảnh hưởng đến năng suất, khả năng đọc, hiệu suất, khả năng kiểm thử, quản lý phụ thuộc, xử lý lỗi, tài liệu, hồ sơ, cộng đồng phát triển, thư viện chuẩn, ... Nói theo cách tích cực *death by a thousand cuts*?( Người dịch: Đây là tên của một cuốn sách) 

Chúng ta có một câu hỏi quan trọng: **Vì sao lại chọn Go?** Đối với tôi, có hai lý do hấp dẫn. Việc đầu tiên là nó là một ngôn ngữ khá đơn giản với một thư viện tiêu chuẩn. Cải tiến của Go là để đơn giản hóa những thứ phức tạp được thêm vào ngôn ngữ lập trình trong vài thập kỷ gần đây. Lý do khác là đối với nhiều nhà phát triển, nó sẽ bổ sung cho kho công cụ hiện có.

Go được xây dựng như một ngôn ngữ  lập trình hệ thống (ví dụ, hệ điều hành, trình điều khiển thiết bị) và do đó nó hướng tới các lập trình viên quen với C và C++. Theo nhóm phát triển Go, điều mà tôi tin là đúng, chính các nhà phát triển ứng dụng, không phải người phát triển hệ thống, trở thành những người sử dụng Go chủ yếu. Tại sao? Tôi không thể nói thay cho các nhà phát triển hệ thống, nhưng đối với những người trong chúng ta xây dựng trang web, dịch vụ, các ứng dụng máy tính để bàn, các nhu cầu mới xuất hiện cho một lớp của các hệ thống mà đứng ở giữa các ứng dụng hệ thống cấp thấp và ứng dụng cấp cao hơn.

Có thể đó là hệ thống nhắn tin, bộ đệm, phân tích dữ liệu tính toán lớn, chươn trình dòng lệnh, ghi log hoặc giám sát. Tôi không biết các cách khác nhau để đặt tên cho nó, nhưng trong quá trình làm việc của tôi, các hệ thống ngày càng trở nên phức tạp và phải phục vụ nhiều hoạt động đồng thời, việc cấp phát tài nguyên cho nhu cầu mở rộng hệ thống tăng lên. Bạn *có thể* xây dựng hệ thống như vậy với Ruby hay Python hay thứ gì khác (nhiều người làm thế), nhưng các loại hệ thống này có thể được hưởng lợi từ một hệ thống kiên cố hơn và hiệu suất cao hơn. Tương tự như vậy, bạn *có thể* sử dụng Go để xây dựng các trang web (nhiều người làm thế), nhưng tôi vẫn thích, Node hay Ruby cho hệ thống như vậy.

Có những lĩnh vực mà Go tỏ ra vượt trội. Ví dụ, một chương trình Go sẽ không cần thư viện đi kèm. Bạn không cần phải lo lắng nếu người dùng của bạn đã cài đặt Ruby hoặc JVM hoặc quan tâm tới phiên bản của chúng. Vì lý do này, Go ngày càng trở nên phổ biến như là một ngôn ngữ cho chương trình giao diện dòng lệnh và các loại chương trình khác bạn cần triển khai (ví dụ, một chương trình thu thập log).

Rõ ràng, học Go là một phương án hợp lý. Bạn sẽ không phải mất nhiều giờ học hoặc thậm chí làm chủ Go, và bạn sẽ đạt được kết quả thiết thực.

## Lưu ý của tác giả

Tôi đã lưỡng lự khi viết quyển sách này vì vài lý do. Đầu tiên là tài liệu gốc của Go, đặc biệt là [Effective Go](https://golang.org/doc/effective_go.html), rất hay.

Một cản trở khác là sự khó chịu của tôi lúc viết một cuốn sách về một ngôn ngữ lập trình. Khi tôi viết The Little MongoDB Book, tôi đã giả định rằng hầu hết người đọc hiểu những điều cơ bản của cơ sở dữ liệu quan hệ và mô hình hóa. Với The Little Redis Book, có thể giả định bạn đã quen với lưu và đọc dữ liệu từ một khóa.

Khi tôi bắt đầu viết các đoạn và các chương đầu tiên, tôi biết rằng tôi sẽ không thể  giả định tương tự thế. Cần bao nhiêu thời gian để mô tả về interface cho các độc giả về khái niệm này, trong khi những người khác sẽ chỉ cần biết *Go hỗ trợ interface?* Cuối cùng, tôi quyết định các bạn sẽ cho tôi biết phần nào của quyển sách quá hời hợt trong khi phần nào lại quá chi tiết.

# Mở đầu

Nếu bạn đang tìm cách để thử sử dụng Go, bạn nên xem qua [Go Playground](http://play.golang.org/). Nó cho phép người dùng chạy mã trực tiếp trên trình duyệt mà không cần phải cài đặt bất cứ thứ gì. Đây cũng là cách chung nhất để chia sẻ mã nguồn Go trên các trang cộng đồng như [Diễn đàn thảo luận của Go](https://groups.google.com/forum/#!forum/golang-nuts) và những nơi như StackOverflow.

Cài đặt Go khá đơn giản. Bạn có thể cài đặt nó từ mã nguồn, nhưng tôi khuyên nên sử dụng các bộ được biên dịch sẵn từ trang chủ của Go. Khi bạn tải [Go từ trang chủ](https://golang.org/dl/), bạn sẽ thấy các bộ cài đặt cho nhiều nền tảng khác nhau.

Trừ các mã đơn giản, Go được thiết kế để làm việc khi mã của bạn được đặt trong một workspace. workspace là một thư mục gồm các thư mục con là `bin`, `pkg` và `src` . Bạn cũng có thể thiết lập workspace theo cách riêng của mình, nhưng đừng làm thế.

Bình thường, tôi đặt các dự án của mình bên trọng thư mục `~/code`. Ví dụ, `~/code/blog` chứa blog của tôi. Với Go, workspace của tôi là `~/code/go` và blog viết bằng Go của tôi sẽ đặt tại `~/code/go/src/blog`. Vì phải gõ phím nhiều nên tôi sử dụng symbolic link để có thể truy xuất trực tiếp từ  `~/code/blog`:

    ln -s ~/code/go/src/blog ~/code/blog

Tóm lại, tạo một thư mục `go` với một thư mục con `src` ở bất cứ chỗ nào bạn muốn đặt các project của bạn.

## OSX / Linux
Tải file `tar.gz` tương ứng với nền tảng của bạn. Với OSX, bạn sẽ tải các file `go#.#.#.darwin-amd64-osx10.8.tar.gz`, với `#.#.#` là phiên bản mới nhất Go.

Giải nén file vào thư mục `/usr/local` bằng lệnh `tar -C /usr/local -xzf go#.#.#.darwin-amd64-osx10.8.tar.gz`.

Thiết lập 2 biến môi trường (environment variables):

  1. `GOPATH` trỏ tới workspace, trong trường hợp này, đó là `$HOME/code/go`.
  2. Chúng ta cần thêm đường dẫn tới thư mục chứa file chạy của Go vào biến `PATH`.

Bạn có thể thiết lập thông qua 2 lệnh shell sau:

    echo 'export GOPATH=$HOME/code/go' >> $HOME/.profile
    echo 'export PATH=$PATH:/usr/local/go/bin' >> $HOME/.profile

Bạn sẽ cần phải kích hoạt các biến môi trường này. Bạn đóng và mở lại shell, sau đó chạy lệnh `source $HOME/.profile`.

Gõ `go version` và bạn sẽ nhận được kết quả hiển thị như sau `go version go1.3.3 darwin/amd64`.

## Windows
Tải phiên bản mới nhất của go, dạng file zip. Nếu bạn sử dụng hệ điều hành 64 bit, bạn sẽ tải file có dạng `go#.#.#.windows-amd64.zip`, với `#.#.#` là phiên bản mới nhất Go.

Giải nén vào một thư mục bất kì, ví dụ là `c:\Go`.

Thiết lập 2 biến môi trường (environment variables):

  1. `GOPATH` trỏ tới workspace, trong trường hợp này, đó là `c:\users\goku\work\go`.
  2. Thêm `c:\Go\bin` vào biến môi trường `PATH`.

Biến môi trường có thể được thiết lập qua nút `Environment Variables` trong thẻ `Advanced` của `System` control panel. Một số phiên bản Windows cung cấp nơi thiết lập này ở  `Advanced System Settings` bên trong `System` control panel.

Mở cmd.exe và gõ `go version`. Bạn sẽ nhận được kết quả hiển thị như sau `go version go1.3.3 windows/amd64`.

# Chương 1 - Cơ bản

Go là ngôn ngữ biên dịch, liên kết tĩnh, có cú pháp giống C và trình tự động dọn dẹp bộ nhớ (garbage collection - GC). Điều đó nghĩa là gì?

## Biên dịch

Biên dịch là quá trình chuyển đổi mã nguồn sang một dạng ngôn ngữ ở mức thấp hơn hoặc dạng hợp ngữ (assembly) (trong trường hợp của Go), hoặc một dạng ngôn ngữ trung gian khác (như Java hoặc C#).

Ngôn ngữ biên dịch có thể gây khó chịu nếu biên dịch chậm. Thật khó để thực hiện các bước nhỏ một cách nhanh chóng, nếu bạn phải mất hàng phút hoặc hàng giờ đồng hộ để đợi chương trình dịch xong. Tốc độ biên dịch là một trong những mục tiêu chính khi thiết kế Go. Đây là tin tốt cho những người làm việc trên các dự án lớn cũng như những người trong chúng ta quen với những phản hồi nhanh chóng được cung cấp bởi ngôn ngữ thông dịch.

Ngôn ngữ biên dịch sẽ hướng tới chương trình chạy nhanh hơn và file thực thi có thể chạy độc lập (ít nhất, điều đó đúng với các ngôn ngữ giống C, C++ và Go dịch trực tiếp ra hợp ngữ).

## Kiểu dữ liệu cố định

Kiểu dữ liệu cố định nghĩa là các biến phải được xác định kiểu (int, string, bool, []byte, ...). Trình biên dịch sẽ xác định các kiểu dữ liệu khi biến được khai báo, hoặc, trong nhiều trường hợp, cho phép trình biên dịch suy ra các kiểu (chúng ta sẽ xem ví dụ sau).

Có rất nhiều thử cần nói về kiểu dữ liệu cố định, nhưng tôi tin rằng có một cách tốt hơn là đọc mã nguồn. Nếu bạn đang sử dụng kiểu dữ liệu động, bạn có thể thấy điều này phức tạp. Bạn không sai, nhưng ưu điểm đặc biệt là khi bạn đặt kiểu dữ liệu tĩnh với biên dịch. Cả hai tương ứng với nhau. Một trình biên dịch có thể phát hiện các vấn đề sai cú pháp đơn thuần cũng như thực hiện tối ưu hóa hơn nữa với kiểu dữ liệu cố định.

## Cú pháp giống C

Nói rằng một ngôn ngữ có cú pháp giống C có nghĩa là nếu bạn quen với một ngôn ngữ họ C khác như C, C++, Java, JavaScript and C#, thì bạn sẽ thấy Go rất quen thuộc. Ví dụ, `&&` được sử dụng như toán tử AND, `==` được sử dụng để so sánh bằng, `{` and `}` là hai kí tự bắt đầu và kết thúc, một mảng được đánh chỉ số từ 0.

Cú pháp giống C có nghĩa là dấu chấm phẩy dùng để kết thúc một dòng và dấu ngoặc đơn ( ) được dùng khi mô tả các biểu thức điều kiện. Go không hỗ trợ cả hai, mặc dù ngoặc vẫn còn được sử dụng để xác định quyền ưu tiên. Ví dụ, một lệnh `if` trông như thế này:

```go
if name == "Leto" {
  print("the spice must flow")
}
```

Trong các trường hợp phức tạp, dấu ngoặc rất hữu dụng:

```go
if (name == "Goku" && power > 9000) || (name == "gohan" && power < 4000)  {
  print("super Saiyan")
}
```

Ngoài ra, Go gần với C hơn so với C# hoặc Java - không chỉ về mặt cú pháp, mà về mục đích. Điều đó phản ánh sự trong sáng và đơn giản của ngôn ngữ, mà hy vọng sẽ bắt đầu trở nên rõ ràng hơn khi bạn tìm hiểu nó.

## Garbage Collected (GC)

Một số biến, khi tạo ra, dễ dàng xác định được quá trình tồn tại của nó. Một biến cục bộ cho một hàm, ví dụ, sẽ biến mất khi thoát ra khỏi hàm. Trong trường hợp khác, nó không phải là quá rõ ràng -- ít nhất là đối với một chương trình biên dịch. Ví dụ, thời gian sống của một biến được trả về bởi một hàm hoặc tham chiếu bởi các biến và các đối tượng khác có thể khó xác định. Nếu không có GC, lập trình viên phải tự giải phóng bộ nhớ các biến không cần thiết. Bằng cách nào? Trong C, bạn sẽ dùng `free(str);` .

Ngôn ngữ có GC (ví dụ, Ruby, Python, Java, JavaScript, C #, Go) có thể theo dõi những điều này và giải phóng bộ nhớ khi chúng không còn được sử dụng. GC sẽ làm chương trình nặng hơn, nhưng nó cũng giúp loại bỏ một số lỗi nghiêm trọng.

## Chạy mã Go

Hãy bắt đầu cuộc hành trình của chúng ta bằng cách tạo ra một chương trình đơn giản và học làm cách nào để biên dịch và thực thi nó. Mở soạn thảo văn bản yêu thích của bạn và viết mã sau đây:

```go
package main

func main() {
  println("it's over 9000!")
}
```

Lưu tập tin là `main.go`. Bây giờ, bạn có thể lưu nó bất cứ nơi nào bạn muốn; chúng ta không cần đặt trong workspace của Go cho ví dụ đơn giản này.

Tiếp theo, mở một shell/command prompt và chuyển đến thư mục mà bạn đã lưu tập tin. Đối với tôi, điều đó có nghĩa là gõ `cd ~/code`.

Cuối cùng, chạy chương trình bằng cách nhập:

```
go run main.go
```

Nếu mọi thứ hoạt động đúng, bạn sẽ nhìn thấy dòng *it's over 9000!*.

Nhưng khoan đã, bước biên dịch là bước nào? `go run` là một lệnh cho phép biên dịch *và* chạy. Nó sử dụng thư mục tạm để biên dịch chương trình, thực thi nó và xóa chương trình tạm. Bạn có thể thấy vị trí của thư mục tạm bằng cách chạy lệnh sau:

```
go run --work main.go
```

Để biên dịch ra file thực thi, sử dụng `go build`:

```
go build main.go
```

Lệnh này sẽ sinh ra một file thực thi có tên `main` và bạn có thể dùng nó để chạy. Trên Linux / OSX, đừng quên thêm dot-slash trước file thực thi, do đó bạn cần gõ là `./main`.

Trong khi lập trình, bạn có thể sử dụng `go run` hoặc `go build`. Khi triển khai sản phẩm, tất nhiên, bạn chỉ biên dịch ra file nhị phân bằng lệnh `go build` và thực thi nó.

### Main

Hi vọng rằng, đoạn mã vừa rồi dễ hiểu. Chúng ta đã tạo một hàm và in ra một xâu bằng hàm có sẵn `println`. `go run` liệu có biết vị trí để bắt đầu thực thi hay không, vì chúng ta chỉ có một file duy nhất? Không. Trong Go, điểm bắt đầu của chương trình (the entry point) là một hàm có tên `main` bên trong gói (package) `main`.

Chúng ta sẽ nói thêm về các gói trong các chương kế tiếp. Bây giờ, khi chúng ta tập trung vào các phần cơ bản của Go, chúng ta sẽ viết mã trong gói `main`.

Nếu bạn muốn, bạn có thể thay đổi mã và tên của gói. Khi chạy lệnh `go run` và bạn sẽ nhận được một thông báo lỗi. Sau đó, đổi tên gói trở lại thành `main` nhưng vẫn giữ nguyên tên hàm. Bạn sẽ nhận một thông báo lỗi khác. Thử các thay đổi trên nhưng sử dụng lệnh `go build`. Chú ý rằng khi mã nguồn được biên dịch, không có một entry point nào. Khi biện dịch các thư viện, điều này là cần thiết.

## Imports

Go có một lượng lớn các hàm có sẵn, giống như `println`, có thể dùng mà không cần tham chiếu. Chúng ta không thể làm gì nhiều hơn nếu không sử dụng các thư viện chuẩn của Go và các thư viện bên ngoài. Trong Go, từ khóa `import` được dùng để xác định một gói mà đoạn code bên trong file có tham chiếu tới.

Hãy thay đổi chương trình thành:

```go
package main

import (
  "fmt"
  "os"
)

func main() {
  if len(os.Args) != 2 {
    os.Exit(1)
  }
  fmt.Println("It's over ", os.Args[1])
}
```

Bạn có thể chạy nó bằng lệnh:

```
go run main.go 9000
```

Chúng ta bây giờ đã dùng hai thư viện chuẩn của Go: `fmt` và `os`. Chúng ta cũng được giới thiệu một hàm dựng sẵn khác `len`. `len` trả về kích thước của một chuỗi, hoặc số lượng phần tử trong một từ điển (dictionary), hoặc, như chúng ta thấy, số lượng phần tử trong một mảng (array). Nếu bạn hỏi vì sao chúng ta cần 2 tham số cho chương trình, vì tham số thứ nhất -- ở vị trí 0 -- là đường dẫn tới file thực thi hiện tại. (Hãy tự thay đổi chương trình và hiển thị nó.)

Bạn sẽ nhận thấy chúng ta thêm đằng trước của tên hàm là tên của gói, ví dụ, `fmt.Println`. Điều này khác so với nhiều ngôn ngữ khác. Chúng ta sẽ học thêm về các gói ở các chương sau. Bây giờ, cần biết làm thế nào để thêm một gói và sử dụng nó.

Go là một ngôn ngữ  cho phép thêm các gói khá nghiêm ngặt. Nó sẽ không biên dịch nếu bạn import một gói nhưng lại không sử dụng. Thử chạy lệnh sau:

```go
package main

import (
  "fmt"
  "os"
)

func main() {
}
```

Bạn sẽ có 2 lỗi về `fmt` và `os` được import nhưng không được dùng. Có bực mình không? Chắc chắn. Theo thời gian, bạn sẽ quen với nó (nó vẫn gây bực mình). Go quản lý nghiêm việc này do việc thêm các gói không dùng có thể khiến quá trình biên dịch bị chậm; thật sự thì tôi không đồng ý với điều này.

Một điều khác cần lưu ý là Go có bộ thư viện chuẩn được tài liệu hóa khá đầy đủ. Bạn có thể vào <http://golang.org/pkg/fmt/#Println>  để học cách sử dụng `Println`. Bạn cũng có thể click vào tiêu đề để tham khảo mã nguồn, đến đầu trang để tham khảo các cách format của hàm.

Nếu bạn không có internet, bạn có thể đọc tài liệu tại máy tính của mình thông qua cách sau:

```
godoc -http=:6060
```

và dùng trình duyệt để duyệt tới `http://localhost:6060`

## Biến và khai báo

Hãy bắt đầu khai báo một biến số bằng cách *bạn khai báo và gán giá trị cho một biến bằng cách x = 4.* Thật không may, mọi thứ phức tạp hơn trong Go. Chúng ta bắt đầu bằng cách xem xét một ví dụ đơn giản. Sau đó, ở chương sau, chúng ta sẽ giải thích một lần nữa khi xem cách tạo và sử dụng cấu trúc. Tuy nhiên, nó có thể sẽ mất thời gian trước khi bạn thực sự cảm thấy quen với nó.

Bạn có thể đang nghĩ *Ồ! Sao lại phức tạp thế?* Hãy xem một vài ví dụ đơn giản.

Cách tường minh nhất để khai báo và gán một biến trong Go rất dài dòng:

```go
package main

import (
  "fmt"
)

func main() {
  var power int
  power = 9000
  fmt.Printf("It's over %d\n", power)
}
```

Ở đây, chúng ta khai báo một biến `power` có kiểu `int`. Mặc định, Go gán giá trị 0 cho các biến. Số nguyên được gán `0`, biến logic là `false`, xâu thì gán `""`. Tiếp theo, chúng ta gán `9000` cho biến `power`. Chúng ta có thể ghép hai dòng thành một:

```go
var power int = 9000
```

Tuy nhiên, vẫn quá nhiều thứ phải gõ. Go có một cách khai báo biến ngắn gọn, thông qua toán tử khai báo, `:=`, từ đó kiểu dữ liệu được nội suy:

```go
power := 9000
```

Điều tiện lợi này cũng sử dụng được với hàm:

```go
func main() {
  power := getPower()
}

func getPower() int {
  return 9001
}
```

Cần nhớ rằng `:=` được dùng để khởi tạo biến và gán giá trị cho nó. Vì sao? Vì một biến không thể khai báo hai lần (không phải trong cùng một phạm vi). Nếu bạn thử chạy đoạn mã sau, bạn sẽ gặp lỗi.

```go
func main() {
  power := 9000
  fmt.Printf("It's over %d\n", power)

  // COMPILER ERROR:
  // no new variables on left side of :=
  power := 9001
  fmt.Printf("It's also over %d\n", power)
}
```

Chương trình biên dịch sẽ thông báo *no new variables on left side of :=*. Điều này có nghĩa là chúng ta khai báo biến lần đầu tiên với toán tử `:=` nhưng lần thứ hai tác động vào biến, chúng ta dùng toán tử gán `=`. Điều này rất quan trọng, nó khiến bạn nhớ nhiều hơn khi sử dụng chuyển đổi giữa 2 loại toán tử.

Nếu bạn đọc một thông báo lỗi, bạn sẽ nhận thấy thông báo sử dụng số nhiều khi viết về các biến: *variables*. Điều này xảy ra do Go cho phép bạn gán nhiều giá trị vào nhiều biến khác nhau cùng một lúc (sử dụng `=` hoặc `:=`):


```go
func main() {
  name, power := "Goku", 9000
  fmt.Printf("%s's power is over %d\n", name, power)
}
```

Miễn là có một biến số mới, thì đều có thể dùng `:=`. Xem đoạn mã sau:

```go
func main() {
  power := 1000
  fmt.Printf("default power is %d\n", power)

  name, power := "Goku", 9000
  fmt.Printf("%s's power is over %d\n", name, power)
}
```

Mặc dù `power` được sử dụng 2 lần với toán tử  `:=`, trình biên dịch sẽ không phát sinh lỗi ở lần thứ 2, nó phát hiện ra một biến khác, `name`, là một biến mới và sử dụng `:=` là hợp lệ. Tuy nhiên, bạn không thể đổi kiểu của biến `power`. Nó được khai báo (không tường minh) là một số nguyên (integer) và vì thế chỉ có thể được gán giá trị là số nguyên.

Bây giờ, thứ cuối cùng cần xem xét, giống như import, Go không cho phép bạn khai báo biến mà không sử dụng. Ví dụ,

```go
func main() {
  name, power := "Goku", 1000
  fmt.Printf("default power is %d\n", power)
}
```

sẽ không biên dịch được do biến `name` được khai báo nhưng không được sử dụng. Giống như các khai báo import không được dùng, khai báo biến thừa sẽ  không làm chậm lại, nhưng tôi nghĩ rằng điều đó khiến cho code sạch sẽ và dễ đọc hơn.

Tóm lại, để khai báo và gán một biến, cần nhớ: bạn sẽ sử dụng khai báo `var NAME TYPE` khi khai báo một biến và gán giá trị 0 cho nó, `NAME := VALUE` khi khái báo một biến và gán giá trị, và `NAME = VALUE` khi gán giá trị cho một biến đã khai báo trước đó.

## Khai báo hàm

Một hàm có thể trả về một hoặc nhiều giá trị. Hãy xem xét ba hàm sau: một hàm không có giá trị trả về, một hàm trả về một giá trị, một hàm trả về hai giá trị.

```go
func log(message string) {
}

func add(a int, b int) int {
}

func power(name string) (int, bool) {
}
```

Chúng ta sử dụng hàm cuối cùng như sau:

```go
value, exists := power("goku")
if exists == false {
  // handle this error case
}
```

Thi thoảng, bạn chỉ quan tâm đến một trong số các giá trị trả về. Trong trường hợp này, bạn gán các giá trị khác là `_`:

```go
_, exists := power("goku")
if exists == false {
  // handle this error case
}
```

Điều này không phải chỉ là một quy ước. `_`, ( blank identifier), đại diện cho giá trị trả về không được gán. Nó cho phép bạn sử dụng `_` mọi chố, bất kể kiểu dữ liệu trả về là gì.

Cuối cùng, có một lưu ý trong khi khai báo hàm, nếu các tham số của hàm có cùng một kiểu dữ liệu, thì có thể dụng cú pháp dạng ngắn để viết:

```go
func add(a, b int) int {

}
```

Hàm có thể trả về nhiều giá trị được sử dụng thường xuyên. Bạn cũng sẽ thường xuyên sử dụng `_` để loại bỏ một giá trị. 

## Trước khi đọc tiếp

Chúng ta đã xem một số ví dụ rời rạc trong chương này. Chúng ta sẽ dần dần xây dựng ví dụ lớn hơn và sẽ lắp ghép các mảnh với nhau.

Nếu bạn quen với một ngôn ngữ động, sự phức tạp của các kiểu dữ liệu và khai báo có thể có vẻ khiến cho chương trình sử dụng ngôn ngữ kém hiệu quả hơn. Tôi không đồng ý với bạn. Đối với một số hệ thống, ngôn ngữ động là khá hiệu quả.

Nếu bạn quen với một ngôn ngữ kiểu tĩnh, có lẽ bạn đang cảm thấy thoải mái với Go. Nội suy ra kiểu dữ liệu và hàm có nhiều giá trị trả về khá hay (mặc dù không phải chỉ Go mới có). Hy vọng rằng khi chúng ta tìm hiểu thêm, bạn sẽ thấy cú pháp trong sáng và ngắn gọn của nó.
