# Sobre Este Livro

## Licença ##

O Little Go Book é licenciado sob a licença Attribution-NonCommercial-ShareAlike 4.0 International. Você não deveria ter pago por este livro.

Você é livre para copiar, distribuir, modificar ou exibir o livro. No entanto, peço que você sempre me atribua o livro, Karl Seguin, e não o use para fins comerciais.

Pode ver o texto completo da licença em:

<https://creativecommons.org/licenses/by-nc-sa/4.0/>

## Versão mais recente

A última fonte deste livro está disponível em:
<https://github.com/karlseguin/the-little-go-book>

# Introdução

Eu sempre tive uma relação de amor e ódio quando se trata de aprender novas linguagens. Por um lado, as linguagens são tão fundamentais para o que fazemos, que mesmo pequenas mudanças podem ter um impacto mensurável. Esse momento *aha* em que algo clica pode ter um efeito duradouro sobre como você programa e pode redefinir suas expectativas sobre outras linguagens. No lado negativo, o design da linguagem é bastante incremental. Aprender novas palavras-chave, sistema de tipos, estilo de codificação, bem como novas bibliotecas, comunidades e paradigmas é muito trabalho que parece difícil de justificar. Em comparação com tudo o que temos para aprender, novas línguas muitas vezes parecem um mau investimento do nosso tempo.

Dito isto, nós *temos* que avançar. Nós *temos* que estar dispostos a dar passos incrementais porque, novamente, as linguagens são a base do que fazemos. Embora as mudanças sejam muitas vezes incrementais, elas tendem a ter um escopo amplo e afetam a produtividade, a legibilidade, o desempenho, a testabilidade, o gerenciamento de dependências, o tratamento de erros, a documentação, a criação de perfis, as comunidades, as bibliotecas padrão e as comunidades, e assim por diante. Existe uma maneira positiva de dizer *morte por mil cortes*?

Isso nos deixa com uma pergunta importante: **por quê Go?** Para mim, há duas razões convincentes. A primeira é que é uma linguagem relativamente simples com uma biblioteca padrão relativamente simples. De muitas maneiras, a natureza incremental do Go é simplificar parte da complexidade que vimos sendo adicionada às linguagens nas últimas duas décadas. A outra razão é que, para muitos desenvolvedores, ele complementará seu arsenal existente.

Go foi construído como uma linguagem de sistema (por exemplo, sistemas operacionais, controladores de dispositivos) e, portanto, destinado a programadores de C e C++. De acordo com a equipe do Go, e o que certamente é verdade para mim, os desenvolvedores de aplicativos, não os desenvolvedores de sistemas, tornaram-se os principais usuários do Go. Porquê? Eu não posso falar com autoridade para desenvolvedores de sistemas, mas para aqueles de nós construindo sites, serviços, aplicativos de desktop e afins, isso se resume parcialmente à necessidade emergente de uma classe de sistemas que ficam em algum lugar entre aplicativos de sistema de baixo nível e aplicativos de nível superior.

Talvez seja uma mensagem, cache, análise de dados com alto nível computacional, interface de linha de comando, registro ou monitoramento. Não sei qual rótulo dar, mas ao longo da minha carreira, à medida que os sistemas continuam a crescer em complexidade e à medida que a simultaneidade mede frequentemente nas dezenas de milhares, claramente existe uma necessidade crescente de sistemas personalizados do tipo infraestrutura. Você *pode* construir esses sistemas com Ruby ou Python ou algo mais ( e muitas pessoas fazem ), mas esses tipos de sistemas podem se beneficiar de um sistema de tipo mais rígido e maior desempenho. Da mesma forma, você *pode* usar o Go para criar sites ( e muitas pessoas o fazem ), mas ainda prefiro, por uma ampla margem, a expressividade do Node ou Ruby para esses sistemas.

Existem outras áreas onde o Go se destaca. Por exemplo, não há dependências ao executar um programa Go compilado. Você não precisa se preocupar se seus usuários têm Ruby ou a JVM instalada e, em caso afirmativo, qual versão. Por esta razão, Go está se tornando cada vez mais popular como uma linguagem para programas de interface de linha de comando e outros tipos de programas utilitários que você precisa distribuir (por exemplo, um coletor de log).

Simplificando, aprender Go é um uso eficiente do seu tempo. Você não terá que passar longas horas aprendendo ou mesmo dominando Go, e você acabará com algo prático com seu esforço.

## Uma nota do autor

Hesitei em escrever este livro por algumas razões. A primeira é que a documentação do próprio Go, em particular [Effective Go](https://golang.org/doc/effective_go.html), é sólida.

O outro é o meu desconforto em escrever um livro sobre uma língua. Quando escrevi The Little MongoDB Book, era seguro assumir que a maioria dos leitores entendia os conceitos básicos de banco de dados relacional e modelagem. Com The Little Redis Book, você pode assumir uma familiaridade com um armazenamento de chave e valor e levá-la de lá.

Ao pensar nos parágrafos e capítulos que estão por vir, sei que não serei capaz de fazer essas mesmas suposições. Quanto tempo você gasta falando sobre interfaces sabendo que para alguns, o conceito será novo, enquanto outros não precisarão de muito mais do que *Go tem interfaces*? Em última análise, eu me sinto confortável em saber que você vai me avisar se algumas partes são muito superficiais ou outras muito detalhadas. Considere este o preço deste livro.

# Começando

Se você está pensando em brincar um pouco com Go, você deve verificar o [Go Playground](https://play.golang.org/) que permite executar o código on-line sem ter que instalar nada. Esta é também a forma mais comum de compartilhar código Go quando procura ajuda no [forum de discussões Go](https://groups.google.com/forum/#!forum/golang-nuts) e locais como o StackOverflow.

Instalar o Go é simples. Você pode instalá-lo a partir do código-fonte, mas sugiro que você use um dos binários pré-compilados. Quando você [for para a página de download](https://golang.org/dl/), você verá instaladores para várias plataformas. Vamos evitá-los e aprender a configurar Go nós mesmos. Como você verá, não é difícil.

Exceto por exemplos simples, o Go é projetado para funcionar quando seu código está dentro de um workspace. O workspace é uma pasta composta pelas subpastas `bin`, `pkg` e `src`. Você pode ser tentado a usar o Go do seu próprio jeito - não faça!

Normalmente, coloco os meus projetos dentro de `~/code`. Por exemplo, `~/code/blog` contém o meu blog. Para o Go, o meu workspace é `~/code/go` e meu blog feito em Go pode ser em `~/code/go/src/blog`.

Em suma, crie uma pasta `go` com a subpasta `src` onde quer que você espere colocar seus projetos.

## OSX/Linux
Faça o download do `tar.gz` para sua plataforma. Para OSX, você provavelmente estará interessado em `go#.#.#.darwin-amd64-osx10.8.tar.gz`, onde `#.#.#` é a versão mais recente do Go.

Extraia o arquivo para `/usr/local` via `tar -C /usr/local -xzf go#.#.#.darwin-amd64-osx10.8.tar.gz`.

Configurar duas variáveis de ambiente:

  1. `GOPATH` your workspace, for me, that's `$HOME/code/go`.
  2. Precisamos acrescentar o binário do Go ao nosso `PATH`.

Você pode configurá-los a partir de um shell:

    echo 'export GOPATH=$HOME/code/go' >> $HOME/.profile
    echo 'export PATH=$PATH:/usr/local/go/bin' >> $HOME/.profile

Você vai querer ativar essas variáveis. Você pode fechar e reabrir seu shell, ou você pode executar `source $HOME/.profile`.

Digite `go version` e você provavelmente obterá uma saída semelhante a `go version go1.3.3 darwin/amd64`.

## Windows
Baixe o arquivo zip mais recente. Se você estiver em um sistema x64, você vai querer `go#.#.#.windows-amd64.zip`, where `#.#.#` é a versão mais recente do Go.

Descompacte-o em um local de sua escolha. `c:\Go` é uma boa escolha.

Configurar duas variáveis de ambiente:

  1. `GOPATH` apontar para o seu workspace. Isso pode ser algo como `c:\users\goku\work\go`.
  2. Adicione `c:\Go\bin` no sua variavel de anbiente `PATH`.

Variáveis de ambiente podem ser definidas através do botão `Environment Variables` na tab `Advanced` do painel de controle do `System`. Algumas versões do Windows fornecem esse painel de controle através da opção `Advanced System Settings` dentro do painel de controle do `System`.

Abra um prompt de comando e digite `go version`. Espero que você obtenha uma saída que se pareça com a versão `go1.3.3 windows/amd64`.

# Capítulo 1 - O Básico

Go é uma linguagem compilada e estaticamente tipada com uma sintaxe semelhante à C e com garbage colector. O que isso significa?

## Compilação

Compilação é o processo de traduzir o código-fonte escrito em uma linguagem de baixo nível que o computador entenda - pode ser assembly (como é o caso de Go), assim como pode ser alguma outra linguagem intermediária (como é o caso de Java e C#).

Em alguns casos, a compilação pode ser lenta, o que torna desprazeroso trabalhar com linguagens compiladas. Pode ser difícil ser produtivo se você precisa esperar minutos ou horas pela compilação do código. A velocidade de compilação é um dos maiores objetivos de design de Go. E essa é uma excelente notícia para as pessoas que trabalham em projetos grandes, assim como para as pessoas que querem ter um ciclo de resposta rápido no processo de desenvolvimento, como o oferecido por linguagens interpretadas.

Linguagens compiladas tendem a ser mais rápidas e o executável pode rodar sem nenhuma dependência adicional (pelo menos, isso é uma verdade para linguagens como C, C++ e Go, que compilam diretamente para assembly).

## Tipagem Estática

Ser uma linguagem estaticamente tipada significa que as variáveis devem ser de um tipo específico (int, string, bool, []byte etc). Isso pode ser atingido especificando o tipo quando a variável é declarada ou, em muitos casos, deixando o compilador inferir o tipo (serão dados alguns exemplos em breve)

Há muito mais que pode ser discutido sobre tipagem estática, mas eu acredito que às vezes é melhor entender olhando para o código. Se você é acostumado a usar linguagens dinamicamente tipadas, você pode achar complicado. Você não está errado, mas há vantagens, especialmente quando você combina tipagem estática com compilação. As duas são frequentemente confudidas. É verdade que quando você tem um, geralmente você tem o outro, mas essa não é uma regra escrita em pedra. Com um sistema rígido de tipagem, um compilador é capaz de detectar problemas além de meros erros sintáticos, assim como fazer otimizações adicionais.

## Sintaxe C-Like

Dizer que uma linguagem tem um sintaxe C-like significa que se você já usou qualquer outra linguagem C-like, como C, C++, Java, JavaScript e C#, você achará Go familiar -- pelo menos, superficialmente. Por exemplo, isso significa que `&&` é usado como um booleano E (AND), `==` é usado para comparar igualdade, `{` e `}` começam e finalizam um escopo e índices de arrays começam em 0.

Sintaxe C-like também tende a significar que ponto e vírgula demarcam o fim de uma linha e que parentêses circundam condições. Go faz diferente em ambos desses cenários, entretanto, parentêses ainda são usados para controlar precedência. Por exemplo, uma declaração `if` (se) se parece com:

```go
if name == "Leto" {
  print("the spice must flow")
}
```

E, para casos mais complicados, parênteses ainda são úteis:

```go
if (name == "Goku" && power > 9000) || (name == "Gohan" && power < 4000)  {
  print("Super Saiyan")
}
```

No mais, Go é muito mais próximo de C do que C# ou Java - não somente em termos de sintaxe, mas também em termos de propósito. Isso é refletido na concisão e na simplicidade da linguagem, que esperançosamente se tornará óbvio à medida que a linguagem for apresentada.

## Coletor de Lixo (Garbage Collector)

Algumas variáveis, quando criadas, têm um tempo de vida bem definido. Uma variável local em uma função, por exemplo, desaparece quando a função encerra. Em outros casos, isso não é tão óbvio -- não para um compilador. Por exemplo, o tempo de vida de vida de uma variável retornada por uma função ou referenciada por outras variáveis e objetos pode ser bem difícil de determinar. Sem coleção de lixo (garbage collection), fica a cargo do desenvolvedor liberar a memória associada com algumas variáveis em um ponto na qual ele saiba que a variável não é mais necessária. Como? Em C, você usaria o seguinte comando: `free(str);` para liberar a variável.

Linguagens com coletor de lixo (ex.: Ruby, Python, Java, JavaScript, C#, Go) são capazes de acompanhar as variáveis e liberá-las da memória quando não são usadas. Coleção de lixo (garbage collection) adiciona sobrecarga na linguagem, mas também elimina uma enorme quantidade de bugs.

## Executando Código em Go

Vamos começar a nossa jornada criando um simples programa e aprendendo como compilá-lo e executá-lo. Abra o seu editor de texto favorito escreva o seguinte código:

```go
package main

func main() {
  println("é mais de 9000!")
}
```

Salve o arquivo como `main.go`. Por enquanto, você pode salvá-lo em qualquer lugar que você queira. 

Save the file as `main.go`. For now, you can save it anywhere you want. Para exemplos triviais, não é necessário fazer um espaço de trabalho.

A seguir, abra o *prompt* de comando e mude para o diretório em que o arquivo foi salvo. Para o meu exemplo, salvei no diretório `code`: `cd ~/code`

Finalmente, execute o programa digitando:

```
go run main.go
```

Se tudo funcionou corretamente, você deve ver: *é mais de 9000!*.

Mas espere, mas e o passo de compilação? `go run` é um atalho que compila *e* executa o seu código. Ele usa um diretório temporário para construir o programa, executá-lo e, então, limpá-lo. Você pode ver a localização do arquivo temporário executando:

```
go run --work main.go
```

Para explicitamente compilar o código, use `go build`:

```
go build main.go
```

Isso gerará um executável `main`, que você poderá rodar. Em sistemas operacionais Linux / OSX, não se esqueça que você precisa adicionar o prefixo **./**: `./main`.

Enquanto desenvolvendo, você pode usar ambos: `go run` ou `go build`. Quando você fizer o deploy do seu código, no entanto, você fará o deploy de um binário via `go build` para executá-lo.

### Main

Esperançosamente, o código que nós executamos é entendível. Nós criamos uma função e printamos uma string com a função nativa `println`. O comando `go run` sabia o que executar por que só tinha uma única escolha? Não. Em Go, o ponto de entrada (entry point) de um programa precisa ser uma função chamada `main` dentro de um pacote chamado `main`.

Nós falaremos mais sobre pacotes em um capítulo mais avançado. Por enquanto, enquanto focamos nosso entendimento nos fundamentos básicos de Go, nós vamos sempre escrever nosso código dentro do pacote `main`

Se você quiser, você pode alterar o código e mudar o nome do pacote.
Ao rodar o código via `go run`, você receberá um erro. Uma outra tentativa é mudar o nome de volta para `main`, mas usar uma função com nome diferente. Agora, você receberá uma mensagem de erro diferente. Tente fazer essas mesmas mudanças com o comando `go build`. Note que o código compila, mas não tem um ponto de entrada (entry point). Isto é completamente normal quando você está, por exemplo, construindo uma biblioteca.

## Importações

Go tem várias funções nativas, como `println`, que pode ser usada sem referência. Entretanto, nós não podemos fazer muita coisa sem fazer uso das bibliotecas padrão de Go e, eventualmente, usar bibliotecas de terceiros. Em Go, a palavra-chave `import` é usada para declarar pacotes que são usados pelo código no arquivo.

Vamos alterar o nosso programa:

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

Que você pode rodar via:

```
go run main.go 9000
```

Agora, nós estamos usado dois dos pacotes padrão de Go: `fmt` e `os`. Nós também introduzimos outras funções nativas `len`. `len` retorna o tamanho de uma string ou o número de valores em um dicionário ou, como nós ainda veremos, o número de elementos em um array. Se você está se perguntando por que nós esperamos 2 argumentos, é porque o primeiro argumento, no índice 0, é sempre o caminho do executável atualmente em execução. (Mude o programa para printar isso e veja por você mesmo)

Você provavelmente, notou que nós prefixamos o nome da função com pacote, ex.: `fmt.Println`. Isto é diferente de muitas outras linguagens. Nós vamos aprender mais sobre pacotes em capítulos futuros. Por agora, saber como importar um pacote e como usá-lo é um bom começo.

Go é rigoroso sobre importar pacotes. Ele não compilará se você não usar um pacote que você importou. Tente rodar o seguinte código:

```go
package main

import (
  "fmt"
  "os"
)

func main() {
}
```

Você deverá obter dois erros sobre `fmt` e `os` estarem sendo importados, mas não usados. Isso pode ser irritante? Absolutamente. Com o passar do tempo, você ficará acostumado com isso (existem plugins que podem ser adicionados ao editor de texto para eliminar pacotes que não estão sendo usados ao salvar o arquivo). Go é rigoroso sobre isto porque importações não usadas podem causar lentidão na compilação. Certamente, um problema que a maioria de nós não tem neste grau.

Outra coisa a se mencionar é que a biblioteca padrão de Go é bem documentada. Você pode ir até <https://pkg.go.dev/fmt#Println> para aprender mais sobre a função `Println` que nós usamos. Você também pode clicar no cabeçalho da seção e ver o código-fonte. Também é possível rolar para o topo para aprender mais sobre as capacidades de formatação de Go.

Se você ficar sem acesso à internet, você pode pegar a documentação localmente via:

```
godoc -http=:6060
```

E apontar o seu navegador para `http://localhost:6060`

## Variáveis e Declarações

Seria legal começar e terminar nossa discussão sobre variáveis dizendo: "você declara e atribui a uma variável fazendo x = 4". Infelizmente, as coisas são mais complicadas em Go. Nós começaremos a nossa conversa olhando para exemplos simples. Então, no próximo capítulo, nós vamos expandir isso quando nós olharmos para a criação e uso de estruturas (struct). Ainda, provavelmente levará algum tempo antes de você verdadeiramente se sentir confortável com isso.

Você pode estar pensando: "Uou! O que pode ser tão complicado sobre isto?" Vamos começar olhando para alguns exemplos.

A maneira mais explicíta de lidar com declaração e atribuição de variável em Go é também a mais verbosa:

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

Aqui, nós declaramos uma variável `power` do tipo `int`. Por padrão, Go atribui um **valor zero** às variáveis. Para os inteiros é atribuído `0`; booleanos: `false`; strings: `""` e alguns outros valores para outros tipos que serão discutidos em breve. Em seguida, nós atribuímos `9000` à variável `power`. Nós podemos unir as duas primeiras linhas:

```go
var power int = 9000
```

Ainda, é muito para se digitar. Go tem um atalho para declaração curta de variável, `:=`, que pode inferir o tipo:

```go
power := 9000
```

Essa sintaxe é bem útil e funciona bem com funções:

```go
func main() {
  power := getPower()
}

func getPower() int {
  return 9001
}
```

É importante ressaltar que `:=` é usado para declarar a variável já atribuindo um valor para ela. Por quê? Porque uma variável não pode ser declarada duas vezes (não no mesmo escopo). Se você tentar rodar o código a seguir, você obterá um erro.


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

O compilador irá reclamar, informando que *não há uma variável nova sendo declarada no lado esquerdo de :=*. Isto significa que quando nós declaramos a primeira variável, nós usamos `:=`, mas na atribuição subsequente, nós usamos o operador `=`. Isto faz muito sentido, mas pode ser complicado para a sua memória muscular lembrar quando trocar entre os dois.

Se você ler a messagem de erro atentamente, você irá notar que *variáveis* no plurar. Isso ocorre porque Go permite você atribuir múltipas variáveis (usando `=` ou `:=`):


```go
func main() {
  name, power := "Goku", 9000
  fmt.Printf("%s's power is over %d\n", name, power)
}
```

Contando que uma das variáveis seja nova, `:=` pode ser usado:

```go
func main() {
  power := 1000
  fmt.Printf("default power is %d\n", power)

  name, power := "Goku", 9000
  fmt.Printf("%s's power is over %d\n", name, power)
}
```

Embora `power` esteja sendo usado duas vezes com `:=`, o compilador não vai reclamar do segundo uso, porque ele verá que a outra variável, `name`, é uma nova variável e permite `:=`. No entanto, você não pode mudar o tipo de `power`. Ela foi declarada (implicitamente) como um inteiro e, portanto, só inteiros podem ser atribuídos.

Por agora, a última coisa a saber é que, como importações, Go não vai deixar você ter variáveis sem uso. Por exemplo:

```go
func main() {
  name, power := "Goku", 1000
  fmt.Printf("default power is %d\n", power)
}
```

Não compilará porque `name` é declarada, mas não é usada. Como importações, isso poderá causar algumas frustrações, mas olhando de forma geral, eu acho que ajudará com a clareza e legibilidade do código.

Há mais para se aprender sobre declaração e atribuição. Por agora, lembre-se que você usará `var NAME TYPE` quando declarar uma variável com o seu valor zero, `NAME := VALUE` quando declarar e atribuir um valor e `NAME = VALUE` quando atribuir um valor a uma variável previamente declarada.

## Declaração de Funções

Este é um bom momento para mostrar que funções podem ter múltiplos valores de retorno. Vamos olhar para três funções: uma sem valor de retorno, uma com um retorno e outra com dois valores de retorno.

```go
func log(message string) {
}

func add(a int, b int) int {
}

func power(name string) (int, bool) {
}
```

Nós usaríamos a última da seguinte forma:

```go
value, exists := power("goku")
if exists == false {
  // handle this error case
}
```

Às vezes, você só se importa com um dos valores de retorno. Nestes casos, você pode atribuir os outros valores ao identificador em branco (blank identifier) `_`:

```go
_, exists := power("goku")
if exists == false {
  // handle this error case
}
```

Isto é mais do que uma convenção. `_`, o identificaor em branco, é especial porque o valor de retorno não é realmente atribuído. Isto deixa você usar `_` repetidamente, independente do tipo retornado.

Finalmente, há algo mais que você pode gostar de usar ao declarar funções. Se os parâmetros compartilharem o mesmo tipo, nós podemos usar uma sintaxe reduzida:

```go
func add(a, b int) int {

}
```

Ser capaz de retornar múltiplos valores é algo que você usará frequentemente. Você também usará `_` frequentemente para descartar um valor. Valores de retorno nomeados e a declaração de parâmetros menos verbosa não são tão comuns. Cedo ou tarde você encontrará essas coisas por aí. Então, é importante que você saiba sobre elas. 

## Antes de Continuar

Nós olhamos para uma série de pequenos pedaços de códigos separados, que podem parecer desconectadas a essa altura. Contudo, nós vamos pouco a pouco construir exemplos mais robustos que, idealmente, farão os pedaços se conectarem e tudo fazer sentido.

Se você está vindo de uma linguagem dinâmica, a complexidade ao redor dos tipos e declarações podem parecer um passo para trás. Eu não concordo com você. Para alguns sistemas, linguagens dinâmicas são categoricamente mais produtivas.

Se você está vindo de uma linguagem estaticamente tipada, você provavelmente está se sentindo confortável com Go. Inferir tipos e múltiplos valores de retorno são legais (apesar de certamente não serem exclusivas para Go). Esperançosamente, à medida que aprendermos mais, você apreciará a clareza e concisão sintática.

# Capítulo 2 - Estruturas

Go não é um linguagem orientada a objetos, como C++, Java, Ruby e C#. Ela não tem objetos ou herança e, portanto, não tem muitos conceitos associados com programação orientada a objetos (POO), como polimorfismo e sobrecarga.

O que Go tem são estruturas, que podem ser associadas com métodos. Go também suporta uma simples, mas efetiva forma de composição. No geral, isso resulta em código mais simples, mas terão ocasiões em que você sentirá falta de alguns conceitos que POO tem a oferecer. (É importante ressaltar que *composição sobre herança* é um velho grito de guerra e Go é a primeira linguagem que eu usei que assume uma posição firme sobre o assunto).

Apesar de Go não usar POO do jeito que talvez você esteja habituado, você notará que existem muitas similaridades entre as definições de uma estrutura e a de uma classe. Um exemplo simples é a estrutura `Saiyan` a seguir:

```go
type Saiyan struct {
  Name string
  Power int
}
```

Em breve nós veremos como adicionar uma método nesta estrutura, sendo bem parecido em como métodos são parte de uma classe. Antes de fazermos isso, precisamos mergulhar de volta nas declarações.

## Declarações e Inicializações

Quando nós olhamos pela primeira vez para as variáveis e declarações, nós olhamos apenas para os tipos nativos, como os inteiros e strings. Agora que nós estamos falando sobre estruturas, nós precisamos expandir essa conversa para incluir ponteiros.

A maneira mais simples de criar uma valor para a nossa estrutura é:

```go
goku := Saiyan{
  Name: "Goku",
  Power: 9000,
}
```
*Nota:* finalizar com `,` na estrutura acima é necessário. Sem usá-la, o compilador lançará um erro. Você vai aprender a gostar da consistência requerida, especialmente se você usou uma linguagem ou formato que impõe o oposto.

Nós não temos que definir todos os campos. Inclusive, podemos deixar eles completamente sem nenhum valor. Ambos dos exemplos abaixo são válidos:

```go
goku := Saiyan{}

// ou

goku := Saiyan{Name: "Goku"}
goku.Power = 9000
```

Assim como variáveis não atribuídas possum um valor zero, o mesmo vale para os campos.

Além disso, você pode deixar os nomes dos campos ocultos e se basear somente na ordem dos campos declarados (apesar dessa prática ser recomendada apenas para estruturas com pouquíssimos campos, para o bem da legibilidade):

```go
goku := Saiyan{"Goku", 9000}
```

O que todos os exmplos acima fazem é declarar uma variável `goku` e atribuir um valor para ela.

Muitas vezes, no entanto, nós não queremos uma variável que é diretamente associada com o nosso valor, mas, ao invés disso, queremos uma variável que tem um ponteiro para o nosso valor. Um ponteiro é um endereço de memória; é a localização de onde encontrar o valor atual. É um nível de orientação indireta. Vagamente, é a diferença entre estar em uma casa e ter as direções para a casa.

Por que nós queremos um ponteiro para um valor ao invés do valor em si? Muito por conta da forma na qual Go passa argumentos para uma função: como cópias. Sabendo disso, o que é printado a seguir?

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

A resposta é 9000, não 19000. Por quê? Porque `Super` fez mudanças para uma cópia do nosso valor original `goku` e, então, as mudanças feitas em `Super` não foram refletidas no chamador. Para fazer isso funcionar como esperado, nós precisamos passar um ponteiro para o nosso valor:

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
Nós fizemos duas mudanças. A primeira é o uso do operador `&` para pegar o endereço do nosso valor (é chamado de operador *endereço de*). Em seguida, nós mudamos o tipo do parâmetro `Super` esperado. Antes da mudança esperava um valor do tipo `Saiyan`, mas agora espera um endereço do tipo `*Saiyan`, em que `*X` significa *aponta para o valor de tipo X*. Claro que há algumas relações entre os tipos `Saiyan` e `*Saiyan`, mas eles são dois tipos distintos.

Note que nós ainda estamos passando uma cópia do valor de `goku` para `Super`. A mudança é que agora o valor de `goku` virou um endereço. Essa cópia é o mesmo endereço da original, que é o que essa referência indireta nos entrega. Enxergue isso como uma cópia das direções para um restaurante. O que você tem é uma cópia, mas que ainda aponta para o mesmo restaurante, como o endereço original.

Nós podemos provar que é uma cópia tentando mudar para onde esse endereço aponta (não é algo que você deveria querer fazer na verdade):

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

O código acima, mais uma vez, printa 9000. Isto é como muitas linguagens se comportam, incluindo Ruby, Python, Java e C#. Go e, em algum nível, C# simplesmente torna isso visível.

Também deveria ser óbvio que copiar um ponteiro vai ser mais barato do que copiar uma estrutura complexa. Em uma máquina de 64 bits, um ponteiro tem a magnitude de 64 bits. Se nós temos uma estrutura com muitos campos, criar cópias pode ser caro. O real valor de ponteiros, no entanto, é que eles deixam você compartilhar valores. Nós queremos que `Super` altere uma cópia de `goku` ou queremos alterar o próprio valor de `goku` compartilhado?

Tudo isso não quer dizer que você sempre vai querer um ponteiro. No final deste capítulo, depois de vermos um pouco mais sobre o que nós podemos fazer com as estruturas (struct), nós faremos uma nova discussão sobre a questão ponteiro x valor.

## Funções nas Estruturas

Nós podemos associar um método a uma estrutura (struct):

```go
type Saiyan struct {
  Name string
  Power int
}

func (s *Saiyan) Super() {
  s.Power += 10000
}
```

No código acima, nós dizemos que o tipo `*Saiyan` é o **receptor** do método `Super`. Nós podemos chamar `Super` da seguinte forma:

```go
goku := &Saiyan{"Goku", 9001}
goku.Super()
fmt.Println(goku.Power) // vai printar 19001
```

## Construtores

Estruturas não têm construtores. Ao invés disso, você cria uma função que retorna uma instância do tipo desejado (como uma [factory](https://refactoring.guru/design-patterns/factory-method))

```go
func NewSaiyan(name string, power int) *Saiyan {
  return &Saiyan{
    Name: name,
    Power: power,
  }
}
```

Esse padrão incomoda muitos desenvolvedores. Por um lado, é uma mudança sintática bastante sutil; por outro, parece um pouco menos fragmentado.

Nossa factory não precisa retornar um ponteiro. O código abaixo também é válido:

```go
func NewSaiyan(name string, power int) Saiyan {
  return Saiyan{
    Name: name,
    Power: power,
  }
}
```

## New

Apesar da falta de construtores, Go tem uma função nativa chamada `new`, que é usada para alocar a memória requerida por um tipo. O resultado de `new(X)` é o mesmo que `&X{}`:

```go
goku := new(Saiyan)
// é o mesmo que
goku := &Saiyan{}
```

Qual você usa é uma escolha pessoal, mas você verá que a maioria das pessoas preferem a última forma sempre que tem campos a serem inicializados, uma vez que tende a ser mais fácil de ler:

```go
goku := new(Saiyan)
goku.Name = "goku"
goku.Power = 9001

//vs

goku := &Saiyan {
  Name: "goku",
  Power: 9000,
}
```

Qualquer que seja a abordagem escolhida, se você seguir o *factory pattern* acima, você poderá proteger o resto do seu código de saber e se preocupar com os detalhes da alocação.

## Campos de uma Estrutura

No exemplo que até agora, `Saiyan` tem dois campos `Name` e `Power` dos tipos `string` e `int`, respectivamnte. Campos podem ser de qualquer tipo -- incluindo outras estruturas e tipos que nós ainda não exploramos, como arrays, maps, interfaces e funções.

Por exemplo, nós poderíamos expandir a nossa definição de `Sayian`:

```go
type Saiyan struct {
  Name string
  Power int
  Father *Saiyan
}
```

que inicializaríamos via:

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

## Composição

Go suporta composição, que é o ato de incluir uma estrutura dentro de outra. Em algumas linguagens, isto é chamado de *trait* (traço) ou de *mixin* (mixar). Linguagens que não têm um mecanismo explícito de composição podem sempre fazer pelo caminho mais longo. Em Java, existe a possibilidade de extender estruturas com herança, mas em um cenário que não é uma opção, um *mixin* poderia ser escrito da seguinte maneira:

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

Isso pode ser muito tediante. Cada método de `Person` precisa ser duplicado em `Saiyan`. Go evita essa tediosidade:

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

// e para usar:
goku := &Saiyan{
  Person: &Person{"Goku"},
  Power: 9001,
}
goku.Introduce()
```

A estrutura `Saiyan` tem um campo do tipo `*Person`. Por não termos dado um nome explícito ao campo, nós podemos implicitamente acessar os campos e a função de um tipo composto. No entanto, o compilador Go *deu* um nome para o campo. Considere perfeitamente válido:

```go
goku := &Saiyan{
  Person: &Person{"Goku"},
}
fmt.Println(goku.Name)
fmt.Println(goku.Person.Name)
```

Ambos acima vão printar "Goku".

Composição é melhor do que herança? Muitas pessoas pensam que é uma maneira mais robusta de compartilhar código. Quando usando herança, a sua classe fica fortemente acoplada à sua superclasse e você acaba focando mais na hierarquia do que no comportamento.

### Sobrecarga

Apesar da sobrecarrega não ser específica às estruturas, é válido comentar sobre ela. Simplesmente, Go não suporta sobrecarga. Por contadisso, você verá (e escreverá) muitos funções que se parecem com `Load`, `LoadById`, `LoadByName` etc.

No entanto, devido à composição implícita ser realmente apenas um truque do compilador, nós podemos "sobrescrever" as funções de um tipo composto. Por exemplo, a nossa estrutura `Saiyan` pode ter a sua própria função `Introduce`:

```go
func (s *Saiyan) Introduce() {
  fmt.Printf("Hi, I'm %s. Ya!\n", s.Name)
}
```

A versão composta está sempre acessível via `s.Person.Introduce()`.

## Ponteiros x Valores

Ao escrever código em Go, é natural você se questionar: "isto deveria ser um valor ou um ponteiro para um valor?". Há duas boas notícias. Primeira, a resposta é a mesma independentemente de qual dos itens a seguir estamos falando:

* Uma atribuição de variável local
* O campo de uma estrutura
* O valor de retorno de uma função
* Os parâmetros de uma função
* O receptor de um método

Segundo, se você não tem certeza, use um ponteiro.

Como nós já vimos, passar valores é uma excelente maneira de tornar os dados imutáveis (as mudanças que uma função faz não serão refletidas no código de chamada). Às vezes, este o comportamento que você quer, mas frequentemente não será.

Mesmo se você não tem a intenção de mudar o dado, deve considerar o custo de criar uma cópia de estruturas grandes. Por outro lado, você pode ter estruturas pequenas, como:

```go
type Point struct {
  X int
  Y int
}
```

Nestes casos, o custo de copiar a estrutura é provavelmente compensado por ser capaz de acessar `X` e `Y` diretamente, sem a necessidade de referenciação indireta.

Novamente, estes são todos casos bem sutilmente pequenos. A menos que você esteja lidando com milhares desses pontos (ou outras magnitudes ainda maiores), você não notaria diferenças significativas.

## Antes de Continuar

De um ponto de vista prático, este capítulo introduziu estruturas, como transformar uma instância de uma estrutura em um receptor e adicionou ponteiros ao nosso conhecimento existente sobre o sistema de tipos de Go. Os capítulos seguintes vão ser construídos com base no que nós sabemos sobre estruturas, assim como no funcionamento interno que exploramos.

# Capítulo 3 - Maps, Arrays e Slices

Até agora, nós vimos alguns tipos simples e estruturas (struct). Agora, é hora de olharmos para arrays, slices e maps.

## Arrays

Se você veio do Python, Ruby, Perl, JavaScript ou PHP (entre outras), você provavelmente se habituou a usar *arrays dinâmicos*, que são arrays que se redimensionam sozinhas à medida que os dados são adicionados. Em Go, como em muitas outras linguagens, arrays são fixos. Declarar um array requer que nós especifiquemos o tamanho e, uma vez que o tamanho esteja especificado, não pode crescer:

```go
var scores [10]int
scores[0] = 339
```

O array acima pode armazenar até 10 scores (pontuações) usando os índices `scores[0]` até `scores[9]`. Tentativas de acessar um índice fora do intervalo do array resultará em um erro na compilação ou no tempo de execução.

Nós podemos inicializar o array com valores:

```go
scores := [4]int{9001, 9333, 212, 33}
```

Nós podemos usar `len` para obter o comprimento do array. `range` pode ser usado para iterar sobre o array:

```go
for index, value := range scores {

}
```

Arrays são eficientes, mas rígidos. Frequentemente, nós não sabemos o número de elementos com a qual nós estaremos lidando. Por conta desse cenário, nós podemos direcionar a nossa atenção aos slices.


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
func extractPowers(saiyans []*Saiyan) []int {
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
func extractPowers(saiyans []*Saiyan) []int {
  powers := make([]int, 0, len(saiyans))
  for _, saiyan := range saiyans {
    powers = append(powers, saiyan.Power)
  }
  return powers
}
```

Slices as wrappers to arrays is a powerful concept. Many languages have the concept of slicing an array. Both JavaScript and Ruby arrays have a `slice` method. You can also get a slice in Ruby by using `[START..END]` or in Python via `[START:END]`. However, in these languages, a slice is actually a new array with the values of the original copied over. If we take Ruby, what's the output of the following?

```ruby
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

The `[X:Y]` syntax creates a slice of `scores`, starting from index 2 up until (but not including) index 4. However, unlike the Ruby example above, the Go code will produce an output of `[1, 2, 999, 4, 5]`. This is because our `slice` is really just a window into `scores`.

This changes how you code. For example, a number of functions take a position parameter. In JavaScript, if we want to find the first space in a string (yes, slices work on strings too!) after the first five characters, we'd write:

```javascript
haystack = "the spice must flow";
console.log(haystack.indexOf(" ", 5));
```

In Go, we leverage slices:

```go
strings.Index(haystack[5:], " ")
```

We can see from the above example, that `[X:]` is shorthand for *from X to the end* while `[:X]` is shorthand for *from the start up until X*. Unlike other languages, Go doesn't support negative values. If we want all of the values of a slice except the last, we do:

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

Maps in Go are what other languages call hashtables or dictionaries. They work as you expect: you define a key and value, and can get, set and delete values from it.

Maps, like slices, are created with the `make` function. Let's look at an example:

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

To get the number of keys, we use `len`. To remove a value based on its key, we use `delete`:

```go
// returns 1
total := len(lookup)

// has no return, can be called on a non-existing key
delete(lookup, "goku")
```

Maps grow dynamically. However, we can supply a second argument to `make` to set an initial size:

```go
lookup := make(map[string]int, 100)
```

If you have some idea of how many keys your map will have, defining an initial size can help with performance.

When you need a map as a field of a structure, you define it as:

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

There's yet another way to declare and initialize values in Go. Like `make`, this approach is specific to maps and arrays. We can declare as a composite literal:

```go
lookup := map[string]int{
  "goku": 9001,
  "gohan": 2044,
}
```

We can iterate over a map using a `for` loop combined with the `range` keyword:

```go
for key, value := range lookup {
  ...
}
```

Iteration over maps isn't ordered. Each iteration over a lookup will return the key value pair in a random order.

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

Nevertheless, we can get a sense what the buffered channel is, in fact, buffering by looking at the channel's `len`:

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
