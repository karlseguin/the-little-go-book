## За книгата 

## Лиценз

Книгата Little Go Book е лицизирана под the Attribution-NonCommercial-ShareAlike 4.0 International license. Книгата не се заплаща.

Свободни сте да я копирате, разпостранявате, редактирате или да показвате книгата, моля ви да свързвате книгата с мен, Karl Seguin, и да не я използвате за комерсиални цели.


Можете да намерите всички подробности за лиценза на следният линк:

<https://creativecommons.org/licenses/by-nc-sa/4.0/>

## Последна версия

Последната версия на книгата можете да намерите на:
<https://github.com/karlseguin/the-little-go-book>

# Въведение
Винаги съм имал смесени чувства когато става въпрос за учене на нови езици. От една страна, езиците са толкова фондаментални към това което правим, че дори малка промяна може да има значителен ефект. "Аха" момента може да има еластичен ефект как програмираш и може да окаже влияние върху твойте очаквания към други езици. От друга страна, дизайнът на език е частичен. Учене на нови ключови думи, система на писане, стил, както и нови библиотеки и общности са доста неща които могат да бъдат определни. Всравнено с всичко останало, ние трябва да учим нови езици, често изглежда като незначително инвестиране на нашето време.

Това означава, че трябва да продължим напред. Трябва да бъдем склонни да вземаме мерки, защото езиците са в основата на това което правим. Въпреки че промените са малки,те оказват влияние върху продуктивноста, стабилноста, скороста, testability, dependency management, error handling, документацията, профилирането, обществата, стандартните библиотеки и още много други. Is there a positive way to say *death by a thousand cuts*?

Това ни поставя въпросът **Защо Go?** За мен има две основни причини. Първата, е че като цяло е лесен език с лесна библиотека. По много начини, целта на Go е да улесни някои от сложностите, които сме виждали в другите езици през последните няколко деситилетия. Другата причиниа е, че за много програмисти, Go ще допълни техният арсенал. 

Go е направен за системен език (e.g., operating systems, device drivers) и насочен към C и C++ програмисти. Според Go team, и което е вярно за мен, application developers, not system developers са основните Go потребители. Защо ? Не мога да кажа от страна на системните програмисти, но за тези които изграждат уеб сайтове, съвриси, десктоп приложения и подобни, it partially comes down to the emerging need for a class of systems that sit somewhere in between low-level system applications and higher-level applications

Може това са събощения, кеш, тежко изчисление и анализ на данни, команден интерфейс, събиране на данни или наблюдение. Не знам какъв етитет да му поставя, но по време на курса на моята кариера, докато сложноста на системите продълажаваше да се разраства и успоредноста често се измерва в десетки от хиляди, имаше все по голяма нужда от персонализирана инфраструкторна система. Такава система *може* да бъде изградена с Ruby или Python или нещо друго (и много хора го правят), но тези системи могат да се възползват от система която е по способна и с по добра скорост. Подобно, Go *може* да се използваза играждане на уеб сайтове (и много хора го правят), но аз все още предпочитам да използвам Node или Ruby за такива системи.

Go има много други места, в които превъзходства. Например, няма зависимости на пакети, когато се стартира компилирана Go програма. Няма да се притесняваме за ако нашите клиенти имат Ruby или JVM инсталирани, и какви версии имат. Поради тази причина Go става все по-популярен като ези за програми използващи командния ред или други програми, които трябва да се разпостраняват (например софтуер за събиране на логове).

Казано по ясно, ученето на Go е добре уползотворено време. Няма да прекарате дълги часове в учене на Go, докато дойде момента в който ще започнете да виждате практически ползи. 

## Бележка от Автора

Докато писах тази книга се чувствах доста дискомфортно поради няколко причини. Първата е че Go имат собствена документазия, по конкретно [Effective Go](https://golang.org/doc/effective_go.html), е доста силна.

Другата причина е, дискомфорта ми от писане на книга за език. Когато написах The Little MongoDB Book, можех да предположа, че повечето читатели имат основни познания по релационни бази и модели. С книгата The liitle Redis Book, можеше да се предположи, че читателят е запоснат с  key value store and take it from there.

Докато мислех как да изградя параграфите и главите, чрез които да поставя основите, знаех, че тези предположения няма да са възможни. Колко време прекарваш в говорене за интерфейсите, знаейки, че за някого, тази концепция е изцяло нова, докато за други няма да има нужда повече от *Go има интерфейси*? Ще се чувствам по добре, знаеки, че ще ме уведомите ако някои части са по повърхностни, а други по детайлни.
Нека имаме впредвид цената на тази книга. 

# Getting Started

Ако искате да си поиграете с Go, трябва да проверите [Go Playground](https://play.golang.org/), което ви позволява да изпълните вашият код онлайн, без да инсталирате каквото и да е било. Също така, това е много често използвам метод за споделяне на вашият код, когато се нуждаете от помощ например в [Go форумът](https://groups.google.com/forum/#!forum/golang-nuts) и места като StackOverflow.

Инсталирането на Go e доста лестно. Може да го инсталите чрез неговият код, но аз ви предлагам по-лесният вариант като използвате вече компилираните файлове. Кога отидете на [go страница за сваляне](https://golang.org/dl/), ще видите инсталатори, за различните платформи. Нека да избегнем това и да научим как да настройм Go сами. Както ще забележете, не е трудно.

Освен за лесни примери, Go е структориран да работи, когато вашият код е в работна среда. Работна среда е папката, в която се съдържат подпапките `bin`, `pkg` and `src`. Може да бъдете изкушени да накарате Go да следва вашият стил на работа - недейте.

Обикновено, аз поставям моят проект в `~/code`. Например, `~/code/blog` съдържа моят блог. За Go, моята работна среда е `~/code/go` и моят блог базиран на Go ще бъде в `~/code/go/src/blog`.

Накратко, направете папка `go` с `src` подпапка, където ще поставяте вашите проекти.

## OSX / Linux
Изтеглете файла с разширение `tar.gz` за вашета платформа. За OSX, най-вероятно ще трябва да използвате `go#.#.#.darwin-amd64-osx10.8.tar.gz`, където `#.#.#` е последната версия на Go. 

Разархивирайте файлът в `/usr/local` чрез командата `tar -C /usr/local -xzf go#.#.#.darwin-amd64-osx10.8.tar.gz`.

Сега трябва да зададем две променливи

  1. `GOPATH` сочи към работното място, за мен например това е `$HOME/code/go`.
  2. Сега трябва да зададем пътят на бинарния файл на Go към нашият `път`.

Можем да направим това от командния ред:

    echo 'export GOPATH=$HOME/code/go' >> $HOME/.profile
    echo 'export PATH=$PATH:/usr/local/go/bin' >> $HOME/.profile

Ще трябва да активираме тези промениливи. Нека да затворим и да отворим отново командния ред, или просто да напишем `source $HOME/.profile`.

Напишете `go version` и трябва да получите резултат приличащ на `go version go1.3.3 darwin/amd64`. 

## Windows
Изтеглете последният файл с разширение zip. Ако работите на x64 система, ще ви трябва `go#.#.#.windows-amd64.zip`, където `#.#.#` е последната версия на Go.

Разархивирайте фалът където пожелаете.`c:\Go` е добър избов. 

Нека да зададем променливите на средите:

  1. `GOPATH` трябва да бъде насочено към работната среда. Това може да изглежда по следният начин `c:\users\goku\work\go`.
  2. Добавете `c:\Go\bin` към вашият `PATH`.

Променливите на средите могат да бъдат настроени чрез `Environment Variables` бутона на `Advanced` прозорец на `System` контролен панел. Някой версии на Windows предлагат контролния панел чрез `Advanced System Settings` опция, позиционирана в `System` контролен панел.

Отворете командният ред и напишете `go version`. Трябва да получите резултат приличащ на този `go version go1.3.3 windows/amd64`.

# Chapter 1 - The Basics
Go е компилиран, статичен език със синтаксис наподобяваш C и garbage collection ( система за почистване на паметта). Какво означава това?



## Компилация
Компилация е процеса на превеждане на кода, който пишете на език на ниско ниво -- или assembly ( какво в случея с Go ) или на друг език на по високо ниво ( като Java and C# ).

Езиците които се компилират могат да бъдат неудобни за работа защото компилацията може да отнеме много време. Трудно се работи, когато трябва да чакаш минути или часове кодът да бъде компилиран. За това компилацията е една от освновните цели на езика Go. Това са добри новини за хората, които работят по големи проекти, както и за тези които ги използват за бързо обръщане към езици от по-високо ниво.

Езиците, които се компилират са по-бързи от останалите и изпълняването им не се нуждае от допълнителни пакте ( поне, със сигорност това е вярно за C, C++ и Go които се компилират директно до асемблер). 

## Static Typing - предефинирани типове

Предефинирани типове означава променливите да бъдат от специфичен тип ( int, string, bool, []byte и други ). Това се постига чрез определяне на типа когато променливата се дефинира или както в много от случейте, компилаторът решава какъв тип да бъдат ( ще разгледаме примери по-късно ). 

Има много което може да бъде казано за предефинираните типове, но вярвам че ще бъде по-добре разбрано чрез изучаване на кода. Ако използвате динамични езици, може да намерите това за тромаво и трудно за употреба. Няма да сбъркате, но има много предимства в това, особено, когато се използва с компилация. Двете вървят често заедно. Когато имате едното, обикновено имате и другото, но това не е задължително. В неизменима система, компилаторът успява да хване проблеми не свързани само със синтактични грешки, но и със производителноста. 

## C-Like Syntax

Твърдението че език има подобен синтаксис на С, означава че, ако ползвате други езици подобни на С като С, C++, Java, JavaScript и C#, тогава ще намерите Go за подобен -- поне повърхностно. Като например `&&` се ипозлза като логическо "И" ("AND"), `==` се използва за всравние, `{` и `}` започват и завършват даден тип обхват, и масивните идекси започват от 0.

C-like syntax also tends to mean semi-colon terminated lines and parentheses around conditions. Go does away with both of these, though parentheses are still used to control precedence. For example, an `if` statement looks like this:

```go
if name == "Leto" {
  print("the spice must flow")
}
```

И в по сложните случаи, скобите са все още полезни:

```go
if (name == "Goku" && power > 9000) || (name == "gohan" && power < 4000)  {
  print("super Saiyan")
}
```

След всичко това, Go е много по близо до С от C# и Java - не само като синтаксис, но като цел на употреба. Това рефлектира върху проницителноста на езика и неговото приложение, което се надявам да стане очевидно докато го учите. 

## Garbage Collected ( Система за почистване на паметта )
Когато се създават, някой променличи имат лесен за определяне живот. Например променлива локална на фукция, се изтрива когато фунцкията приключи. В други случаи, не - поне за компилатора. Например, времето на живот на променлива, върната от фукнция или използвана от друга променлива и обект, може трудно да бъде определено. Без система за почистване на памета, работа на програмиста е, да освободи памета асоцирана с подобни променливи, когато знае че няма да бъде повече необходима. Как? На С се използва `free(str);`

Езици използващи система за почистване на памета ( като Ruby, Python, Java, JavaScript, C#, Go ) са способни да следят за такива променливи и да изчистват паметта, когато те вече не се използват. Подобна система предизвиква доста главоблъсканици, но елеминира голям брой бъгове.


## Running Go Code

Нека да започнем нашето предизвикателство с лесна програма и научим как да я компилираме и изпълняваме. Отворете вашият любим текстов редактор и напишете следният код:


```go
package main

func main() {
  println("it's over 9000!")
}
```

Записваме го като `main.go`. Можем и да го запишем, където пожелаем; не е нужно да бъде поставен в работната директория на Go.


Сега, отворете командния ред и променете директорията, където записахте файал.а За мен, това означава да напиша `cd ~/code`.

И накрая, стартираме програмата като напишете:

```
go run main.go
```

Ако всичко сработи, трябва да видим *it's over 9000!*.

Но чакай, какво се случи с компилиращите стъпки?  `go run` е команда която компилира *и* стартира кода. Ползва временна директория да създаде програмата, изпълнява я и след това почиства след себе си. Можете да видите мястото на временният файл като използвате:

```
go run --work main.go
```

За да компилираме кода, използваме `go build`:

```
go build main.go
```

Това ще направи изпълняем файл  `main` който може да пуснете. На Linux / OSX, не забравяйте, че трябва да добавите точка-наклонена черта `./main`.

Докато програмираме може да използваме `go run` или `go build`. Но когато искаме да качите нашият код някъде, по-добре да го компилираме до бинарен файл използвайки `go build` и да го изпълним.


### Main

Да се надяваме, че кодът който изпълнихме е разбираем. Направихме фукнция и принтирахме низ с вградената функция `println`. Дали `go run` знае какво да изпълни, защото имаше само един избор? Не. В Go, входната точка към програмата трябва да бъде функция наречена `main` в пакета `main`.

Ще говорим за този пакет, в по късна глава. За момента, докато се фокусираме да разберем основните на Go, винаги ще пишем нашият код в рамките на `main` пакета.

Ако искаме,може да променим кода и да сменим името на пакета. Пускаме кода използваки `go run` и ще видим грешка. Тогава, нека да върнем обратно името на  `main`, но този път ще сменим името на фукнцията. Сега имаме другра грешка. Можете да опитате различни комбинации на промени, но вместо това е по добре да използвате  `go build`. Докато кодът се компилира, се забелязва, че просто няма начална точка от къде да се изпълни. Това е абсолютно нормално, когато например, изграждаме библиотека


## Imports
Go има доста вградени фунцкии, като `println`, които могат да бъдат използвани без препратки. Няма да стигнем много далеч, без помоща на стандартните библиотеки и накрая използваме библиотеки от трети страни. В Go, ключовата дума `import`, се иползва за деклариране на пакетите, които се използват от кода в съответния файл. 

Нека стартираме нашта програма:

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
  fmt.Println("It's over", os.Args[1])
}
```

Което може да бъде стартирано чрез командата:

```
go run main.go 9000
```

Сега ние използваме две от стандартните библиотеки на Go: `fmt` и `os`. Също така представихме една от вградените функции `len`. `len` връща размера на стринг, или броят на стойности в директория, или както видяхме, броят на елементите в масив. Ако се чудите, защо очакваме 2 аргумента, това е защото първият аргумент -- в индекс 0 -- е винаги пътя на текущата вървяща програма. ( Сменете пгромата да покаже 1-вият аргумент и ще видите. )

Вероятно сте забелязали, че добавихме името на функцията към пакета, например `fmt.Println`. Това е различно от много други езици. Ще разгледаме по-подробно пакетите в по късните глави. За сега, ни е необходимо само да знем как да вмъкваме пакети и да ги използваме.

Go е стриктен, когато става въпрос за вмъкването на пакети. Програмата няма да бъде компилирана, ако вмъкнете проект и не го изпозлвате. Пробвайте да стартирате този код:

```go
package main

import (
  "fmt"
  "os"
)

func main() {
}
```

Ще получите две грешки за това, че `fmt` и `os` са вмъкнати и не са използвани. Може ли това да бъде досадно? Абсолютно. Разбира се, с времето ще свикнете ( но все още ще бъде досадно). Go е стриктен в това отношение, защотот вмъкнатите пакети, които не се иползват, могат да забавят компилацията, несъмнено проблемът е в нас. 

Друго нещо, което трябва да отблежем е, че стандартната библиотека на Go е доста добр документирана. Може да разгледате на <https://golang.org/pkg/fmt/#Println> за да се запознаете повече с функцията `Println`, която използвахме. Може да натиснете на главата на секцията и ще видите кодът. Също, придвижете се най-отгоре за да научите повече за форматиращите способности на Go. 

Ако пък случайно, имате проблеми с интернета, можете да получите документацията като изпълните следната команда:
```
godoc -http=:6060
```

и насочите вашият браузър към `http://localhost:6060`

## Променливи и декларации

Щеше да бъде приятно, ако можете да започнем и да приключим изучаването на променливите като кажем *стойност на променлива се предава като напраим x = 4.*
За съжаление, нещата са по сложни в Go. Ще започнем нашият разговор като разгледаме по-лесни примери. След това, в следващата глава, ще разширим нещата, когато разглеждаме изграждането и иползването на структори. Въпреки това, вороятно ще отнеме известно време, докато започнете да се чувствате удобно. 

Може да си кажете *Уау! Какво толкова може да бъде сложно?* Нека да погледнем няколко примера.

Най-точният начин да декларираме променлива и да и придадем стойност в Go е също и най многословният:

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

В примера, ние деклрираме променливата `power` от тип `int`. По подразбиране, Go придава празна стойност на променливите. На променливите от тип  Integer се придава `0`, booleans `false`, стрингове `""` и така нататък. Следващата стъпка е, да предадем стойност `9000` към променливата `power`. Можем да обединим първите два реда по следният начин:

```go
var power int = 9000
```
Но все още, това е много писане. Go има съкратен вариант за деклариране на променливи и това е чрез оператора `:=`, който може да открие типа:

```go
power := 9000
```
Това е доста полезно, и също работи с фукнции:

```go
func main() {
  power := getPower()
}

func getPower() int {
  return 9001
}
```

Важно е да се запомни че `:=` се използва за деклариране на променлива, докато се придава стойност. Защо? Защото променлива не може да бъде декларирана два път ( поне не и по същият начин ). Ако се опитате да изпълните следното, ще получите грешка:

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

Компилаторът ще се оплачи със следната грешка *no new variables on left side of :=*.. Това означава, че когато за първи път декларираме променлива, използваме `:=`, но на последващо предаване на стойност, използваме оператора  `=`. В това има много смисъл, но може да бъде трудно за човешката памет, кога трябва да се използват двата оператора. 

Ако се вгледате в грешката, ще забележете че *variables* е в многожествено число. Това е така, защото Go ви позволява да предавате стойност на няколко променливи ( използваки `=` или `:=`):

```go
func main() {
  name, power := "Goku", 9000
  fmt.Printf("%s's power is over %d\n", name, power)
}
```

Докато има поне една променлива, която е нова, операторът `:=` може да бъде използван. Например:

```go
func main() {
  power := 1000
  fmt.Printf("default power is %d\n", power)

  name, power := "Goku", 9000
  fmt.Printf("%s's power is over %d\n", name, power)
}
```

Докато `power` се използва два пъти с оператора `:=`, компилаторът няма да се оплаква за втория път, когато го използваме, защото ще види, че другата променлива `name` е нова за него и ще позволи `:=`. Въпреки това, смяната на типа на променливата `power` е невъзможно. По рано тя беше декларирана ( изрично ) като integer и за това, могат да пъдат предавани числа като стойност. 

За сега, последното нещо, което трябва да знаем, е че както импортването на пакети, така и Go няма да позволи да има променливи, които не се използват. Като например:

```go
func main() {
  name, power := "Goku", 1000
  fmt.Printf("default power is %d\n", power)
}
```
няма да се компилира, защото променливата `name` е декларирана, но не е използвана. Така както неиползваните пакети ще предизвикат проблеми, но като цяло мисля, че това доста помага да държим кода чист и читлив.

Има още доста неща, които да научим за декларирането и предаването на стойности. За сега, запомнете, че ще използваме `var NAME TYPE`, когато деклрарираме променливи с празна стойност, `NAME := VALUE`, когато декларираме и предаваме стойност, и `NAME = VALUE`, когато предаваме стойност на предишно декларирана променлива. 

## Function Declarations

Това е добър момент да ви покажа, че фунцкиитемогат да върнат няколко стойности. Нека разгледаме три функции: една, която не връща стойност, една която връща една стойност, и една която връща две стойности.

```go
func log(message string) {
}

func add(a int, b int) int {
}

func power(name string) (int, bool) {
}
```

Ще използваме последния като:
```go
value, exists := power("goku")
if exists == false {
  // handle this error case
}
```
Понякога, ни трябва само една от върнатите стойност. В тези сутиации, предаваме стойност на другата променлива към `_`:

```go
_, exists := power("goku")
if exists == false {
  // handle this error case
}
```

Това е повече от условие.  `_`, празният идентификатор, е специален това че върнатата стойност, всъщност не е записана. Това ви позволява да иползвате `_` отново и отново независимо от върнатия тип.

Накрая, има още нещо, което ще искате да използвате докато изграждате деклариране с фунцкии. Ако параметрите споделят същият тип, можем да иползваме по кратък синтаксис, като например: 

```go
func add(a, b int) int {

}
```

Възможноста да се връщат няколко променливи, е нещо което ще използвате често. Другото нещо, което ще използвате често е  `_`, за да изоставите стойност. Найменованите върнати стойности и по-малко подоробните декларирани параметри не са толкова чести. Въпреки това, ще ги използвате рано или късно, за това е важно да сте запознати с тях.

## Before You Continue

Разгледахме някои от малките индивидуални части и най-вероятно се чувствате объркан в този момент. Бавно ще продължим да изграждаме по-големи примери и се надявам, частите да започнат да се нарвъзват.

Ако идвате от динамичен език, сложноста около типовете и деклараците, може да ви се струва като стъпка назад. Няма да да отрека. За някои системи, динамичните езици са катерогично по добре. 

Ако идвате от статитчен език, вероятно ще се чувствате добре с Go. Предполагаемите типове и множеството върнати стойности са приятни ( въпреки че не са екслузивни за Go ). Надявам се докато учим все почече, ще започнете да оценявате чистия и сбит синтаксис. 

# Chapter 2 - Structures

Go не е обкентно-ориентиран език като C++, Java, Ruby and C#. Няма обекти, нито наследяване, също така няма много други неща характерни за обектно-ориентираното програмине като polymorphism and overloading.

Това което Go използва са структори, които могат да бъдат асоцирани с методи. Go също поддържа и прости, но ефективно форми на композиции.

																Overall, it results in simpler code, but there'll be occasions where you'll miss some of what OO has to offer. (It's worth pointing out that *composition over inheritance* is an old battle cry and Go is the first language I've used that takes a firm stand on the issue.)

Although Go doesn't do OO like you may be used to, you'll notice a lot of similarities between the definition of a structure and that of a class. A simple example is the following `Saiyan` structure:

```go
type Saiyan struct {
  Name string
  Power int
}
```

Скоро ще разгледаме и как се добавя мотод към тази структора, както може да се иползват методи, които са част от Клас. Преди да направим това, обаче, ще се върнем да разгледаме декларациите. 

## Declarations and Initializations

Когато за първи път разгледахме променливите и декларациите, ние се спряхме само на вградените типове, като integers и strings. Сега говорейки за структори, ще разшерим нашият поглед и ще включим pointers

Най-простият начин да зададем стойност на нашата структора е:

```go
goku := Saiyan{
  Name: "Goku",
  Power: 9000,
}
```

*Забележка:* Добавянето на `,` към структурата, показана, по-горе е задължително, в противен случай компилаторът ще ни даде грешка. Това би било доста полезно, когато се изисква стилност, особено, ако често програмирате на езици, които не го изискват. 

Няма нужда да конфигурираме всички полета. И двата варианта са валидни:

```go
goku := Saiyan{}

// или

goku := Saiyan{Name: "Goku"}
goku.Power = 9000
```

Както променливите могат да имат стойност "0", така и полетата.

Още повече, може името на полето да бъде пропуснато и да се разчита на пореднотста на декларациите на полетата (though for the sake of clarity, you should only do this for structures with few fields):

```go
goku := Saiyan{"Goku", 9000}
```

Това, което всички от по горните примери правят, е да декларират променлива `goku` и да придадат стойност към нея.

Много от пътите, ние не искаме променливата да е директно асоцирана със стойност, вместо това използваме променлива която има pointer към стойност.  pointer е адрес от паметта; това е мястото където се намира същинската стойност. Това е извъртане на нещата. Представете си го, като слаба връзка между разликата от това да сте в къща и да имате опътване как да стигнете до къщата.

Защо бихме искали pointer към стойност, вместо да имаме истинската стойност? Това идва от начина по който Go предава аргументите към фунцкия: като копия. Знаейки това, какво би ни извадил като резултат следният пример?

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

Отговорът е 9000, не 19000. Защо? Защото `Super` направи промени по копието на нашата оригинална `goku` стойност и за това, промените направени в `Super` не бяха отразени. За да направим това да работи, вероятно предполагате, че трябва да предадем pointer към стойноста:

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

Направихме две промени. Първата е използването на оператора `&` за да получим адреса на стойноста ( наричаме го *address of* оператор). След това променихме типа на параметъра `Super`, който очаква. Преди очакваше стойност от тип `Saiyan`, но сега очаква адреса на типа `*Saiyan`, където `*X` означава *pointer към стойност от тип X*. Очевидно има някаква връзка между типовете `Saiyan` и `*Saiyan`, но те са два различни типа.

Отблежете това, че ние все още предаваме копие от `goku's` към стойността `Super`, просто се случва, че стойността `goku's` става адрес. Копието е в същият адрес като оригинала, което е това от което се възползваме. Представете си го че е копие от пътя към ресторат. Това което имате е копие, но в същият момент ви указва същият ресторант като оригинала.

Можем да докачем, че е копие, като се опитаме да сменим към това което ни указва ( не е нещо което обикновено искате да направите):

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

Горният пример, отново ни показва 9000 като резултат. По този начин много от езиците се държат, включително Ruby, Python, Java и C#. Go, и до някаква степен C#, просто го правят видимо.

Също така, би трябва да е очевидно, че копирането на адрес ще бъде по удобно, от копирането на сложна структура. На 64 битова машина, адресът е 64 бита дълъг. Ако имаме структора с много полета, създаването на копия, може да ни струва скъпо. Истинската ценност на pointers е това, че те могат да споделят стойност. Бихме ли искали `Super` да промени копие на  `goku` или да сподели редактирана `goku` стойност?

Всички неща, които разгледахме по горе, не означава че всеки път ще искате да ползвате pointer. Към края на тази глава, когато разгледаме малко повече, какво можем да правим със структорите, ще се върнем към въпросът pointer-versus-value. 

## Functions on Structures

We can associate a method with a structure:

```go
type Saiyan struct {
  Name string
  Power int
}

func (s *Saiyan) Super() {
  s.Power += 10000
}
```

In the above code, we say that the type `*Saiyan` is the **receiver** of the `Super` method. We call `Super` like so:

```go
goku := &Saiyan{"Goku", 9001}
goku.Super()
fmt.Println(goku.Power) // will print 19001
```

## Constructors

Structures don't have constructors. Instead, you create a function that returns an instance of the desired type (like a factory):

```go
func NewSaiyan(name string, power int) *Saiyan {
  return &Saiyan{
    Name: name,
    Power: power,
  }
}
```

This pattern rubs a lot of developers the wrong way. On the one hand, it's a pretty slight syntactical change; on the other, it does feel a little less compartmentalized.

Our factory doesn't have to return a pointer; this is absolutely valid:

```go
func NewSaiyan(name string, power int) Saiyan {
  return Saiyan{
    Name: name,
    Power: power,
  }
}
```

## New

Despite the lack of constructors, Go does have a built-in `new` function which is used to allocate the memory required by a type. The result of `new(X)` is the same as `&X{}`:

```go
goku := new(Saiyan)
// same as
goku := &Saiyan{}
```

Which you use is up to you, but you'll find that most people prefer the latter whenever they have fields to initialize, since it tends to be easier to read:

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

Whichever approach you choose, if you follow the factory pattern above, you can shield the rest of your code from knowing and worrying about any of the allocation details.

## Fields of a Structure

In the example that we've seen so far, `Saiyan` has two fields `Name` and `Power` of types `string` and `int`, respectively. Fields can be of any type -- including other structures and types that we haven't explored yet such as arrays, maps, interfaces and functions.

For example, we could expand our definition of `Saiyan`:

```go
type Saiyan struct {
  Name string
  Power int
  Father *Saiyan
}
```

which we'd initialize via:

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

Go supports composition, which is the act of including one structure into another. In some languages, this is called a trait or a mixin. Languages that don't have an explicit composition mechanism can always do it the long way. In Java, there's the possibility to extend structures with *inheritance* but, in a scenario where this is not an option, a mixin would be written like this:

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

This can get pretty tedious. Every method of `Person` needs to be duplicated in `Saiyan`. Go avoids this tediousness:

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

The `Saiyan` structure has a field of type `*Person`. Because we didn't give it an explicit field name, we can implicitly access the fields and functions of the composed type. However, the Go compiler *did* give it a field name, consider the perfectly valid:

```go
goku := &Saiyan{
  Person: &Person{"Goku"},
}
fmt.Println(goku.Name)
fmt.Println(goku.Person.Name)
```

Both of the above will print "Goku".

Is composition better than inheritance? Many people think that it's a more robust way to share code. When using inheritance, your class is tightly coupled to your superclass and you end up focusing on hierarchy rather than behavior.

### Overloading

While overloading isn't specific to structures, it's worth addressing. Simply, Go doesn't support overloading. For this reason, you'll see (and write) a lot of functions that look like `Load`, `LoadById`, `LoadByName` and so on.

However, because implicit composition is really just a compiler trick, we can "overwrite" the functions of a composed type. For example, our `Saiyan` structure can have its own `Introduce` function:

```go
func (s *Saiyan) Introduce() {
  fmt.Printf("Hi, I'm %s. Ya!\n", s.Name)
}
```

The composed version is always available via `s.Person.Introduce()`.

## Pointers versus Values

As you write Go code, it's natural to ask yourself *should this be a value, or a pointer to a value?* There are two pieces of good news. First, the answer is the same regardless of which of the following we're talking about:

* A local variable assignment
* Field in a structure
* Return value from a function
* Parameters to a function
* The receiver of a method

Secondly, if you aren't sure, use a pointer.

As we already saw, passing values is a great way to make data immutable (changes that a function makes to it won't be reflected in the calling code). Sometimes, this is the behavior that you'll want but more often, it won't be.

Even if you don't intend to change the data, consider the cost of creating a copy of large structures. Conversely, you might have small structures, say:

```go
type Point struct {
  X int
  Y int
}
```

In such cases, the cost of copying the structure is probably offset by being able to access `X` and `Y` directly, without any indirection.

Again, these are all pretty subtle cases. Unless you're iterating over thousands or possibly tens of thousands of such points, you wouldn't notice a difference.

## Before You Continue

From a practical point of view, this chapter introduced structures, how to make an instance of a structure a receiver of a function, and added pointers to our existing knowledge of Go's type system. The following chapters will build on what we know about structures as well as the inner workings that we've explored.

# Chapter 3 - Maps, Arrays and Slices

So far we've seen a number of simple types and structures. It's now time to look at arrays, slices and maps.

## Arrays

If you come from Python, Ruby, Perl, JavaScript or PHP (and more), you're probably used to programming with *dynamic arrays*. These are arrays that resize themselves as data is added to them. In Go, like many other languages, arrays are fixed. Declaring an array requires that we specify the size, and once the size is specified, it cannot grow:

```go
var scores [10]int
scores[0] = 339
```

The above array can hold up to 10 scores using indexes `scores[0]` through `scores[9]`. Attempts to access an out of range index in the array will result in a compiler or runtime error.

We can initialize the array with values:

```go
scores := [4]int{9001, 9333, 212, 33}
```

We can use `len` to get the length of the array. `range` can be used to iterate over it:

```go
for index, value := range scores {

}
```

Arrays are efficient but rigid. We often don't know the number of elements we'll be dealing with upfront. For this, we turn to slices.

## Slices

In Go, you rarely, if ever, use arrays directly. Instead, you use slices. A slice is a lightweight structure that wraps and represents a portion of an array. There are a few ways to create a slice, and we'll go over when to use which later on. The first is a slight variation on how we created an array:

```go
scores := []int{1,4,293,4,9}
```

Unlike the array declaration, our slice isn't declared with a length within the square brackets. To understand how the two are different, let's see another way to create a slice, using `make`:

```go
scores := make([]int, 10)
```

We use `make` instead of `new` because there's more to creating a slice than just allocating the memory (which is what `new` does). Specifically, we have to allocate the memory for the underlying array and also initialize the slice.  In the above, we initialize a slice with a length of 10 and a capacity of 10. The length is the size of the slice, the capacity is the size of the underlying array. Using `make` we can specify the two separately:

```go
scores := make([]int, 0, 10)
```

This creates a slice with a length of 0 but with a capacity of 10. (If you're paying attention, you'll note that `make` and `len` *are* overloaded. Go is a language that, to the frustration of some, makes use of features which aren't exposed for developers to use.)

To better understand the interplay between length and capacity, let's look at some examples:

```go
func main() {
  scores := make([]int, 0, 10)
  scores[7] = 9033
  fmt.Println(scores)
}
```

Our first example crashes. Why? Because our slice has a length of 0. Yes, the underlying array has 10 elements, but we need to explicitly expand our slice in order to access those elements. One way to expand a slice is via `append`:

```go
func main() {
  scores := make([]int, 0, 10)
  scores = append(scores, 5)
  fmt.Println(scores) // prints [5]
}
```

But that changes the intent of our original code. Appending to a slice of length 0 will set the first element. For whatever reason, our crashing code wanted to set the element at index 7. To do this, we can re-slice our slice:

```go
func main() {
  scores := make([]int, 0, 10)
  scores = scores[0:8]
  scores[7] = 9033
  fmt.Println(scores)
}
```

How large can we resize a slice? Up to its capacity which, in this case, is 10. You might be thinking *this doesn't actually solve the fixed-length issue of arrays.* It turns out that `append` is pretty special. If the underlying array is full, it will create a new larger array and copy the values over (this is exactly how dynamic arrays work in PHP, Python, Ruby, JavaScript, ...). This is why, in the example above that used `append`, we had to re-assign the value returned by `append` to our `scores` variable: `append` might have created a new value if the original had no more space.

If I told you that Go grew arrays with a 2x algorithm, can you guess what the following will output?

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

The initial capacity of `scores` is 5. In order to hold 25 values, it'll have to be expanded 3 times with a capacity of 10, 20 and finally 40.

As a final example, consider:

```go
func main() {
  scores := make([]int, 5)
  scores = append(scores, 9332)
  fmt.Println(scores)
}
```

Here, the output is going to be `[0, 0, 0, 0, 0, 9332]`. Maybe you thought it would be `[9332, 0, 0, 0, 0]`? To a human, that might seem logical. To a compiler, you're telling it to append a value to a slice that already holds 5 values.

Ultimately, there are four common ways to initialize a slice:

```go
names := []string{"leto", "jessica", "paul"}
checks := make([]bool, 10)
var names []string
scores := make([]int, 0, 20)
```

When do you use which? The first one shouldn't need much of an explanation. You use this when you know the values that you want in the array ahead of time.

The second one is useful when you'll be writing into specific indexes of a slice. For example:

```go
func extractPowers(saiyans []*Saiyans) []int {
  powers := make([]int, len(saiyans))
  for index, saiyan := range saiyans {
    powers[index] = saiyan.Power
  }
  return powers
}
```

The third version is a nil slice and is used in conjunction with `append`, when the number of elements is unknown.

The last version lets us specify an initial capacity; useful if we have a general idea of how many elements we'll need.

Even when you know the size, `append` can be used. It's largely a matter of preference:

```go
func extractPowers(saiyans []*Saiyans) []int {
  powers := make([]int, 0, len(saiyans))
  for _, saiyan := range saiyans {
    powers = append(powers, saiyan.Power)
  }
  return powers
}
```

Slices as wrappers to arrays is a powerful concept. Many languages have the concept of slicing an array. Both JavaScript and Ruby arrays have a `slice` method. You can also get a slice in Ruby by using `[START..END]` or in Python via `[START:END]`. However, in these languages, a slice is actually a new array with the values of the original copied over. If we take Ruby, what's the output of the following?

```go
scores = [1,2,3,4,5]
slice = scores[2..4]
slice[0] = 999
puts scores
```

The answer is `[1, 2, 3, 4, 5]`. That's because `slice` is a completely new array with copies of values. Now, consider the Go equivalent:

```go
scores := []int{1,2,3,4,5}
slice := scores[2:4]
slice[0] = 999
fmt.Println(scores)
```

The output is `[1, 2, 999, 4, 5]`.

This changes how you code. For example, a number of functions take a position parameter. In JavaScript, if we want to find the first space in a string (yes, slices work on strings too!) after the first five characters, we'd write:

```go
haystack = "the spice must flow";
console.log(haystack.indexOf(" ", 5));
```

In Go, we leverage slices:

```go
strings.Index(haystack[5:], " ")
```

We can see from the above example, that `[X:]` is shorthand for *from X to the end* while `[:X]` is shorthand for *from the start to X*. Unlike other languages, Go doesn't support negative values. If we want all of the values of a slice except the last, we do:

```go
scores := []int{1, 2, 3, 4, 5}
scores = scores[:len(scores)-1]
```

The above is the start of an efficient way to remove a value from an unsorted slice:

```go
func main() {
  scores := []int{1, 2, 3, 4, 5}
  scores = removeAtIndex(scores, 2)
  fmt.Println(scores) // [1 2 5 4]
}

// won't preserve order
func removeAtIndex(source []int, index int) []int {
  lastIndex := len(source) - 1
  //swap the last value and the value we want to remove
  source[index], source[lastIndex] = source[lastIndex], source[index]
  return source[:lastIndex]
}
```

Finally, now that we know about slices, we can look at another commonly used built-in function: `copy`. `copy` is one of those functions that highlights how slices change the way we code. Normally, a method that copies values from one array to another has 5 parameters: `source`, `sourceStart`, `count`, `destination` and `destinationStart`. With slices, we only need two:

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

Take some time and play with the above code. Try variations. See what happens if you change copy to something like `copy(worst[2:4], scores[:5])`, or what if you try to copy more or less than `5` values into `worst`?

## Maps
Maps в Go са каквото в другите езици се нарича хеш таблици или речници. Те работят, както може да предположите: дефинира се ключ и стойност, и може да се върне, постави или изтрие стойност от него. 

Maps, както slices, се създават с `make` функция. Нека да разгледаме следният пример:

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
За да се вземе номерът на ключовете, използваме `len`. За да премахнете стойност базинара на ключ, използваме `delete`:

```go
// returns 1
total := len(lookup)

// has no return, can be called on a non-existing key
delete(lookup, "goku")
```

Maps се разрастрават динамично. Въпреки това, може да използваме втори аргумент към `make` за да сложим първоначален размер:

```go
lookup := make(map[string]int, 100)
```

Ако имате представа колко ключове ще има вашият map, дефинирането на първоначалният размер ще подобри производителноста. 

Ако се нуждаете от map като поле от структора, може да бъде дефинирана по следният начин:

```go
type Saiyan struct {
  Name string
  Friends map[string]*Saiyan
}
```

Единят от вариантите да се инциализира горният пример е:

```go
goku := &Saiyan{
  Name: "Goku",
  Friends: make(map[string]*Saiyan),
}
goku.Friends["krillin"] = ... //todo load or create Krillin
```

Има и друг вариант да се декларира и инициализира стойност в Go. Както `make`, този метод е специфичен за maps и масиви. Може да бъде декларирано и по следният начин:

```go
lookup := map[string]int{
  "goku": 9001,
  "gohan": 2044,
}
```

Можем да обходим map използвайки цикълът `for` комбиниран с ключовата дума `range`:

```go
for key, value := range lookup {
  ...
}
```

Обходжането на maps не е последователно. Всяко обхождане ще върне ключа и неговата стойност в разбъркан ред.

## Pointers versus Values

We finished Chapter 2 by looking at whether you should assign and pass pointers or values. We'll now have this same conversation with respect to array and map values. Which of these should you use?

```go
a := make([]Saiyan, 10)
//or
b := make([]*Saiyan, 10)
```

Many developers think that passing `b` to, or returning it from, a function is going to be more efficient. However, what's being passed/returned is a copy of the slice, which itself is a reference. So with respect to passing/returning the slice itself, there's no difference.

Where you will see a difference is when you modify the values of a slice or map. At this point, the same logic that we saw in Chapter 2 applies. So the decision on whether to define an array of pointers versus an array of values comes down to how you use the individual values, not how you use the array or map itself.

## Before You Continue

Arrays and maps in Go work much like they do in other languages. If you're used to dynamic arrays, there might be a small adjustment, but `append` should solve most of your discomfort. If we peek beyond the superficial syntax of arrays, we find slices. Slices are powerful and they have a surprisingly large impact on the clarity of your code.

There are edge cases that we haven't covered, but you're not likely to run into them. And, if you do, hopefully the foundation we've built here will let you understand what's going on.

# Chapter 4 - Code Organization and Interfaces

It's now time to look at how to organize our code.

## Packages

To keep more complicated libraries and systems organized, we need to learn about packages. In Go, package names follow the directory structure of your Go workspace. If we were building a shopping system, we'd probably start with a package name "shopping" and put our source files in `$GOPATH/src/shopping/`.

We don't want to put everything inside this folder though. For example, maybe we want to isolate some database logic inside its own folder. To achieve this, we create a subfolder at `$GOPATH/src/shopping/db`. The package name of the files within this subfolder is simply `db`, but to access it from another package, including the `shopping` package, we need to import `shopping/db`.

In other words, when you name a package, via the `package` keyword, you provide a single value, not a complete hierarchy (e.g., "shopping" or "db"). When you import a package, you specify the complete path.

Let's try it. Inside your Go workspace's `src` folder (which we set up in Getting Started of the Introduction), create a new folder called `shopping` and a subfolder within it called `db`.

Inside of `shopping/db`, create a file called `db.go` and add the following code:

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

Notice that the name of the package is the same as the name of the folder. Also, obviously, we aren't actually accessing the database. We're just using this as an example to show how to organize code.

Now, create a file called `pricecheck.go` inside of the main `shopping` folder. Its content is:

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

It's tempting to think that importing `shopping/db` is somehow special because we're inside the `shopping` package/folder already. In reality, you're importing `$GOPATH/src/shopping/db`, which means you could just as easily import `test/db` so long as you had a package named `db` inside of your workspace's `src/test` folder.

If you're building a package, you don't need anything more than what we've seen. To build an executable, you still need a `main`. The way I prefer to do this is to create a subfolder called `main` inside of `shopping` with a file called `main.go` and the following content:

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

You can now run your code by going into your `shopping` project and typing:

```
go run main/main.go
```

### Cyclical Imports

As you start writing more complex systems, you're bound to run into cyclical imports. This happens when package A imports package B but package B imports package A (either directly or indirectly through another package). This is something the compiler won't allow.

Let's change our shopping structure to cause the error.

Move the `Item` definition from `shopping/db/db.go` into `shopping/pricecheck.go`. Your `pricecheck.go` file should now look like:

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

If you try to run the code, you'll get a couple of errors from `db/db.go` about `Item` being undefined. This makes sense. `Item` no longer exists in the `db` package; it's been moved to the shopping package. We need to change `shopping/db/db.go` to:

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

Now when you try to run the code, you'll get a dreaded *import cycle not allowed* error. We solve this by introducing another package which contains shared structures. Your directory structure should look like:

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

`pricecheck.go` will still import `shopping/db`, but `db.go` will now import `shopping/models` instead of `shopping`, thus breaking the cycle. Since we moved the shared `Item` structure to `shopping/models/item.go`, we need to change `shopping/db/db.go` to reference the `Item` structure from `models` package:

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

You'll often need to share more than just `models`, so you might have other similar folder named `utilities` and such. The important rule about these shared packages is that they shouldn't import anything from the `shopping` package or any sub-packages. In a few sections, we'll look at interfaces which can help us untangle these types of dependencies.

### Visibility

Go uses a simple rule to define what types and functions are visible outside of a package. If the name of the type or function starts with an uppercase letter, it's visible. If it starts with a lowercase letter, it isn't.

This also applies to structure fields. If a structure field name starts with a lowercase letter, only code within the same package will be able to access them.

For example, if our `items.go` file had a function that looked like:

```go
func NewItem() *Item {
  // ...
}
```

it could be called via `models.NewItem()`. But if the function was named `newItem`, we wouldn't be able to access it from a different package.

Go ahead and change the name of the various functions, types and fields from the `shopping` code. For example, if you rename the `Item's` `Price` field to `price`, you should get an error.

### Package Management

The `go` command we've been using to `run` and `build` has a `get` subcommand which is used to fetch third-party libraries. `go get` supports various protocols but for this example, we'll be getting a library from Github, meaning, you'll need `git` installed on your computer.

Assuming you already have git installed, from a shell/command prompt, enter:

```
go get github.com/mattn/go-sqlite3
```

`go get` fetches the remote files and stores them in your workspace. Go ahead and check your `$GOPATH/src`. In addition to the `shopping` project that we created, you'll now see a `github.com` folder. Within, you'll see a `mattn` folder which contains a `go-sqlite3` folder.

We just talked about how to import packages that live in our workspace. To use our newly gotten `go-sqlite3` package, we'd import it like so:

```go
import (
  "github.com/mattn/go-sqlite3"
)
```

I know this looks like a URL but in reality, it'll simply import the `go-sqlite3` package which it expects to find in `$GOPATH/src/github.com/mattn/go-sqlite3`.

### Dependency Management

`go get` has a couple of other tricks up its sleeve. If we `go get` within a project, it'll scan all the files, looking for `imports` to third-party libraries and will download them. In a way, our own source code becomes a `Gemfile` or `package.json`.

If you call `go get -u` it'll update the packages (or you can update a specific package via `go get -u FULL_PACKAGE_NAME`).

Eventually, you might find `go get` inadequate. For one thing, there's no way to specify a revision, it always points to the master/head/trunk/default. This is an even larger problem if you have two projects needing different versions of the same library.

To solve this, you can use a third-party dependency management tool. They are still young, but two promising ones are [goop](https://github.com/nitrous-io/goop) and [godep](https://github.com/tools/godep). A more complete list is available at the [go-wiki](https://code.google.com/p/go-wiki/wiki/PackageManagementTools).

## Interfaces

Interfaces are types that define a contract but not an implementation. Here's an example:

```go
type Logger interface {
  Log(message string)
}
```

You might be wondering what purpose this could possibly serve. Interfaces help decouple your code from specific implementations. For example, we might have various types of loggers:

```go
type SqlLogger struct { ... }
type ConsoleLogger struct { ... }
type FileLogger struct { ... }
```

Yet by programming against the interface, rather than these concrete implementations, we can easily change (and test) which we use without any impact to our code.

How would you use one? Just like any other type, it could be a structure's field:

```go
type Server struct {
  logger Logger
}
```

or a function parameter (or return value):

```go
func process(logger Logger) {
  logger.Log("hello!")
}
```

In a language like C# or Java, we have to be explicit when a class implements an interface:

```go
public class ConsoleLogger : Logger {
  public void Logger(message string) {
    Console.WriteLine(message)
  }
}
```

In Go, this happens implicitly. If your structure has a function name `Log` with a `string` parameter and no return value, then it can be used as a `Logger`. This cuts down on the verboseness of using interfaces:

```go
type ConsoleLogger struct {}
func (l ConsoleLogger) Log(message string) {
  fmt.Println(message)
}
```

It also tends to promote small and focused interfaces. The standard library is full of interfaces. The `io` package has a handful of popular ones such as `io.Reader`, `io.Writer`, and `io.Closer`. If you write a function that expects a parameter that you'll only be calling `Close()` on, you absolutely should accept an `io.Closer` rather than whatever concrete type you're using.

Interfaces can also participate in composition. And, interfaces themselves can be composed of other interfaces. For example, `io.ReadCloser` is an interface composed of the `io.Reader` interface as well as the `io.Closer` interface.

Finally, interfaces are commonly used to avoid cyclical imports. Since they don't have implementations, they'll have limited dependencies.

## Before You Continue

Ultimately, how you structure your code around Go's workspace is something that you'll only feel comfortable with after you've written a couple of non-trivial projects. What's most important for you to remember is the tight relationship between package names and your directory structure (not just within a project, but within the entire workspace).

The way Go handles visibility of types is straightforward and effective. It's also consistent. There are a few things we haven't looked at, such as constants and global variables but rest assured, their visibility is determined by the same naming rule.

Finally, if you're new to interfaces, it might take some time before you get a feel for them. However, the first time you see a function that expects something like `io.Reader`, you'll find yourself thanking the author for not demanding more than he or she needed.

# Chapter 5 - Tidbits

In this chapter, we'll talk about a miscellany of Go's feature which didn't quite fit anywhere else.

## Error Handling

Go's preferred way to deal with errors is through return values, not exceptions. Consider the `strconv.Atoi` function which takes a string and tries to convert it to an integer:

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

You can create your own error type; the only requirement is that it fulfills the contract of the built-in `error` interface, which is:

```go
type error interface {
  Error() string
}
```

More commonly, we can create our own errors by importing the `errors` package and using it in the `New` function:

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

There's a common pattern in Go's standard library of using error variables. For example, the `io` package has an `EOF` variable which is defined as:

```go
var EOF = errors.New("EOF")
```

This is a package variable (it's defined outside of a function) which is publicly accessible (upper-case first letter). Various functions can return this error, say when we're reading from a file or STDIN. If it makes contextual sense, you should use this error, too. As consumers, we can use this singleton:

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

As a final note, Go does have `panic` and `recover` functions. `panic` is like throwing an exception while `recover` is like `catch`; they are rarely used.

## Defer

Even though Go has a garbage collector, some resources require that we explicitly release them. For example, we need to `Close()` files after we're done with them. This sort of code is always dangerous. For one thing, as we're writing a function, it's easy to forget to `Close` something that we declared 10 lines up. For another, a function might have multiple return points. Go's solution is the `defer` keyword:

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

If you try to run the above code, you'll probably get an error (the file doesn't exist). The point is to show how `defer` works. Whatever you `defer` will be executed after the enclosing function (in this case `main()`) returns, even if it does so violently. This lets you release resources near where it’s initialized and takes care of multiple return points.

## go fmt

Most programs written in Go follow the same formatting rules, namely, a tab is used to indent and braces go on the same line as their statement.

I know, you have your own style and you want to stick to it. That's what I did for a long time, but I'm glad I eventually gave in. A big reason for this is the `go fmt` command. It's easy to use and authoritative (so no one argues over meaningless preferences).

When you're inside a project, you can apply the formatting rule to it and all sub-projects via:

```
go fmt ./...
```

Give it a try. It does more than indent your code; it also aligns field declarations and alphabetically orders imports.

## Initialized If

Go supports a slightly modified if-statement, one where a value can be initiated prior to the condition being evaluated:

```go
if x := 10; count > x {
  ...
}
```

That's a pretty silly example. More realistically, you might do something like:

```go
if err := process(); err != nil {
  return err
}
```

Interestingly, while the values aren't available outside the if-statement, they are available inside any `else if` or `else`.

## Empty Interface and Conversions

In most object-oriented languages, a built-in base class, often named `object`, is the superclass for all other classes. Go, having no inheritance, doesn't have such a superclass. What it does have is an empty interface with no methods: `interface{}`. Since every type implements all 0 of the empty interface's methods, and since interfaces are implicitly implemented, every type fulfills the contract of the empty interface.

 If we wanted to, we could write an `add` function with the following signature:

```go
func add(a interface{}, b interface{}) interface{} {
  ...
}
```

To convert an interface variable to an explicit type, you use `.(TYPE)`:

```go
return a.(int) + b.(int)
```

Note that if the underlying type is not `int`, the above will result in an error.

You also have access to a powerful type switch:

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

You'll see and probably use the empty interface more than you might first expect. Admittedly, it won't result in clean code. Converting values back and forth is ugly and dangerous but sometimes, in a static language, it's the only choice.

## Strings and Byte Arrays

Strings and byte arrays are closely related. We can easily convert one to the other:

```go
stra := "the spice must flow"
byts := []byte(stra)
strb := string(byts)
```

In fact, this way of converting is common across various types as well. Some functions explicitly expect an `int32` or an `int64` or their unsigned counterparts. You might find yourself having to do things like:

```go
int64(count)
```

Still, when it comes to bytes and strings, it's probably something you'll end up doing often. Do note that when you use `[]byte(X)` or `string(X)`, you're creating a copy of the data. This is necessary because strings are immutable.

Strings are made of `runes` which are unicode code points. If you take the length of a string, you might not get what you expect. The following prints 3:

    fmt.Println(len("椒"))

If you iterate over a string using `range`, you'll get runes, not bytes. Of course, when you turn a string into a `[]byte` you'll get the correct data.

## Function Type

Functions are first-class types:

```go
type Add func(a int, b int) int
```

which can then be used anywhere -- as a field type, as a parameter, as a return value.

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

Using functions like this can help decouple code from specific implementations much like we achieve with interfaces.

## Before You Continue

We looked at various aspects of programming with Go. Most notably, we saw how error handling behaves and how to release resources such as connections and open files. Many people dislike Go's approach to error handling. It can feel like a step backwards. Sometimes, I agree. Yet, I also find that it results in code that's easier to follow. `defer` is an unusual but practical approach to resource management. In fact, it isn't tied to resource management only. You can use `defer` for any purpose, such as logging when a function exits.

Certainly, we haven't looked at all of the tidbits Go has to offer. But you should be feeling comfortable enough to tackle whatever you come across.

# Chapter 6 - Concurrency

Go is often described as a concurrent-friendly language. The reason for this is that it provides a simple syntax over two powerful mechanisms: goroutines and channels.

## Goroutines

A goroutine is similar to a thread, but it is scheduled by Go, not the OS. Code that runs in a goroutine can run concurrently with other code. Let's look at an example:

```go
package main

import (
  "fmt"
  "time"
)

func main() {
  fmt.Println("start")
  go process()
  time.Sleep(time.Millisecond * 10) // this is bad, don't do this!
  fmt.Println("done")
}

func process() {
  fmt.Println("processing")
}
```

There are a few interesting things going on here, but the most important is how we start a goroutine. We simply use the `go` keyword followed by the function we want to execute. If we just want to run a bit of code, such as the above, we can use an anonymous function. Do note that anonymous functions aren't only used with goroutines, however.

```go
go func() {
  fmt.Println("processing")
}()
```

Goroutines are easy to create and have little overhead. Multiple goroutines will end up running on the same underlying OS thread. This is often called an M:N threading model because we have M application threads (goroutines) running on N OS threads. The result is that a goroutine has a fraction of overhead (a few KB) than OS threads. On modern hardware, it's possible to have millions of goroutines.

Furthermore, the complexity of mapping and scheduling is hidden. We just say *this code should run concurrently* and let Go worry about making it happen.

If we go back to our example, you'll notice that we had to `Sleep` for a few milliseconds. That's because the main process exits before the goroutine gets a chance to execute (the process doesn't wait until all goroutines are finished before exiting). To solve this, we need to coordinate our code.

## Synchronization

Creating goroutines is trivial, and they are so cheap that we can start many; however, concurrent code needs to be coordinated. To help with this problem, Go provides `channels`. Before we look at `channels`, I think it's important to understand a little bit about the basics of concurrent programming.

Writing concurrent code requires that you pay specific attention to where and how you read and write values. In some ways, it's like programming without a garbage collector -- it requires that you think about your data from a new angle, always watchful for possible danger. Consider:

```go
package main

import (
  "fmt"
  "time"
)

var counter = 0

func main() {
  for i := 0; i < 20; i++ {
    go incr()
  }
  time.Sleep(time.Millisecond * 10)
}

func incr() {
  counter++
  fmt.Println(counter)
}
```

What do you think the output will be?

If you think the output is `1, 2, ... 20` you're both right and wrong. It's true that if you run the above code, you'll sometimes get that output. However, the reality is that the behavior is undefined. Why? Because we potentially have multiple (two in this case) goroutines writing to the same variable, `counter`, at the same time. Or, just as bad, one goroutine would be reading `counter` while another writes to it.

Is that really a danger? Yes, absolutely. `counter++` might seem like a simple line of code, but it actually gets broken down into multiple assembly statements -- the exact nature is dependent on the platform that you're running. If you run this example, you'll see that very often the numbers are printed in a weird order, and/or numbers are duplicated/missing. There are worse possibilities too, such as system crashes or accessing an arbitrary piece of data and incrementing it!

The only concurrent thing you can safely do to a variable is to read from it. You can have as many readers as you want, but writes need to be synchronized. There are various ways to do this, including using some truly atomic operations that rely on special CPU instructions. However, the most common approach is to use a mutex:

```go
package main

import (
  "fmt"
  "time"
  "sync"
)

var (
  counter = 0
  lock sync.Mutex
)

func main() {
  for i := 0; i < 20; i++ {
    go incr()
  }
  time.Sleep(time.Millisecond * 10)
}

func incr() {
  lock.Lock()
  defer lock.Unlock()
  counter++
  fmt.Println(counter)
}
```

A mutex serializes access to the code under lock. The reason we simply define our lock as `lock sync.Mutex` is because the default value of a `sync.Mutex` is unlocked.

Seems simple enough? The example above is deceptive. There's a whole class of serious bugs that can arise when doing concurrent programming. First of all, it isn't always so obvious what code needs to be protected. While it might be tempting to use coarse locks (locks that cover a large amount of code), that undermines the very reason we're doing concurrent programming in the first place. We generally want fine locks; else, we end up with a ten-lane highway that suddenly turns into a one-lane road.

The other problem has to do with deadlocks. With a single lock, this isn't a problem, but if you're using two or more locks around the same code, it's dangerously easy to have situations where goroutineA holds lockA but needs access to lockB, while goroutineB holds lockB but needs access to lockA.

It actually *is* possible to deadlock with a single lock, if we forget to release it. This isn't as dangerous as a multi-lock deadlock (because those are *really* tough to spot), but just so you can see what happens, try running:

```go
package main

import (
  "time"
  "sync"
)

var (
  lock sync.Mutex
)

func main() {
  go func() { lock.Lock() }()
  time.Sleep(time.Millisecond * 10)
  lock.Lock()
}
```

There's more to concurrent programming than what we've seen so far. For one thing, there's another common mutex called a read-write mutex. This exposes two locking functions: one to lock for reading and one to lock for writing. This distinction allows multiple simultaneous readers while ensuring that writing is exclusive. In Go, `sync.RWMutex` is such a lock. In addition to the `Lock` and `Unlock` methods of a `sync.Mutex`, it also exposes `RLock` and `RUnlock` methods; where `R` stands for *Read*. While read-write mutexes are commonly used, they place an additional burden on developers: we must now pay attention to not only when we're accessing data, but also how.

Furthermore, part of concurrent programming isn't so much about serializing access across the narrowest possible piece of code; it's also about coordinating multiple goroutines. For example, sleeping for 10 milliseconds isn't a particularly elegant solution. What if a goroutine takes more than 10 milliseconds? What if it takes less and we're just wasting cycles? Also, what if instead of just waiting for goroutines to finish, we want to tell one *hey, I have new data for you to process!*?

These are all things that are doable without `channels`. Certainly for simpler cases, I believe you **should** use primitives such as `sync.Mutex` and `sync.RWMutex`, but as we'll see in the next section, `channels` aim at making concurrent programming cleaner and less error-prone.

## Channels

The challenge with concurrent programming stems from sharing data. If your goroutines share no data, you needn't worry about synchronizing them. That isn't an option for all systems, however. In fact, many systems are built with the exact opposite goal in mind: to share data across multiple requests. An in-memory cache or a database, are good examples of this. This is becoming an increasingly common reality.

Channels help make concurrent programming saner by taking shared data out of the picture. A channel is a communication pipe between goroutines which is used to pass data. In other words, a goroutine that has data can pass it to another goroutine via a channel. The result is that, at any point in time, only one goroutine has access to the data.

A channel, like everything else, has a type. This is the type of data that we'll be passing through our channel. For example, to create a channel which can be used to pass an integer around, we'd do:

```go
c := make(chan int)
```

The type of this channel is `chan int`. Therefore, to pass this channel to a function, our signature looks like:

```go
func worker(c chan int) { ... }
```

Channels support two operations: receiving and sending. We send to a channel by doing:

```
CHANNEL <- DATA
```

and receive from one by doing

```
VAR := <-CHANNEL
```

The arrow points in the direction that data flows. When sending, the data flows into the channel. When receiving, the data flows out of the channel.

The final thing to know before we look at our first example is that receiving and sending to and from a channel is blocking. That is, when we receive from a channel, execution of the goroutine won't continue until data is available. Similarly, when we send to a channel, execution won't continue until the data is received.

Consider a system with incoming data that we want to handle in separate goroutines. This is a common requirement. If we did our data-intensive processing on the goroutine which accepts the incoming data, we'd risk timing out clients. First, we'll write our worker. This could be a simple function, but I'll make it part of a structure since we haven't seen goroutines used like this before:

```go
type Worker struct {
  id int
}

func (w Worker) process(c chan int) {
  for {
    data := <-c
    fmt.Printf("worker %d got %d\n", w.id, data)
  }
}
```

Our worker is simple. It waits until data is available then "processes" it. Dutifully, it does this in a loop, forever waiting for more data to process.

To use this, the first thing we'd do is start some workers:

```go
c := make(chan int)
for i := 0; i < 5; i++ {
  worker := &Worker{id: i}
  go worker.process(c)
}
```

And then we can give them some work:

```go
for {
  c <- rand.Int()
  time.Sleep(time.Millisecond * 50)
}
```

Here's the complete code to make it run:

```go
package main

import (
  "fmt"
  "time"
  "math/rand"
)

func main() {
  c := make(chan int)
  for i := 0; i < 5; i++ {
    worker := &Worker{id: i}
    go worker.process(c)
  }

  for {
    c <- rand.Int()
    time.Sleep(time.Millisecond * 50)
  }
}

type Worker struct {
  id int
}

func (w *Worker) process(c chan int) {
  for {
    data := <-c
    fmt.Printf("worker %d got %d\n", w.id, data)
  }
}
```

We don't know which worker is going to get what data. What we do know, what Go guarantees, is that the data we send to a channel will only be received by a single receiver.

Notice that the only shared state is the channel, which we can safely receive from and send to concurrently. Channels provide all of the synchronization code we need and also ensure that, at any given time, only one goroutine has access to a specific piece of data.

### Buffered Channels

Given the above code, what happens if we have more data coming in than we can handle? You can simulate this by changing the worker to sleep after it has received data:

```go
for {
  data := <-c
  fmt.Printf("worker %d got %d\n", w.id, data)
  time.Sleep(time.Millisecond * 500)
}
```

What's happening is that our main code, the one that accepts the user's incoming data (which we just simulated with a random number generator) is blocking as it sends to the channel because no receiver is available.

In cases where you need high guarantees that the data is being processed, you probably will want to start blocking the client. In other cases, you might be willing to loosen those guarantees. There are a few popular strategies to do this. The first is to buffer the data. If no worker is available, we want to temporarily store the data in some sort of queue. Channels have this buffering capability built-in. When we created our channel with `make`, we can give our channel a length:

```go
c := make(chan int, 100)
```

You can make this change, but you'll notice that the processing is still choppy. Buffered channels don't add more capacity; they merely provide a queue for pending work and a good way to deal with a sudden spike. In our example, we're continuously pushing more data than our workers can handle.

Nevertheless, we can get a sense that the buffered channel is, in fact, buffering by looking at the channel's `len`:

```go
for {
  c <- rand.Int()
  fmt.Println(len(c))
  time.Sleep(time.Millisecond * 50)
}
```

You can see that it grows and grows until it fills up, at which point sending to our channel start to block again.

### Select

Even with buffering, there comes a point where we need to start dropping messages. We can't use up an infinite amount of memory hoping a worker frees up. For this, we use Go's `select`.

Syntactically, `select` looks a bit like a switch. With it, we can provide code for when the channel isn't available to send to. First, let's remove our channel's buffering so that we can clearly see how `select` works:

```go
c := make(chan int)
```

Next, we change our `for` loop:

```go
for {
  select {
  case c <- rand.Int():
    //optional code here
  default:
    //this can be left empty to silently drop the data
    fmt.Println("dropped")
  }
  time.Sleep(time.Millisecond * 50)
}
```

We're pushing out 20 messages per second, but our workers can only handle 10 per second; thus, half the messages get dropped.

This is only the start of what we can accomplish with `select`. A main purpose of select is to manage multiple channels. Given multiple channels, `select` will block until the first one becomes available. If no channel is available, `default` is executed if one is provided. A channel is randomly picked when multiple are available.

It's hard to come up with a simple example that demonstrates this behavior as it's a fairly advanced feature. The next section might help illustrate this though.

### Timeout

We've looked at buffering messages as well as simply dropping them. Another popular option is to timeout. We're willing to block for some time, but not forever. This is also something easy to achieve in Go. Admittedly, the syntax might be hard to follow but it's such a neat and useful feature that I couldn't leave it out.

To block for a maximum amount of time, we can use the `time.After` function. Let's look at it then try to peek beyond the magic. To use this, our sender becomes:

```go
for {
  select {
  case c <- rand.Int():
  case <-time.After(time.Millisecond * 100):
    fmt.Println("timed out")
  }
  time.Sleep(time.Millisecond * 50)
}
```

`time.After` returns a channel, so we can `select` from it. The channel is written to after the specified time expires. That's it. There's nothing more magical than that. If you're curious, here's what an implementation of `after` could look like:

```go
func after(d time.Duration) chan bool {
  c := make(chan bool)
  go func() {
    time.Sleep(d)
    c <- true
  }()
  return c
}
```

Back to our `select`, there are a couple of things to play with. First, what happens if you add the `default` case back? Can you guess? Try it. If you aren't sure what's going on, remember that `default` fires immediately if no channel is available.

Also, `time.After` is a channel of type `chan time.Time`. In the above example, we simply discard the value that was sent to the channel. If you want though, you can receive it:

```go
case t := <-time.After(time.Millisecond * 100):
  fmt.Println("timed out at", t)
```

Pay close attention to our `select`. Notice that we're sending to `c` but receiving from `time.After`. `select` works the same regardless of whether we're receiving from, sending to, or any combination of channels:

* The first available channel is chosen.
* If multiple channels are available, one is randomly picked.
* If no channel is available, the default case is executed.
* If there's no default, select blocks.

Finally, it's common to see a `select` inside a `for`. Consider:

```go
for {
  select {
  case data := <-c:
    fmt.Printf("worker %d got %d\n", w.id, data)
  case <-time.After(time.Millisecond * 10):
    fmt.Println("Break time")
    time.Sleep(time.Second)
  }
}
```

## Before You Continue

If you're new to the world of concurrent programming, it might all seem rather overwhelming. It categorically demands considerably more attention and care. Go aims to make it easier.

Goroutines effectively abstract what's needed to run concurrent code. Channels help eliminate some serious bugs that can happen when data is shared by eliminating the sharing of data. This doesn't just eliminate bugs, but it changes how one approaches concurrent programming. You start to think about concurrency with respect to message passing, rather than dangerous areas of code.

Having said that, I still make extensive use of the various synchronization primitives found in the `sync` and `sync/atomic` packages. I think it's important to be comfortable with both. I encourage you to first focus on channels, but when you see a simple example that needs a short-lived lock, consider using a mutex or read-write mutex.

# Conclusion

I recently heard Go described as a *boring* language. Boring because it's easy to learn, easy to write and, most importantly, easy to read. Perhaps, I did this reality a disservice. We *did* spend three chapters talking about types and how to declare variables after all.

If you have a background in a statically typed language, much of what we saw was probably, at best, a refresher. That Go makes pointers visible and that slices are thin wrappers around arrays probably isn't overwhelming to seasoned Java or C# developers.

If you've mostly been making use of dynamic languages, you might feel a little different. It *is* a fair bit to learn. Not least of which is the various syntax around declaration and initialization. Despite being a fan of Go, I find that for all the progress towards simplicity, there's something less than simple about it. Still, it comes down to some basic rules (like you can only declare variable once and `:=` does declare the variable) and fundamental understanding (like `new(X)` or `&X{}` only allocate memory, but slices, maps and channels require more initialization and thus, `make`).

Beyond this, Go gives us a simple but effective way to organize our code. Interfaces, return-based error handling, `defer` for resource management and a simple way to achieve composition.

Last but not least is the built-in support for concurrency. There's little to say about goroutines other than they’re effective and simple (simple to use anyway). It's a good abstraction. Channels are more complicated. I always think it's important to understand basics before using high-level wrappers. I *do* think learning about concurrent programming without channels is useful. Still, channels are implemented in a way that, to me, doesn't feel quite like a simple abstraction. They are almost their own fundamental building block. I say this because they change how you write and think about concurrent programming. Given how hard concurrent programming can be, that is definitely a good thing.
