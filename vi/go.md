# Thông tin sách

## Quyền tác giả

The Little Go Book sử dụng bản quyền Attribution-NonCommercial-ShareAlike 4.0 International license. Bạn không cần trả tiền để mua quyển sách này.

Bạn được tự do sao chép, phát hành, chỉnh sửa hoặc hiển thị nội dung cuốn sách. Tuy nhiên, tôi yêu cầu bạn để tên tác giả, Karl Seguin, và không sử dụng cho mục đích thương mại.

Bạn có thể đọc toàn bộ nội dung của bản quyền tại địa chỉ này:

<http://creativecommons.org/licenses/by-nc-sa/4.0/>

## Phiên bản mới nhất

Phên bản mới nhất của sách có thể đọc tại đây:
<http://github.com/karlseguin/the-little-go-book>

# Giới thiệu
Tôi luôn quan tâm tới thích - không thích khi nói đến việc học ngôn ngữ mới. Một mặt, ngôn ngữ rất gần với những gì chúng ta làm, ngay cả những thay đổi nhỏ có thể có tác động nhìn thấy được. Một thay đổi nhỏ sẽ ảnh hưởng tới cách bạn lập trình và cách bạn suy nghĩ trong các ngôn ngữ khác. Ngôn ngữ mới được cài tiến. Học từ khoá mới, hệ thống kiểu, phong cách viết mã cũng như các thư viện mới, các cộng đồng và mô hình được xem là một công việc không nhỏ. So với tất cả mọi thứ khác chúng ta phải học, học ngôn ngữ mới thường được xem là một đầu tư tốn kém về mặt thời gian.

Do đó, chúng ta *phải* cố gắng. Chúng ta *phải* sẵn sàng để thực hiện các bước thay đổi vì, một lần nữa, ngôn ngữ là nền tảng của những gì chúng ta làm. Mặc dù những thay đổi này thường tăng thêm. Chúng có xu hướng tác động tới phạm vi rộng và chúng ảnh hưởng đến năng suất, khả năng đọc, hiệu suất, khả năng kiểm thử, quản lý phụ thuộc, xử lý lỗi, tài liệu, hồ sơ, cộng đồng phát triển, thư viện chuẩn, ... Nói theo cách tích cực *death by a thousand cuts*? (Người dịch: Đây là tên của một cuốn sách).

Chúng ta có một câu hỏi quan trọng: **Vì sao lại chọn Go?** Đối với tôi, có hai lý do hấp dẫn. Việc đầu tiên là nó là một ngôn ngữ khá đơn giản với một thư viện tiêu chuẩn. Cải tiến của Go là đơn giản hóa những thứ phức tạp được thêm vào ngôn ngữ lập trình trong vài thập kỷ gần đây. Lý do khác là đối với nhiều nhà phát triển, nó sẽ bổ sung cho kho công cụ hiện có.

Go được xây dựng như một ngôn ngữ  lập trình hệ thống (ví dụ, hệ điều hành, trình điều khiển thiết bị) và do đó nó hướng tới các lập trình viên quen với C và C++. Theo nhóm phát triển Go, điều mà tôi tin là đúng, chính các nhà phát triển ứng dụng, không phải người phát triển hệ thống, trở thành những người sử dụng Go chủ yếu. Tại sao? Tôi không thể nói thay cho các nhà phát triển hệ thống, nhưng đối với những người trong chúng ta xây dựng trang web, dịch vụ, các ứng dụng máy tính để bàn, các nhu cầu mới xuất hiện cho một lớp của các hệ thống mà đứng ở giữa các ứng dụng hệ thống cấp thấp và ứng dụng cấp cao hơn.

Có thể đó là hệ thống nhắn tin, bộ đệm, phân tích dữ liệu tính toán lớn, chương trình dòng lệnh, ghi log hoặc giám sát. Tôi không biết các cách khác nhau để đặt tên cho nó, nhưng trong quá trình làm việc của tôi, các hệ thống ngày càng trở nên phức tạp và phải phục vụ nhiều hoạt động đồng thời, việc cấp phát tài nguyên cho nhu cầu mở rộng hệ thống tăng lên. Bạn *có thể* xây dựng hệ thống như vậy với Ruby hay Python hay thứ gì khác (nhiều người làm thế), nhưng các loại hệ thống này có thể được hưởng lợi từ một hệ thống kiên cố hơn và hiệu suất cao hơn. Tương tự như vậy, bạn *có thể* sử dụng Go để xây dựng các trang web (nhiều người chọn cách này), nhưng tôi vẫn thích, Node hay Ruby cho hệ thống như vậy.

Có những lĩnh vực mà Go tỏ ra vượt trội. Ví dụ, một chương trình Go sẽ không cần thư viện đi kèm. Bạn không cần phải lo lắng nếu người dùng của bạn đã cài đặt Ruby hoặc JVM hoặc quan tâm tới phiên bản của chúng. Vì lý do này, Go ngày càng trở nên phổ biến như là một ngôn ngữ cho chương trình giao diện dòng lệnh và các loại chương trình khác bạn cần triển khai (ví dụ, một chương trình thu thập log).

Rõ ràng, học Go là một phương án hợp lý. Bạn sẽ không phải mất nhiều giờ học hoặc thậm chí làm chủ Go, và bạn sẽ đạt được kết quả thiết thực.

## Lưu ý của tác giả

Tôi đã lưỡng lự khi viết quyển sách này vì vài lý do. Đầu tiên là tài liệu gốc của Go, đặc biệt là [Effective Go](https://golang.org/doc/effective_go.html), rất chi tiết.

Một cản trở khác là sự khó chịu của tôi lúc viết một cuốn sách về một ngôn ngữ lập trình. Khi tôi viết The Little MongoDB Book, tôi đã giả định rằng hầu hết người đọc hiểu những điều cơ bản của cơ sở dữ liệu quan hệ và mô hình hóa. Với The Little Redis Book, có thể giả định bạn đã quen với lưu và đọc dữ liệu từ một khóa.

Khi tôi bắt đầu viết các đoạn và các chương đầu tiên, tôi biết rằng tôi sẽ không thể  giả định tương tự thế. Cần bao nhiêu thời gian để mô tả về interface cho các độc giả về khái niệm này, trong khi những người khác sẽ chỉ cần biết *Go hỗ trợ interface?* Cuối cùng, tôi quyết định các bạn sẽ cho tôi biết phần nào của quyển sách quá hời hợt trong khi phần nào lại quá chi tiết.

# Mở đầu

Nếu bạn đang tìm cách để thử sử dụng Go, bạn nên xem qua [Go Playground](http://play.golang.org/). Nó cho phép người dùng chạy mã trực tiếp trên trình duyệt mà không cần phải cài đặt bất cứ thứ gì. Đây cũng là cách chung nhất để chia sẻ mã nguồn Go trên các trang cộng đồng như [Diễn đàn thảo luận của Go](https://groups.google.com/forum/#!forum/golang-nuts) và những nơi như StackOverflow.

Cài đặt Go khá đơn giản. Bạn có thể cài đặt nó từ mã nguồn, nhưng tôi khuyên nên sử dụng các bộ được biên dịch sẵn từ trang chủ của Go. Khi bạn tải [Go từ trang chủ](https://golang.org/dl/), bạn sẽ thấy các bộ cài đặt cho nhiều nền tảng khác nhau.

Trừ các mã đơn giản, Go được thiết kế để làm việc khi mã của bạn được đặt trong một workspace. Workspace là một thư mục gồm các thư mục con là `bin`, `pkg` và `src`. Bạn cũng có thể thiết lập workspace theo cách riêng của mình, nhưng cách này không được khuyến khích.

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

Go là ngôn ngữ biên dịch, liên kết tĩnh, có cú pháp giống C và kèm theo một trình tự động dọn dẹp bộ nhớ (garbage collection - GC). Điều đó nghĩa là gì?

## Biên dịch

Biên dịch là quá trình chuyển đổi mã nguồn sang một dạng ngôn ngữ ở mức thấp hơn hoặc dạng hợp ngữ (assembly) (trong trường hợp của Go), hoặc một dạng ngôn ngữ trung gian khác (như Java hoặc C#).

Ngôn ngữ biên dịch có thể gây khó chịu nếu biên dịch chậm. Thật khó để viết chương trình nhanh chóng, nếu bạn phải mất hàng phút hoặc hàng giờ đồng hộ để đợi chương trình dịch xong. Tốc độ biên dịch nhanh là một trong những mục tiêu chính khi thiết kế Go. Đây là tin tốt cho những người làm việc trên các dự án lớn cũng như những người đã quen với những phản hồi nhanh chóng được cung cấp bởi ngôn ngữ thông dịch.

Ngôn ngữ biên dịch sẽ hướng tới chương trình chạy nhanh hơn và file thực thi có thể chạy độc lập (ít nhất, điều đó đúng với các ngôn ngữ giống C, C++ và Go dịch trực tiếp ra hợp ngữ).
(Người dịch: tác giả sử dụng từ assembly trong bản gốc, tuy nhiên, nên hiểu là mã máy, hoặc mã nhị phân).

## Kiểu dữ liệu tĩnh

Kiểu dữ liệu tĩnh nghĩa là các biến phải được xác định kiểu (int, string, bool, []byte, ...). Trình biên dịch sẽ xác định các kiểu dữ liệu khi biến được khai báo, hoặc, trong nhiều trường hợp, cho phép trình biên dịch nội suy ra kiểu dữ liệu tương ứng (chúng ta sẽ xem ví dụ sau).

Có rất nhiều điều cần nói về kiểu dữ liệu tĩnh, nhưng tôi tin rằng có một cách tốt hơn là đọc mã nguồn. Nếu bạn đang sử dụng kiểu dữ liệu động, bạn có thể thấy điều này phức tạp. Bạn không sai, nhưng ưu điểm đặc biệt là khi bạn đặt kiểu dữ liệu tĩnh với biên dịch. Cả hai tương ứng với nhau. Một trình biên dịch có thể phát hiện các vấn đề sai cú pháp đơn thuần cũng như thực hiện tối ưu hóa hơn nữa với kiểu dữ liệu tĩnh.

## Cú pháp giống C

Nói rằng một ngôn ngữ có cú pháp giống C có nghĩa là nếu bạn quen với một ngôn ngữ họ C khác như C, C++, Java, JavaScript and C#, thì bạn sẽ thấy Go rất quen thuộc. Ví dụ, `&&` được sử dụng như toán tử AND, `==` được sử dụng để so sánh bằng, `{` and `}` là hai kí tự bắt đầu và kết thúc, một mảng được đánh chỉ số từ 0.

Cú pháp giống C có nghĩa là dấu chấm phẩy dùng để kết thúc một dòng và dấu ngoặc đơn ( ) được dùng khi mô tả các biểu thức điều kiện. Go không hỗ trợ cả hai, mặc dù ngoặc đơn vẫn còn được sử dụng để xác định quyền ưu tiên. Ví dụ, một lệnh `if` trông như thế này:

```go
if name == "Leto" {
  print("the spice must flow")
}
```

Trong các trường hợp phức tạp, dấu ngoặc rất có ích:

```go
if (name == "Goku" && power > 9000) || (name == "gohan" && power < 4000)  {
  print("super Saiyan")
}
```

Ngoài ra, Go gần với C hơn so với C# hoặc Java - không chỉ về mặt cú pháp, mà về mục đích. Điều đó phản ánh sự trong sáng và đơn giản của ngôn ngữ, mà hy vọng sẽ bắt đầu trở nên rõ ràng hơn khi bạn tìm hiểu nó.

## Garbage Collected (GC)

Một số biến có thể xác định được quá trình tồn tại của nó ngay từ khi khai báo. Một biến cục bộ cho một hàm, ví dụ, sẽ biến mất khi thoát ra khỏi hàm. Trong trường hợp khác, nó không phải là quá rõ ràng -- ít nhất là đối với một chương trình biên dịch. Ví dụ, thời gian sống của một biến được trả về bởi một hàm hoặc tham chiếu bởi các biến và các đối tượng khác có thể khó xác định. Nếu không có GC, lập trình viên phải tự giải phóng bộ nhớ các biến không cần thiết. Bằng cách nào? Trong C, bạn sẽ dùng `free(str);` .

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

Tiếp theo, mở một shell/command prompt và chuyển đến thư mục mà bạn đã lưu tập tin. Đối với tôi, nghĩa là gõ `cd ~/code`.

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

Nếu bạn muốn, bạn có thể thay đổi mã và tên của gói. Khi chạy lệnh `go run` và bạn sẽ nhận được một thông báo lỗi. Sau đó, đổi tên gói trở lại thành `main` nhưng vẫn giữ nguyên tên hàm. Bạn sẽ nhận một thông báo lỗi khác. Thử các thay đổi trên nhưng sử dụng lệnh `go build`. Chú ý rằng khi mã nguồn được biên dịch, không có một entry point nào. Khi biên dịch các thư viện, điều này là cần thiết.

## Imports

Go có một lượng lớn các hàm có sẵn, giống như `println`, có thể dùng mà không cần tham chiếu. Chúng ta không thể làm gì nhiều hơn nếu không sử dụng các thư viện chuẩn của Go và các thư viện bên ngoài. Trong Go, từ khóa `import` được dùng để xác định một gói mà đoạn mã bên trong file có tham chiếu tới.

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

Chúng ta bây giờ đã dùng hai thư viện chuẩn của Go: `fmt` và `os`. Chúng ta cũng được giới thiệu một hàm dựng sẵn khác `len`. `len` trả về kích thước của một chuỗi, hoặc số lượng phần tử trong một từ điển (dictionary), hoặc như chúng ta thấy, số lượng phần tử trong một mảng (array). Nếu bạn hỏi vì sao chúng ta cần 2 tham số cho chương trình, vì tham số thứ nhất -- ở vị trí 0 -- là đường dẫn tới file thực thi hiện tại. (Hãy tự thay đổi chương trình và hiển thị nó.)

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

Bạn sẽ có 2 lỗi về `fmt` và `os` được import nhưng không được dùng. Bạn có bực mình không? Chắc chắn. Theo thời gian, bạn sẽ quen với nó (dù nó vẫn gây bực mình). Go quản lý nghiêm việc này do việc thêm các gói không dùng có thể khiến quá trình biên dịch bị chậm; thật sự thì tôi không đồng ý với điều này.

Một điều khác cần lưu ý là Go có bộ thư viện chuẩn được tài liệu hóa khá đầy đủ. Bạn có thể vào <http://golang.org/pkg/fmt/#Println>  để học cách sử dụng `Println`. Bạn cũng có thể click vào tiêu đề để tham khảo mã nguồn, đến đầu trang để tham khảo các cách format của hàm.

Nếu bạn không có internet, bạn có thể đọc tài liệu tại máy tính của mình thông qua cách sau:

```
godoc -http=:6060
```

và dùng trình duyệt để duyệt tới `http://localhost:6060`

## Biến và khai báo biến

Hãy bắt đầu khai báo một biến số bằng cách *bạn khai báo và gán giá trị cho một biến bằng cách x = 4.* Thật không may, mọi thứ phức tạp hơn trong Go. Chúng ta bắt đầu bằng cách xem xét một ví dụ đơn giản. Sau đó, ở chương sau, chúng ta sẽ giải thích một lần nữa khi xem cách tạo và sử dụng cấu trúc. Tuy nhiên, nó có thể sẽ mất thời gian trước khi bạn thực sự cảm thấy quen với nó.

Bạn có thể đang nghĩ *Ồ! Sao lại phức tạp thế?* Hãy xem một vài ví dụ sau.

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

Cần nhớ rằng `:=` được dùng để khai báo biến và gán giá trị cho nó. Một biến không thể khai báo hai lần (không phải trong cùng một phạm vi). Nếu bạn thử chạy đoạn mã sau, bạn sẽ gặp lỗi.

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

Chương trình biên dịch sẽ thông báo *no new variables on left side of :=*. Điều này có nghĩa là chúng ta khai báo biến lần đầu tiên với toán tử `:=` nhưng lần thứ hai tác động vào biến, chúng ta phải dùng toán tử gán `=`. Điều này rất quan trọng, nó khiến bạn nhớ nhiều hơn khi sử dụng chuyển đổi giữa 2 loại toán tử.

Nếu bạn đọc một thông báo lỗi, bạn sẽ nhận thấy thông báo sử dụng số nhiều khi viết về các biến: *variables*. Go cho phép bạn gán nhiều giá trị vào nhiều biến khác nhau cùng một lúc (sử dụng `=` hoặc `:=`):


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

Bây giờ, thứ cuối cùng cần xem xét, giống như `import`, Go không cho phép bạn khai báo biến mà không sử dụng. Ví dụ,

```go
func main() {
  name, power := "Goku", 1000
  fmt.Printf("default power is %d\n", power)
}
```

Đoạn mã trên sẽ không biên dịch được do biến `name` được khai báo nhưng không được sử dụng. Giống như các khai báo import không được dùng, khai báo biến thừa sẽ không làm chậm lại, nhưng tôi nghĩ rằng điều đó khiến cho mã nguồn sáng sủa và dễ đọc hơn.

Tóm lại, để khai báo và gán một biến, cần nhớ: bạn sẽ sử dụng khai báo `var NAME TYPE` khi khai báo một biến và gán giá trị 0 cho nó, `NAME := VALUE` khi khái báo một biến và gán giá trị, và `NAME = VALUE` khi gán giá trị cho một biến đã khai báo trước đó.

## Khai báo hàm

Một hàm có thể trả về một hoặc nhiều giá trị. Hãy xem ba hàm sau: một hàm không có giá trị trả về, một hàm trả về một giá trị, một hàm trả về hai giá trị.

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

Điều này không phải chỉ là một quy ước. `_`, (blank identifier), đại diện cho giá trị trả về không được gán. Nó cho phép bạn sử dụng `_` mọi chố, bất kể kiểu dữ liệu trả về là gì.

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

# Chương 2 - Cấu trúc

Go không phải là một ngôn ngữ hướng đói tượng (OO) giống như C++, java, Ruby hoặc C#. Go không có các đối tượng cũng như khả năng kế thừa (inheritance). Do đó, Go không có các lý thuyết thường được nhắc đến khi nói về OO như đa hình (polymorphism) hay ghi đè (overloading).

Thứ mà Go có là các cấu trúc, có thể kết hợp với các phương thức. Go hỗ trợ một dạng đơn giản nhưng hiệu quả của composition. Nhìn chung, đó là sự kết hợp của những đoạn mã đơn giản, mà lại không cần đến một số tính năng mà OO cung cấp. (Điều đó cho thấy sự tối ưu của *composition*  so với  *inheritance* và Go là ngôn ngữ đầu tiên tôi sử dụng có một nền tảng vững chắc về vấn đề này.)

Mặc dù Go không giống như OO mà bạn quen dùng, bạn sẽ nhận thấy có rất nhiều điểm giống nhau giữa định nghĩa một cấu trúc (structure) và định nghĩa một lớp (class). Ví dụ đơn giản sau mô tả một cấu trúc:

```go
type Saiyan struct {
  Name string
  Power int
}
```

Chúng ta sẽ xem làm thế nào để thêm một phương thức vào một cấu trúc sau, giống như bạn có các phương thức là một phần của lớp. Trước khi làm điều đó, chúng ta quay trở lại bước khai báo.

## Khai báo và khởi tạo

Khi chúng ta xem cách khởi tạo một biến, chúng ta chỉ xem xét đến các kiểu dữ liệu có sẵn, giống như kiểu số nguyên hoặc xâu. Giờ đây chúng ta sẽ nói về cấu trúc, và nói rộng ra, là các con trỏ.

Cách đơn giản nhất để tạo một biến theo kiểu cấu trúc đã định nghĩa:

```go
goku := Saiyan{
  Name: "Goku",
  Power: 9000,
}
```

*Lưu ý:* Các dấu `,` trong cấu trúc bên trên là bắt buộc. Không có nó, trình biên dịch sẽ báo lỗi. Bạn sẽ đánh giá cao tính nhất quán này, đặc biệt khi bạn đã sử dụng qua một ngôn ngữ hoặc một định dạng không nhất quán.

Chúng ta không nhất thiết phải gán một trường nào trong các trường trên. Cả hai ví dụ sau đều là hợp lệ:

```go
goku := Saiyan{}

// hoặc

goku := Saiyan{Name: "Goku"}
goku.Power = 9000
```

Giống như các biến chưa được gán giá trị, các trường này sẽ được gán giá trị mặc định.

Hơn nữa, bạn có thể bỏ qua tên của trường và dựa vào thứ tự của các trường khi khai báo (để cho rõ ràng, bạn chỉ nên làm thế nếu có ít trường):

```go
goku := Saiyan{"Goku", 9000}
```

Ví dụ trên sẽ định nghĩa một biến `goku` và gán giá trị cho nó.

Nhiều khi, chúng ta không muốn một biến chứa lưu trực tiếp các giá trị, nhưng lại cần một biến lưu con trỏ trỏ tới các giá trị đó. Một con trỏ là một địa chỉ bộ nhớ; nó cho biết vị trí mà tại đó lưu dữ liệu. Đó là một cách truy cập dữ liệu gián tiếp. Nói cách khác, có một sự khác biệt khi so sánh một ngôi nhà và đường tới ngôi nhà.

Tại sao chúng ta cần một con trỏ trỏ tới một giá trị, thay vì chính giá trị đó? Nó chỉ ra cách mà Go truyền tham số cho một hàm: một bản sao. Nội dung gì sẽ được in ra sau lệnh sau?

```go
func main() {
  goku := Saiyan{"Goku", 9000}
  Super(goku)
  fmt.Println(goku.Power)
}

func Super(s Saiyan) {
  s.Power += 10000
}
```
Câu trả lời là 9000, không phải 19000. Tại sao? Bởi vì `Super` thay đổi bản sao của biến `goku` và do đó, các thay đổi bên trong `Super` sẽ không tác động đến các biến trước khi gọi. Để có thể thay đổi được nội dung của biến, ta truyền một con trỏ tới giá trị của biến:

```go
func main() {
  goku := &Saiyan{"Goku", 9000}
  Super(goku)
  fmt.Println(goku.Power)
}

func Super(s *Saiyan) {
  s.Power += 10000
}
```

Chúng ta thực hiện hai thay đổi. Bước thứ nhất là sử dụng toán tử `&` để lấy địa chỉ của biến (nó được gọi là toán tử địa chỉ). Sau đó, chúng ta thay đổi loại của tham số của hàm `Super`. Trước khi thay đổi, hàm nhận tham số là một giá trị có kiểu `Saiyan` nhưng giờ là địa chỉ của một biến có kiểu `*Saiyan`, với `*X` nghĩa là *con trỏ trỏ tới một giá trị kiểu X*. Dù có mối quan hệ giữa 2 kiểu dữ liệu `Saiyan` và `*Saiyan`, nhưng chúng vẫn là hai kiểu phân biệt với nhau.

Chú ý rằng chúng ta vẫn truyền bản sao của biến `s` vào hàm `Super`, nhưng nó trở thành địa chỉ của biến. Bản sao này có giá trị giống hệt như bản chính, đó là sự truy cập gián tiếp. Tưởng tượng rằng có một bản sao của đường đi tới quán ăn. Dù bạn có một bản sao, nhưng nó vẫn chỉ về cùng một quán ăn như bản gốc.

Chúng ta có thể chứng minh rằng đó là một bản sao, bằng cách cố thay đổi vị trí con trỏ đang trỏ tới:

```go
func main() {
  goku := &Saiyan{"Goku", 9000}
  Super(goku)
  fmt.Println(goku.Power)
}

func Super(s *Saiyan) {
  s = &Saiyan{"Gohan", 1000}
}
```

Đoạn mã trên, một lần nữa sẽ in ra 9000. Rất nhiều ngôn ngữ có cách hoạt động giống như thế này, bao gồm Ruby, Python, Java và C#. Go, và ở một số tình huống của C#, có thể nhận thấy điều này.

Rõ ràng là sao chép một con trỏ thì tốn ít chi phí hơn sao chép toàn bộ cấu trúc. Trên các hệ thống 64-bit, một con trỏ có độ lớn 64 bits. Nếu chúng ta có một cấu trúc có nhiều trường, tạo một bản sao của nó sẽ rất tốn kém. Ưu điểm của con trỏ là cho phép bạn chia sẻ các giá trị. Bạn muốn hàm `Super` thay đổi một bản sao của `goku` hay thay đổi các giá trị của `goku`?

Tuy nhiên, bạn sẽ không cần sử dụng con trỏ trong tất cả các trường hợp. Ở cuối chương, sau khi tìm hiểu thêm về cấu trúc, chúng ta sẽ quay lại các câu hỏi về con trỏ và giá trị của nó.

## Hàm trên cấu trúc

Chúng ta có thể gắn một phương thức vào một cấu trúc:

```go
type Saiyan struct {
  Name string
  Power int
}

func (s *Saiyan) Super() {
  s.Power += 10000
}
```

Trong đoạn mã nguồn trên, chúng ta nói rằng loại dữ liệu `*Saiyan` là **receiver** của phương thức `Super`. Chúng ta gọi `Super` như sau:

```go
goku := &Saiyan{"Goku", 9001}
goku.Super()
fmt.Println(goku.Power) // will print 19001
```

## Hàm tạo (Constructors)

Cấu trúc thì không có hàm tạo. Thay vào đó, bạn tạo một hàm trả về một biến với cấu trúc định nghĩa trước (giống như một factory):

```go
func NewSaiyan(name string, power int) *Saiyan {
  return &Saiyan{
    Name: name,
    Power: power,
  }
}
```

Rất nhiều lập trình viên mắc lỗi ở đây. Một mặt, có một chút thay đổi cú pháp; mặt khác, viết theo cách có ít sự khác biệt hơn.

factory không trả về một con trỏ, nhưng vẫn hoàn toàn hợp lệ:

```go
func NewSaiyan(name string, power int) Saiyan {
  return Saiyan{
    Name: name,
    Power: power,
  }
}
```

## New

Dù không có hàm tạo, Go vẫn có một hàm dựng sẵn `new` để cấp phát bộ nhớ cho một kiểu dữ liệu. Kết quả của `new(X)` giống như `&X{}`:

```go
goku := new(Saiyan)
// same as
goku := &Saiyan{}
```

Bạn sử dụng cách nào thì tùy, nhưng bạn sẽ thấy đa phần người ta chọn cách sau khi họ có thể khởi tạo các trường dữ liệu, cũng như đoạn mã trở nên sáng sủa hơn:

```go
goku := new(Saiyan)
goku.name = "goku"
goku.power = 9001

//vs

goku := &Saiyan {
  name: "goku",
  power: 9000,
}
```

Dù bạn chọn cách nào, nếu bạn làm theo các mô hình factory ở trên, bạn có thể bảo vệ phần còn lại của mã của bạn khỏi lo ngại về vấn đề cấp phát bộ nhớ.

## Các trường của cấu trúc

Trong ví dụ chúng ta thấy ở trên, `Saiyan` có hai trường `Name` và `Power` có kiểu tương ứng là `string` và `int`. Các trường có thể có bất cứ kiểu nào, kể cả là một cấu trúc khác và các kiểu chúng ta chưa thử như mảng (array), maps, interfaces và hàm.

Ví dụ, chúng ta có thể khai báo của cấu trúc `Saiyan`:

```go
type Saiyan struct {
  Name string
  Power int
  Father *Saiyan
}
```

và khởi tạo như sau:

```go
gohan := &Saiyan{
  Name: "Gohan",
  Power: 1000,
  Father: &Saiyan {
    Name: "Goku",
    Power: 9001,
    Father: nil,
  },
}
```

## Composition

Go hỗ trợ composition, cho phép một cấu trúc có thể chứa một cấu trúc khác. Trong một số ngôn ngữ, nó được gọi là thuộc tính, hoặc kiểu hỗn hợp. Các ngôn ngữ không có composition tường minh có thể mô tả nó theo nhiều kiểu khác nhau. Trong Java:

```java
public class Person {
  private String name;

  public String getName() {
    return this.name;
  }
}

public class Saiyan {
  // Saiyan is said to have a person
  private Person person;

  // we forward the call to person
  public String getName() {
    return this.person.getName();
  }
  ...
}
```

Điều này khá nhàm chán. Tất cả các phương thức của `Person` sẽ được nhân đôi trong `Saiyan`. Go sẽ cố gắng tránh điều này:

```go
type Person struct {
  Name string
}

func (p *Person) Introduce() {
  fmt.Printf("Hi, I'm %s\n", p.Name)
}

type Saiyan struct {
  *Person
  Power int
}

// and to use it:
goku := &Saiyan{
  Person: &Person{"Goku"},
  Power: 9001,
}
goku.Introduce()
```

Cấu trúc `Saiyan` có một trường có kiểu dữ liệu `*Person`. Vì chúng ta không khai báo tường minh tên của trường, chúng ta có thể truy cập không tường minh các trường và phương thức của các kiểu dữ liệu được tích hợp bên trong. Tuy nhiên, Go compiler * đặt* một tên trường cho nó khi biên dịch, điều này được xem là hoàn toàn hợp lệ:

```go
goku := &Saiyan{
  Person: &Person{"Goku"},
}
fmt.Println(goku.Name)
fmt.Println(goku.Person.Name)
```

Cả hai dòng lệnh trên đều in ra "Goku".

Liệu kiểu tích hợp (composition) có tốt hơn kế thừa (inheritance) không? Nhiều người nghĩ rằng đây là một cách tiện lợi và nhanh chóng để chia sẻ mã nguồn. Khi sử dụng kế thừa, When using inheritance, lớp của bạn được gắn với lớp cha, và hình thành một cách phân chia theo kiểu phân cấp chứ không phải theo chức năng.

### Overloading

Dù overloading không dành cho cấu trúc, nhưng nó vẫn đáng được nêu ra. Một cách đơn giản, Go không hỗ trợ overloading. Vì lý do này, bạn sẽ thấy có rất nhiều hàm như sau: `Load`, `LoadById`, `LoadByName` ...

Tuy nhiên, vì cho phép kết hợp không tường minh của các cấu trúc với nhau, chúng ta có thể dùng mẹo sau để "ghi đè" các hàm của một cấu trúc. Ví dụ, cấu trúc `Saiyan` có thể có hàm `Introduce` của riêng nó:

```go
func (s *Saiyan) Introduce() {
  fmt.Printf("Hi, I'm %s. Ya!\n", s.Name)
}
```

Cấu trúc mới có thể truy cập hàm như sau   `s.Person.Introduce()`.

## Con trỏ và giá trị

Khi viết mã Go, bạn có thể sẽ tự hỏi *khi nào nên dùng giá trị, khi nào thì dùng con trỏ?* Trước hết, câu trả lời là giống nhau, trừ một trong các tình huống sau:

* Gán một biến cục bộ
* Thay đổi trường của một cấu trúc
* Giá trị trả về của một hàm
* Tham số của một hàm
* receiver của một phương thức

Sau đó, nếu bạn vẫn không chắc chắn, hãy dùng con trỏ.

Như chúng ta thấy, truyền một giá trị cho hàm là cách để giá trị đó không thay đổi được (các thay đổi bên trong hàm sẽ không làm thay đổi đến các giá trị bên ngoài hàm). Đôi khi, cách xử lý này là cách mà bạn muốn.

Thậm chí nếu bạn không muốn thay đổi dữ liệu, hãy xem xét chi phí để tạo một bản sao của một cấu trúc lớn. Ngược lại, bạn có các cấu trúc nhỏ, ví dụ:

```go
type Point struct {
  X int
  Y int
}
```

Trong trường hợp này, chi phí của việc sao chép cấu trúc là có thể bù đắp được bằng việc có thể truy cập `x` và `y` trực tiếp.

Một lần nữa, đây là tất cả các tình huống khá tinh tế. Bạn sẽ quen với điều này nếu trải nghiệm hàng nghìn hoặc hàng chục nghìn tình huống tương tự.

## Trước khi đọc tiếp

Tóm lại, chương này giới thiệu các cấu trúc, làm thế nào để tạo một receiver cho một hàm, và chúng ta biết thêm được kiểu dữ liệu con trỏ trong Go. Các chương sau sẽ xây dựng trên những gì chúng ta biết về cấu trúc cũng như các hoạt động bên trong mà chúng ta đã tìm hiểu.

# Chương 3 - Maps, Arrays và Slices

Chúng ta đã tìm hiểu những kiểu dữ liệu cơ bản và cấu trúc trong Go. Giờ là lúc để tìm hiểu arrays, slices và maps.

## Arrays

Nếu bạn đã quen với Python, Ruby, Perl, JavaScript hoặc PHP..., bạn sẽ quen với khái niệm lập trình *mảng động (dynamic arrays)*. Đó là các mảng dữ liệu có khả năng tự động thay đổi kích thước nếu có thêm dữ liệu được thêm vào mảng. Trong Go, giống nhiều ngôn ngữ khác, một mảng được xác định kích thước từ đầu. Khai báo một mảng yêu cầu phải chỉ rõ kích thước của mảng, một khi kích thước mảng được xác định, nó sẽ không thể tăng thêm:

```go
var scores [10]int
scores[0] = 339
```

Mảng khai báo ở trên có thể lưu tối đa 10 phần tử từ `scores[0]` đến `scores[9]`. Cố gắng để truy cập vào chỉ số ngoài phạm vi của mảng sẽ dẫn đến một lỗi khi biên dịch hoặc khi thực thi chương trình.

Chúng ta có thể khởi tạo mảng với các giá trị như sau:

```go
scores := [4]int{9001, 9333, 212, 33}
```

Chúng ta có thể dùng `len` để xác định độ lớn của mảng. `range` có thể dùng để duyệt các phần tử trong mảng:

```go
for index, value := range scores {

}
```

Mảng là cách lưu dữ liệu hiệu quả nhưng không linh hoạt. Chúng ta thường không biết số lượng các phần tử cần phải khai báo trước. Để giải quyết vấn đề này, chúng ta dùng slices.

## Slices

Trong Go, bạn sẽ rất hiếm khi dùng mảng một cách trực tiếp. Thay vào đó, bạn sẽ sử dụng slices. Một slice là một cấu trúc nhỏ gọn mô tả một vị trí trong một mảng. Có một vài cách để tạo một slice. Cách đầu tiên là một biến thể của khai báo mảng:

```go
scores := []int{1,4,293,4,9}
```

Không giống như khai báo mảng, slice được mô tả nhưng không xác định kích thước trong ngoặc vuông. Để hiểu chúng khác nhau thế nào, hãy xem một cách khai báo slice khác, dùng `make`:

```go
scores := make([]int, 10)
```

Chúng ta dùng `make` thay vì `new` vì `new` chỉ đơn thuần là cấp phát bộ nhớ và không làm gì cả. Trong khi đó, `make` cấp phát bộ nhớ, và khởi tạo cho bộ nhớ. Trong ví dụ trên, chúng ta khởi tạo một slice có kích thước (length) 10 và có dung lượng (capacity) là 10. Kích thước của slice là số phần tử hiện đang có trong slice, dung lượng của slice là kích thước tối đa của một slice. Sử dụng `make` để khởi tạo 2 giá trị này riêng biệt:

```go
scores := make([]int, 0, 10)
```

Câu lệnh sẽ tạo một slice có kích thước là 0 nhưng có dung lượng là 10. (Nếu bạn để ý, bạn sẽ thấy rằng `make` và `len` *là* overloaded. Go là một ngôn ngữ có một số điểm đáng thất vọng, khi làm ra một số tính năng nhưng không cho phép lập trình viên dùng nó.)

Để hiểu rõ hơn về kích thước và dung lượng, hãy xem các ví dụ sau:

```go
func main() {
  scores := make([]int, 0, 10)
  scores[5] = 9033
  fmt.Println(scores)
}
```

Ví dụ đầu tiên bị lỗi. Tại sao? Vì kích thước của slice đang là 0. Đúng thế, dung lương của slice là 10 phần tử, nhưng chúng ta cần mở rộng slice một cách tường minh, trước khi truy cập vào các phần tử của nó. Một cách để thêm phần tử vào slice là dugf hàm `append`:

```go
func main() {
  scores := make([]int, 0, 10)
  scores = append(scores, 5)
  fmt.Println(scores) // prints [5]
}
```

Nhưng thay đổi này đã không đúng với ý tưởng ban đầu của đoạn mã. `Append` một phần tử vào slice có kích thước bằng 0 tức là gán giá trị cho phần tử đầu tiên của slice. Thực tế, chúng ta cần truy cập phần tử có index là 5. để làm điều này, cần thực hiện re-slice:

```go
func main() {
  scores := make([]int, 0, 10)
  scores = scores[0:6]
  scores[5] = 9033
  fmt.Println(scores)
}
```

Một slice có thể thay đổi kích thước tói mức nào? Kích thước tối đa là dung lượng của slice, trong trường hợp này là 10. Ban có thể đang nghĩ rằng *điều này chả giải quyết được vấn đề ban đầu. Vẫn là một mảng có kích thước cố định.* Tuy nhiên, hàm `append` khá đặc biệt. Nếu slice đã đầy, nó sẽ tạo một mảng mới, sao chép toàn bộ các giá trị ở mảng cũ sang (nó giống hệt như khái niệm mảng động của PHP, Python, Ruby, JavaScript, ...). Đó là lý do vì sao lại giới thiệu hàm `append`. Chúng ta có thể gán lại giá trị trả về của `append` to biến `scores`: `append` có thể trả về một mảng mới, nếu mảng cũ đã đầy.

Nếu tôi nói rằng Go tăng kích thước mảng theo thuật toán nhân đôi, bạn có thể đoán được đầu ra của các lệnh sau không?
```go
func main() {
  scores := make([]int, 0, 5)
  c := cap(scores)
  fmt.Println(c)

  for i := 0; i < 25; i++ {
    scores = append(scores, i)

    // if our capacity has changed,
    // Go had to grow our array to accommodate the new data
    if cap(scores) != c {
      c = cap(scores)
      fmt.Println(c)
    }
  }
}
```

Dung lượng ban đầu của `scores` là 5. Để lưu được 20 giá trị, nó phải được mở rộng 3 lần với dung lượng tăng lần lượt là 10, 20 và cuối cùng là 40.

Ví dụ cuối cùng:

```go
func main() {
  scores := make([]int, 5)
  scores = append(scores, 9332)
  fmt.Println(scores)
}
```

Ở đây, giá trị hiển thị được sẽ là `[0, 0, 0, 0, 0, 9332]`. Có lẽ bạn sẽ nghĩ nó phải là `[9332, 0, 0, 0, 0]`? Với người, điều đó có vẻ rất logic. Với trình biên dịch, nó được yêu cầu thêm phần tử 9332 vào một slice đã có sẵn 5 phần tử.

Cuối cùng, có bốn cách phổ biến để khởi tạo một slice:

```go
names := []string{"leto", "jessica", "paul"}
checks := make([]bool, 10)
var names []string
scores := make([]int, 0, 20)
```

Khi nào bạn sử dụng loại nào? Loại đầu tiên không cần nhiều lời giải thích. Bạn sử dụng khi bạn biết những giá trị mà bạn muốn trong mảng.

Loại thứ hai là hữu ích khi bạn có thể gi vào một vị trí cụ thể của một slice. Ví dụ:

```go
func extractPowers(saiyans []*Saiyans) []int {
  powers := make([]int, len(saiyans))
  for index, saiyan := range saiyans {
    powers[index] = saiyan.Power
  }
  return powers
}
```

Loại thứ ba là cách khai báo một slice rỗng, được dùng cùng với `append`, khi không biết trước số lượng phần tử.

Loại cuối cùng cho phép chúng ta khởi tạo giá trị của dung lượng trong slice; nó có ích nếu chúng ta có được số lượng đối tượng chúng ta cần.

Thậm chi khi đã biết được kích thước, `append` vẫn có thể dùng được.

```go
func extractPowers(saiyans []*Saiyans) []int {
  powers := make([]int, 0, len(saiyans))
  for _, saiyan := range saiyans {
    powers = append(powers, saiyan.Power)
  }
  return powers
}
```

Slices được coi là phần mở rộng của arrays. Nhiều ngôn ngữ có khái niệm slicing một mảng. Cả JavaScript và Ruby đều có khái niệm mảng và phương thức `slice` cho mảng. Bạn có thể dùng slice trong Ruby bằng cách `[START..END]` hoặc trong Python thông qua `[START:END]`. Tuy nhiên, trong những ngôn ngữ này, một slice là một mảng mới hoàn toàn với các giá trị được sao chép từ mảng cũ. Với Ruby, kết quả của các lệnh sau là gì?

```go
scores = [1,2,3,4,5]
slice = scores[2..4]
slice[0] = 999
puts scores
```

Câu trả lời là`[1, 2, 3, 4, 5]`. Bởi vì `slice` là một mảng mới hoàn toàn với dữ liệu được sao chép từ mảng cũ. Bây giờ, xem một ví dụ Go tương đương:

```go
scores := []int{1,2,3,4,5}
slice := scores[2:4]
slice[0] = 999
fmt.Println(scores)
```

Kêt quả chạy chương trình là `[1, 2, 999, 4, 5]`.

Thay đổi này sẽ thay đổi cách bạn viết mã. Ví dụ, một số lượng lớn các hàm nhận tham số đầu vào là vị trí. Trong JavaScript, nếu chúng ta muốn tìm kí tự khoảng trắng (space) đầu tiên trong xâu (đúng, slices cũng có thể hoạt động như một chuỗi!) đứng sau 5 kí tự đầu tiên, chúng ta viết:

```javascript
haystack = "the spice must flow";
console.log(haystack.indexOf(" ", 5));
```

Trong Go, chúng ta dùng slice:

```go
strings.Index(haystack[5:], " ")
```

Chúng ta có thể thấy ở đoạn mã phía trên `[X:]` là viết tắt của *từ X tới cuối* trong khi `[:X]` là viết tắt cửa *từ đầu tới X*. Không giống các ngôn ngữ khác, Go không hỗ trợ giá trị âm cho chỉ số. Nếu bạn muốn một slice chứa tất cả các phần tử trừ phần tử cuối cùng, chúng ta viết:

```go
scores := []int{1, 2, 3, 4, 5}
scores = scores[:len(scores)-1]
```

Đoạn code bên dưới là một cách hiệu quả để xóa một phần từ khởi một slice chưa sắp xếp:

```go
func main() {
  scores := []int{1, 2, 3, 4, 5}
  scores = removeAtIndex(scores, 2)
  fmt.Println(scores)
}

func removeAtIndex(source []int, index int) []int {
  lastIndex := len(source) - 1
  //swap the last value and the value we want to remove
  source[index], source[lastIndex] = source[lastIndex], source[index]
  return source[:lastIndex]
}
```

Cuối cùng, giờ chúng ta đã biết về slice, chúng ta có thể tìm hiểu một hàm dựng sẵn khác: `copy`. `copy` là một trong những hàm làm nổi bật cách mà slice thay đổi nội dung của nó. Bình thường, hàm sẽ sao chép các giá trị từ mảng này qua mảng khác với 5 tham số: `source`, `sourceStart`, `count`, `destination` and `destinationStart`. Với slice, chỉ cần 2 tham số:

```go
import (
  "fmt"
  "math/rand"
  "sort"
)

func main() {
  scores := make([]int, 100)
  for i := 0; i < 100; i++ {
    scores[i] = int(rand.Int31n(1000))
  }
  sort.Ints(scores)

  worst := make([]int, 5)
  copy(worst, scores[:5])
  fmt.Println(worst)
}
```

Hãy thử chạy đoạn mã trên. Thử một vài biến thể của nó. Hãy xem chuyện gì xảy ra nếu bạn đổi hàm `copy` thành `copy(worst[2:4], scores[:5])`, hoặc chuyện gì xảy ra khi cố sao chép nhiều hơn hoặc ít hơn `5` giá trị vào `worst`?

## Maps

Maps trong Go và các ngôn ngữ khác được gọi là hashtables hoặc dictionaries. Nó hoạt động như bạn đang nghĩ: bạn định nghĩa một cặp khóa (key) và giá trị (value), và bạn có thể lấy (get), thay đổi (set) và xóa (delete) giá trị thông qua khóa.

Maps, cũng như slices, được tạo ra thông qua hàm `make`. Hãy xem ví dụ sau:

```go
func main() {
  lookup := make(map[string]int)
  lookup["goku"] = 9001
  power, exists := lookup["vegeta"]

  // prints 0, false
  // 0 is the default value for an integer
  fmt.Println(power, exists)
}
```

Để biết số lượng các khóa đang có, chúng ta dùng `len`. Để xóa một giá trị dựa vào khóa, dùng `delete`:

```go
// returns 1
total := len(lookup)

// has no return, can be called on a non-existing key
delete(lookup, "goku")
```

Maps tăng kích thước tự động. Tuy nhiên, chúng ta có thể cung cấp tham số thứ 2 cho hàm `make` để khởi tạo kích thước ban đầu cho map:

```go
lookup := make(map[string]int, 100)
```

Nếu bạn có thể đoán được có bao nhiêu khóa sẽ có trong map, hãy xác định kích thước khởi tạo để tăng hiệu năng.

Để định nghĩa một map là một trường của một cấu trúc, làm như sau:

```go
type Saiyan struct {
  Name string
  Friends map[string]*Saiyan
}
```

One way to initialize the above is via:

```go
goku := &Saiyan{
  Name: "Goku",
  Friends: make(map[string]*Saiyan),
}
goku.Friends["krillin"] = ... //todo load or create Krillin
```

Đó là một cách khác để khai báo và khởi tạo giá trị trong Go. Giống như `make`, cách tiếp cận này chỉ dùng được cho maps và arrays. Chúng ta có thể khai báo như sau:

```go
lookup := map[string]int{
  "goku": 9001,
  "gohan": 2044,
}
```

Chúng ta có thể duyệt qua một map bằng câu lệnh `for` kết hợp với từ khóa `range` :

```go
for key, value := range lookup {
  ...
}
```

Duyệt qua các phần tử của map là không theo thứ tự. Mỗi phần tử trong quá trình tìm kiếm được chọn theo thứ tự ngẫu nhiên.

## Con trỏ vs giá trị

Chúng ta kết thúc chương 2 bằng câu hỏi nên truyền con trỏ hay giá trị cho hàm. Giờ chúng ta có một câu hỏi tương tự, đối với array và map. Nên sử dụng loại nào?

```go
a := make([]Saiyan, 10)
//or
b := make([]*Saiyan, 10)
```

Nhiều lập trình viên nghĩ rằng truyền `b` cho hàm hoặc lấy `b` là giá trị trả về của hàm, sẽ hiệu quả hơn. Tuy nhiên, dù truyền hay nhận lại gì, thì đó cũng là một bản sao của một slice, bản thân nó đã là tham chiếu đến dữ liệu, do đó không có sự khác biệt nào.

Khi bạn thấy sự khác nhau là khi bạn sửa giá trị của một slice hoặc map. Ở điểm này, logic cũng giống như ở chương 2. Vì vậy, quyết định về việc có nên xác định một mảng của các con trỏ so với một mảng các giá trị chính là cách bạn sử dụng các giá trị, không phải là cách bạn sử dụng array hoặc map.

## Trước khi đọc tiếp

Arrays và maps trong Go hoạt động giống như các ngôn ngữ khác. Nếu bạn quen với các mảng dữ liệu động, thì sẽ có một chút thay đổi nhỏ, nhưng `append` sẽ giải quyết các vấn đề khó chịu này. Nếu chúng ta xem xét tới slice, ta sẽ thấy đó là sự mở rộng của mảng.

Có một số khía cạnh mà chúng ta đã không đề cập đến nó, nhưng bạn cũng gần như không động đến chúng bao giờ. Và nếu bạn tiếp cận chúng, hy vọng rằng chúng ta sẽ mô tả nó ở đây để cho bạn biết điều gì đang xảy ra.

# Chương 4 - Cách tổ chức mã nguồn và Interfaces

Đã đến lúc tìm hiểu cách thức tổ chức mã nguồn trong Go.

## Gói (Packages)

Để có thể xây dựng được những thư viện phức tạp, chúng ta cần tìm hiểu về khái niệm gói (packages). Trong Go, mỗi gói được đặt tên theo cấu trúc của thử mục trong workspace. Nếu chúng ta xây dựng một hệ thống bán hàng, chúng ta thường bắt đầu bằng một gói có tên là "shopping" và đặt các file mã nguồn trong thư mục `$GOPATH/src/shopping/`.

Chúng ta không muốn đặt tất cả mọi thứ bên trong thư mục này. Ví dụ, có thể chúng ta muốn đặt một vài thành phần thuộc về cơ sở dữ liệu vào một thư mục khác. Để đạt điều đó, chúng ta tạo một thử mục con `$GOPATH/src/shopping/db`. Tên của gói của các file trong thư mục con này, đơn giản là `db`, nhưng để truy cập  nó từ một gói khác, kể cả là gói `shopping` chúng ta cần sử dụng lệnh import `shopping/db`.

Nói cách khác, khi bạn đặt tên một gói, thông qua từ khóa `package`, bạn cung cấp một giá trị đơn, không phải là một đường dẫn đầy đủ (ví dụ, "shopping" hoặc "db"). Khi bạn sử dụng một gói, bạn cần chỉ đường dẫn đẩy đủ đến gói đó.

Trong thư mục `src` nằm bên trong workspace (thư mục chúng ta dùng để cài đặt ở phần đầu tiên của cuốn sách này), tạo một thư mục mới và đặt tên là `shopping` và một thư mục con bên trong nó, đặt tên là `db`.

Trong thư mục `shopping/db`, tạo một file và đặt tên là `db.go` và chứa đoạn mã sau:

```go
package db

type Item struct {
  Price float64
}

func LoadItem(id int) *Item {
  return &Item{
    Price: 9.001,
  }
}
```

Chú ý rằng tên của gói phải trùng với tên của thư mục. Và cũng nhớ rằng, chúng ta vẫn chưa thực sự truy cập database, chúng ta chỉ dùng ví dụ này để mô tả cách tổ chức mã nguồn.

Bây giờ, hãy tạo một file có tên là `pricecheck.go` bên trong thư mục chính `shopping`. Nội dung của nó là:

```go
package shopping

import (
  "shopping/db"
)

func PriceCheck(itemId int) (float64, bool) {
  item := db.LoadItem(itemId)
  if item == nil {
    return 0, false
  }
  return item.Price, true
}
```

Thật lạ vì bạn đang thêm gói `shopping/db` trong khi chúng ta đang đứng bên trong thư mục `shopping`. Thực tế, đường dẫn khi import một gói sẽ là `$GOPATH/src/shopping/db`, có nghĩa rằng bạn có thể dễ dàng thêm gói `test/db` nếu bạn có một gói được đặt tên là `db` bên trong thư mục `src/test`.

Nếu bạn đang xây dựng một gói, bạn sẽ không cần làm thêm gì nữa, ngoài việc bố trí thư mục như trên. Để tạo một file thực thi bạn cần một gói có tên `main`. Cách tôi thường dùng để làm việc này là tạo một thư mục có tên `main` bên trong thư mục `shopping` cùng với một file đặt tene là `main.go` và có nội dung như sau:

```go
package main

import (
  "shopping"
  "fmt"
)

func main() {
  fmt.Println(shopping.PriceCheck(4343))
}
```

Bây giờ bạn có thể chạy mã bằng cách chuyển tới thư mục của dự án `shopping` và gõ:

```
go run main/main.go
```

### Imports lồng nhau

Khi bạn bắt đầu xây dựng một hệ thống phức tạp hơn, bạn có thể gặp tình trạng import lồng nhau (cyclical imports). Điều này xảy ra nếu gói A import gói B nhưng gói B lại import chính gói A ( một cách trực tiếp hoặc gián tiếp thông qua các gói khác). Trình biên dịch không cho phép điều này xảy ra.

Hãy thay đổi cấu trúc của hệ thống shopping và khiến nó bị lỗi.

Chuyển định nghĩa `Item` từ `shopping/db/db.go` sang `shopping/pricecheck.go`. File `pricecheck.go` của bạn sẽ trông thế này:

```go
package shopping

import (
  "shopping/db"
)

type Item struct {
  Price float64
}

func PriceCheck(itemId int) (float64, bool) {
  item := db.LoadItem(itemId)
  if item == nil {
    return 0, false
  }
  return item.Price, true
}
```

Nếu bạn thử chạy đoạn mã trên, bạn sẽ gặp một loạt các lỗi từ `db/db.go` do `Item` chưa được định nghĩa. Điều đó là hiển nhiên. `Item` không còn nằm trong gói `db` nữa; nó đã được chuyển sang `shopping`. Chúng ta cần thay đổi một chút trong file `shopping/db/db.go` thành:

```go
package db

import (
  "shopping"
)

func LoadItem(id int) *shopping.Item {
  return &shopping.Item{
    Price: 9.001,
  }
}
```

Bây giờ khi bạn thử chạy mã, bạn sẽ nhận được thông báo lỗi *import cycle not allowed*. Chúng ta giải quyết vấn đề này bằng cách tạo ra một gói mới chứa các cấu trúc được chia sẻ giữa các gói với nhau. Cấu trúc thư mục sẽ là:

```
$GOPATH/src
  - shopping
    pricecheck.go
    - db
      db.go
    - models
      item.go
    - main
      main.go
```

`pricecheck.go` vẫn import `shopping/db`, nhưng `db.go` giờ sẽ import `shopping/models` thay vì `shopping`, do đó sẽ không bị lồng nhau. Vì chúng ta đâ chuyển cấu trúc `Item` sang file `shopping/models/item.go`, chúng ta cần thay đổiv `shopping/db/db.go` tham chiếu đến cấu trúc `Item` trong `models`:

```go
package db

import (
  "shopping/models"
)

func LoadItem(id int) *models.Item {
  return &models.Item{
    Price: 9.001,
  }
}
```

Bạn sẽ thường xuyên thấy sự chia sẻ các cấu trúc như thế này giống như gói `model`, do đó, bạn nên có một thư mục khác đặt tên là `utilities` hoặc thứ gì đó tương tự. Nguyên tắc quan trọng khi viết các gói chia sẻ này là chúng sẽ không import bất cứ một gói nào từ `shopping` hoặc các gói con của nó. Chúng ta sẽ xem xét cách interface được dùng để giảm thiểu các loại phụ thuộc này.

### Visibility

(Người dịch: nên hiểu là khả năng một thành phần nào đó của gói có thể được truy cập từ gói khác, do tiếng Việt không có từ tương đương nên không dịch)

Go sử dụng một luật đơn giản để xác định các kiểu dữ liệu hoặc các hàm có thể được truy cập từ ngoài gói chưa nó hay không. Nếu tên của kiểu hoặc hàm bắt đầu bằng kí tự in hoa, thì nó có thể truy cập được, ngược lại, nếu là kí tự thường thì không truy cập được từ các gói khác.

Điều này cũng đúng với các trường trong một cấu trúc. Nếu tên của một trường trong một cấu trúc bắt đầu bằng một kí tự thường thì chỉ có các đoạn code trong cùng một gói với nó có thể truy cập được.

Ví dụ, nếu `items.go` có một hàm như thế này:

```go
func NewItem() *Item {
  // ...
}
```

hàm đó có thể được gọi từ bên ngoài bằng lời gọi hàm `models.NewItem()`. Nhưng nếu hàm đó được đặt tên là `newItem`, chúng ta sẽ không sử dụng được nó từ một gói khác.

Bạn nãy thử thay đổi tên của các hàm, các trường trong mã nguồn của `shopping`. Ví dụ, nếu bạn đổi tên trường `Item's` `Price` thành `price`, bạn sẽ gặp lỗi biên dịch.

### Quản lý các gói

Lệnh `go` chúng ta hay dùng là `run` và `build`, có một lệnh khác là `get` được dùng để lấy các thư viện của bên ngoài (third-party libraries). `go get` hỗ trợ nhiều giao thức khác nhau nhưng trong ví dụ này, chúng ta sẽ thử lấy các thư viện trong Github, có nghĩa là, bạn nên cài đặt `git` trong hệ thống.

Giả sử như bạn đã có git được cài trong hệ thống, từ shell/command prompt, nhập:

```
go get github.com/mattn/go-sqlite3
```

`go get` sẽ tải file từ internet về workspace của bạn. Kiểm tra thư mục `$GOPATH/src`. Ngoài ra, cùng cấp với thư mục của `shopping`, bạn sẽ thấy một thư mục tên là `github.com`. Bên trong nó, bạn sẽ thấy thư mục `mattn`, trong đó lại chứa `go-sqlite3`.

Chúng ta vừa nói về cách để import các gói thư viên trong workspace. Để sử dụng gói `go-sqlite3` vừa mới tải về, chúng ta làm như sau:

```go
import (
  "github.com/mattn/go-sqlite3"
)
```

Tôi biết là nó trông giống hnw một URL, nhưng nó sẽ import gói `go-sqlite3` nếu nó được tìm thấy trong thư mục `$GOPATH/src/github.com/mattn/go-sqlite3`.

### Quản lý các thành phần phụ thuộc

`go get` có một vài lệnh đặc biệt khác. Nếu chúng ta dùng `go get` bên trong một dự án, nó sẽ quét tất cả các file, tìm kiếm các thư viện khác đang được import và tải chúng. Theo cách này, mã nguồn của chúng tớ trông giống như một `Gemfile` hoặc `package.json`.

Nếu bạn gọi `go get -u` nó sẽ cập nhật các gói (hoặc bạn cũng có thể cập nhật một gói được chỉ định bằng cách `go get -u TÊN_ĐẦY_ĐỦ_CỦA_GÓI_CẦN_CẬP_NHẬT`).

Cuối cùng, bạn có thể thấy `go get` vẫn chưa không hoàn chính. Ví dụ, không có cách nào để chỉ định một phiên bản (revision), nó luôn trỏ về master/head/trunk/default. Điều này sẽ là vấn đề lớn nếu bạn có hai dự án cần hai phiên bản khác nhau của cùng một thư viện.

Để giải quyết vấn đề này, bạn có thể sử dụng công cụ quản lý phiên bản của các thư viện. Chúng còn khá mới [goop](https://github.com/nitrous-io/goop) và [godep](https://github.com/tools/godep). Danh sách các công cụ tương tự ở đây [go-wiki](https://code.google.com/p/go-wiki/wiki/PackageManagementTools).

## Giao diện (Interfaces)

Interfaces là kiểu dữ liệu chỉ chứa các mô tả hàm ở mức độ prototype. Đây là ví dụ:

```go
type Logger interface {
  Log(message string)
}
```

Implementation của một hàm là các đoạn mã bên trong của hàm đó. Có thể có nhiều hàm khác nhau với cách implementation khác nhau, nhưng lại cùng được mô tả bởi một prototype giống nhau.

Bạn có thể tự hỏi mục đích của interface là gì. Interface giúp tách biệt phần mã implementation của hàm và phần gọi hàm ra các đối tượng riêng biệt. Ví dụ, bạn có thể gọi nhiều loại hàm ghi log khác nhau:

```go
type SqlLogger struct { ... }
type ConsoleLogger struct { ... }
type FileLogger struct { ... }
```

Trong một chương trình, bao giờ cũng tồn tại 2 thành phần: thành phần gọi hàm (hoặc còn gọi là sử dụng hàm) và implementation của hàm. Thành phần gọi hàm có thể không thay đổi nhiều, nhưng implementation của hàm có thể thay đổi rất nhiều.

Bạn sử dụng chúng thé nào? Cũng giống như bất kỳ một kiểu dữ liệu nào khác, có thể coi nó là một trường trong một cấu trúc:

```go
type Server struct {
  logger Logger
}
```

hoặc một tham số của hàm  hoặc giá trị trả về:

```go
func process(logger Logger) {
  logger.Log("hello!")
}
```

Trong ngôn gữ C# hoặc Java, chúng ta có thể khai báo tường minh một lớp tuân theo một interface:

```java
public class ConsoleLogger : Logger {
  public void Logger(message string) {
    Console.WriteLine(message)
  }
}
```

Trong Go, điều đó là không tường minh. Nếu cấu trúc của bạn có một hàm tên là `Log` với tham số đầu vào là `string` và không có giá trị trả về, sau đó nó có thể được dùng như một `Logger`. Điều này làm cho việc sử dụng giao diện không rõ ràng:

```go
type ConsoleLogger struct {}
func (l ConsoleLogger) Log(message string) {
  fmt.Println(message)
}
```

Nó hướng tới các interface nhỏ và cô đọng. Các thư viện chuẩn là những interface đầy đủ. Gói `io` có các interface như `io.Reader`, `io.Writer`, và `io.Closer`.
Interface cũng có thể được dùng trong composition. Các interface cũng có thể được kết hợp từ nhiều interface khác. Ví dụ, `io.ReadCloser` là một interface được kết hợp từ `io.Reader` và `io.Closer` .

Cuối cùng, interface được sử dụng để tránh tình trạng import lồng nhau. Vì interface không có implementation, chúng sẽ gần như không cần gói phụ thuộc.

## Trước khi đọc tiếp

Tóm lại, bạn tạo cấu trúc mã nguồn của bạn thế nào trong workspace cũng được, miễn là bạn cảm thấy thoải mái sau khi viết một vài project cỡ vừa. Điều quan trọng nhất cần nhớ là mối quan hệ chặt chẽ giữa tên của gói và cấu trúc thư mục của bạn (không chỉ trong một dự án, mà là trong toàn bộ workspace).

Cách mà Go phân quyền truy cập các kiểu dữ liệu khá đơn giản và hiệu quả. Nó cũng khá thích hợp. Có một vài thứ chúng ta chưa xem qua ở đây, ví dụ như các hằng số, biến toàn cục nhưng cách xác định quyền truy cập của chúng hoàn toàn tương tự.

Cuối cùng, nếu bạn mới biết tới interface, bạn cần thời gian để quen với nó.

# Chapter 5 - Tidbits

Trong chương này, chúng ta sẽ bàn về những tính năng đặc biệt của Go.

## Xử lý lỗi

Cách xử lý lõi trong Go là sử dụng giá trị trả về của hàm, mà không phải phát sinh ngoại lệ (exceptions). Xem hàm `strconv.Atoi` , nó nhận đối số đầu vào là một xâu và cố gắng chuyển nó thành một số nguyên:

```go
package main

import (
  "fmt"
  "os"
  "strconv"
)

func main() {
  if len(os.Args) != 2 {
    os.Exit(1)
  }

  n, err := strconv.Atoi(os.Args[1])
  if err != nil {
    fmt.Println("not a valid number")
  } else {
    fmt.Println(n)
  }
}
```

Bạn cũng có thể tạo ra một kiểu lỗi mới, yêu cầu duy nhất của loại dữ liệu này là phải tuân thủ đầy đủ mô tả interface `error`, một interface có sẵn của Go, đó là:

```go
type error interface {
  Error() string
}
```

Chúng ta có thể tự tạo ra một kiểu lỗi (error type) bằng cách import gói `errors` và sử dụng nó trong hàm `New`:

```go
import (
  "errors"
)


func process(count int) error {
  if count < 1 {
    return errors.New("Invalid count")
  }
  ...
  return nil
}
```

Đó là một mẫu chung trong thư viện chuẩn của Go về cách sử dụng biến kiểu error. Ví dụ, gói `io` có biến `EOF` được định nghĩa là:

```go
var EOF = errors.New("EOF")
```

Đây là một biến của gói, nó được định nghĩa bên ngoài các hàm, có thể truy cập từ các gói khác (Kí tự đầu tiên là chữ in hoa). Rất nhiều hàm có thể trả về lỗi này, khi chúng ta đọc từ một file hoặc STDIN. Nếu trong một ngữ cảnh phù hợp, bạn nên dùng lỗi này. Là người dùng, chúng ta có thể sử dụng như sau:

```go
package main

import (
  "fmt"
  "io"
)

func main() {
  var input int
  _, err := fmt.Scan(&input)
  if err == io.EOF {
    fmt.Println("no more input!")
  }
}
```

Lưu ý: Go có hàm `panic` và `recover`. `panic` tương đương với phát sinh một ngoại lệ (throw an exception) trong khi `recover` tương đương với `catch`; chúng gần như không được sử dụng.

## Defer


Mặc dù Go có một bộ gom rác tự động (GC), một số tài nguyên cần được giải phóng một cách tường minh. Ví dụ, chúng ta cần phải `Close()` tập tin sau khi hoàn thành công việc. Lệnh này phải sử dụng rất thận trọng. Với ví dụ này, chúng ta đang viết một hàm, và rất dễ quên `Close` đối tượng mà chúng ta đã khai báo ở 10 dòng trước đó. Trong trường hợp khác, một hàm có thể có nhiều điểm kết thúc. Giải pháp của Go là từ khóa `defer`:

```go
package main

import (
  "fmt"
  "os"
)

func main() {
  file, err := os.Open("a_file_to_read")
  if err != nil {
    fmt.Println(err)
    return
  }
  defer file.Close()
  // read the file
}
```

Nếu bạn thử chạy đoạn mã trên, bạn sẽ nhận được một lỗi (file không tồn tại). Điểm nổi bật ở đây là cách mà `defer` hoạt động. Bất lệnh nào đi kèm với từ khóa `defer` sẽ được thực thi sau khi phương thứ kết thúc. Điều này giúp bạn giải phóng tài nguyên gần như ở bất cứ chỗ nào nó được sử dụng xong, và bạn sẽ không phải quan tâm quá nhiều nếu hàm có nhiều điểm kết thúc.

## go fmt

Hầu hết các chương trình được viết bằng Go đều theo một cách định dạng, đặt tên, tab được dùng để dóng hàng và dấu ngoặc được dùng trên một dòng như một biểu thức.

Tôi biết, bạn có phong cách riêng và bạn muốn gắn bó với nó. Đó là điều mà tôi làm trong một thời gian dài, nhưng tôi rất vui vì cuối cùng thì tôi cũng bỏ được nó. Một vấn đề lớn là lệnh `go fmt`. Nó rất dễ sử dụng.

Khi bạn làm việc trong một dự án, bạn có thể áp dụng cách định dạng với toàn bộ thư mục đó và các thư mục con của nó bằng cách:

```
go fmt ./...
```

Hãy thử nó. Nó không chỉ căn chỉnh mã nguồn giúp bạn. Nó cũng căn lại các khai báo trường và sắp xép thứ tự của các gói được thêm vào mã nguồn theo thứ tự alphabe.

## Lệnh If có khởi tạo

Gô hỗ trợ lệnh If với một thay đổi nhỏ, một giá trị có thể được khởi tạo trước khi nó được đem so sánh:

```go
if x := 10; count > x {
  ...
}
```

Đó là một ví dụ quá đơn giản. Trong thực tế, bạn có thể làm như sau:

```go
if err := process(); err != nil {
  return err
}
```

Điều thú vị là, giá trị này sẽ không tồn tại ở ngoài lệnh if, nó chỉ tồn tại bên trong lệnh `if`, `else if` hoặc `else`.

## Interface rỗng và Chuyển đổi kiểu dữ liệu

Trong hầu hết các ngôn ngữ hướng đối tượng, một lớp cơ bản được dựng sẵn, thường tên là `object`, nó là lớp cha của tất cả các lớp khác. Go, không có khái niệm kế thừa, tất nhiên là nó cũng chẳng có lớp cha nào cả. Go cho phép tồn tại một interface rỗng (empty interface), không chứa một phương thức nào: `interface{}`. Tất cả các loại dữ liệu khác đều có thể coi là một thể hiện (implementation) của empty interface, một cách không tường minh.

 Nếu muốn, chúng ta có thể viết một hàm `add` có chữ kí như sau:

```go
func add(a interface{}, b interface{}) interface{} {
  ...
}
```

Để chuyển dổi một biến interface sang một kiểu tường minh, sử dụng `.(TYPE)`:

```go
return a.(int) + b.(int)
```

Lưu ý là nếu kiểu dữ liệu cần chuyển đôi không tương thích với kiểu `int`, lệnh trên sẽ phát sinh lỗi.

Bạn cũng có thể sử dụng cách sau để kiểm tra kiểu của biến:

```go
switch a.(type) {
  case int:
    fmt.Printf("a is now an int and equals %d\n", a)
  case bool, string:
    // ...
  default:
    // ...
}
```

Bạn có thể sử dụng interface bây giờ. Nhưng phải thừa nhận rằng, mã nguồn sẽ không dễ đọc. Chuyển đổi kiểu qua lại đôi khi khá nguy hiểm nhưng đó là cách duy nhất để làm việc này trong một ngôn ngữ tĩnh.

## Xâu (String) và mảng byte (Byte Array)

Xâu va mảng byte có liên hệ khá gần với nhau. Chúng ta có thể dễ dàng chuyển đổi loại này sang loại kia:

```go
stra := "the spice must flow"
byts := []byte(stra)
strb := string(byts)
```

Sự thật là, cách ép kiểu này là cách chuyển đổi kiểu dữ liệu thông dụng giữa nhiều kiểu dữ liệu với nhau. Một số hàm yêu cầu đầu vào rất tường minh:`int32` , `int64` hoặc một số không dấu. Bạn có thể làm điều tương tư như sau:

```go
int64(count)
```

Khi nói đến byte và xâu, nó có thể là thứ bạn sử dụng thường xuyên. Nhớ rằng khi bạn dùng `[]byte(X)` hoặc `string(X)`, bạn đang tạo ra một bản sao của dữ liệu gốc. Điều đó là cần thiết, vì các xâu thường không thay đổi được.

Các xâu được tạo ta từ [`runes`](https://en.wikipedia.org/wiki/Runes) là các kí tự unicode. Bạn có thể không tính được đúng giá trị độ dài của xâu. Đoạn mã sau đây in số 3:

    fmt.Println(len("椒"))

Nếu bạn duyệt qua xâu bằng `range`, bạn sẽ nhận được từng kí tự, chứ không phải từng byte. Tất nhiên, khi bạn chuyển một xâu sang kiểu mảng byte, bạn sẽ lấy được dữ liệu đúng.

## Kiểu dữ liệu hàm (Function Type)

Hàm là một loại dữ liệu lớp đầu tiên:

```go
type Add func(a int, b int) int
```

Nó có thể được dùng ở bất cứ đâu, như một kiểu dữ liệu thông thường, một tham số hoặc một giá trị trả về.

```go
package main

import (
  "fmt"
)

type Add func(a int, b int) int

func main() {
  fmt.Println(process(func(a int, b int) int{
      return a + b
  }))
}

func process(adder Add) int {
  return adder(1, 2)
}
```

## Trước khi đọc tiếp

Chúng ta đã nhìn vào nhiều khía cạnh khác nhau của một chương trình Go. Đáng chú ý nhất là chúng ta hiểu cách xử lý lỗi và làm thế nào để giải phóng tài nguyên, ví dụ như các kết nối hoặc các file đang mở. Nhiều người không thích cách tiếp cận của Go trong khi xử lý lỗi. Nó giống như một bước lùi. Trong một số trường hợp, tôi đồng ý với ý kiến đó. Tuy nhiên, tôi cũng thấy rằng cách làm của Go khiến cho mã nguồn rất dễ theo dõi. `defer` là một cách tiếp cận khác nhưng hiệu quả khi quản lý tài nguyên. Sự thật là nó không phải chỉ để dùng khi quản lý tài nguyên. Bạn có thể dùng `defer` cho bất cứ mục đích nào khác, ví dụ như ghi log khi kết thúc hàm.

Chắc chắn là chúng ta không xem hết tất cả các tính năng đặc biệt của Go trong chương này. Nhưng bạn có thể thấy đủ với những ghì bạn đã được học.
