# Chapter 5 - Tidbits

In this chapter, we'll talk about a miscellany of Go's feature which didn't quite fit anywhere else.

## Error Handling

Go's preferred way to deal with errors is through return values, not exceptions. Consider the `strconv.Atoi` function which takes a string and tries to convert it to an integer:

    package main

    import(
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

You can create your own error type; the only requirement is that it fulfills the contract of the built-in `error` interface, which is:

    type error interface {
      Error() string
    }

More commonly, we can create our own errors by importing the `errors` package and using it in the `New` function:

    import (
      "errors"
    )


    func process(int count) error {
      if count < 1 {
        return errors.New("Invalid count")
      }
      ...
      return nil
    }

There's a common pattern in Go's standard library of using singleton errors. For example, the `io` package has an `EOF` variable which is defined as:

    var EOF = errors.New("EOF")

This is a package variable (it's defined outside of a function) which is publicly accessible (upper-case first letter). Various functions can return this error, say when we're reading from a file or STDIN. If it makes contextual sense, you should use this error, too. As consumers, we can use this singleton:

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

As a final note, Go does have `panic` and `recover` functions. `panic` is like throwing an exception while `recover` is like `catch`; they are rarely used.

## Defer

Even though Go has a garbage collector, some resources require that we explicitly release them. For example, we need to `Close()` files after we're done with them. This sort of code is always dangerous. For one thing, as we're writing a function, it's easy to forget to `Close` something that we declared 10 lines up. For another, a function might have multiple return points. Go's solution is the `defer` keyword:

    package main

    import(
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

If you try to run the above code, you'll probably get an error (the file doesn't exist). The point is to show how `defer` works. Whatever you `defer` will be executed when the method returns, even if it does so violently. This lets you release resources near where it’s initialized and takes care of multiple return points.

## go fmt

Most programs written in Go follow the same formatting rules, namely, a tab is used to indent and braces go on the same line as their statement.

I know, you have your own style and you want to stick to it. That's what I did for a long time, but I'm glad I eventually gave in. A big reason for this is the `go fmt` command. It's easy to use and authoritative (so no one argues over meaningless preferences).

When you're inside a project, you can apply the formatting rule to it and all sub-projects via:

    go fmt ./...

Give it a try. It does more than indent your code; it also aligns field declarations and alphabetically orders imports.

## Initialized If

Go supports a slightly modified if-statement, one where a value can be initiated prior to the condition being evaluated:

    if x := 10; count > x {
      ...
    }

That's a pretty silly example. More realistically, you might do something like:

    if err := process(); err != nil {
      return err
    }

Interestingly, while the values aren't available outside the if-statement, they are available inside any `else if` or `else`.

## Empty Interface and Casting

In most object-oriented languages, a built-in base class, often named `object`, is the superclass for all other classes. In Go, all types implement an empty interface `interface{}`. If we wanted to, we could write an `add` function with the following signature:

    func add(a interface{}, b interface{}) interface{} {
      ...
    }

To cast a variable to a specific type, you use `.(TYPE)`:

    return a.(int) + b.(int)

You also have access to a powerful type switch:

    switch a.(type) {
      case int:
        fmt.Printf("a is now an int and equals %d\n", a)
      case bool, string:
        // ...
      default:
        // ...
    }

You'll see and probably use the empty interface more than you might first expect. Admittedly, it won't result in clean code. Casting values back and forth is ugly and dangerous but sometimes, in a static language, it's the only choice.

## Strings and Byte Arrays

Strings and byte arrays are closely related. We can easily convert one to the other:

    stra := "the spice must flow"
    byts := []byte(stra)
    strb := string(byts)

In fact, this way of converting is common across various types as well. Some functions explicitly expect an `int32` or an `int64` or their unsigned counterparts. You might find yourself having to do things like:

    int64(count)

Still, when it comes to bytes and strings, it's probably something you'll end up doing often. Do note that when you use `[]byte(X)` or `string(X)`, you're creating a copy of the data. This is necessary because strings are immutable.

Strings are made of `runes` which are unicode code points. If you take the length of a string, you might not get what you expect. The following prints 3:

    fmt.Println(len("椒"))

If you iterate over a string using `range`, you'll get runes, not bytes. Of course, when you turn a string into a `[]byte` you'll get the correct data.

## Function Type

Functions are first-class types:

    type Add func(a int, b int) int

which can then be used anywhere -- as a field type, as a parameter, as a return value.

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

Using functions like this can help decouple code from specific implementations much like we achieve with interfaces.

## Before You Continue

We looked at various aspects of programming with Go. Most notably, we saw how error handling behaves and how to release resources such as connections and open files. Many people dislike Go's approach to error handling. It can feel like a step backwards. Sometimes, I agree. Yet, I also find that it results in code that's easier to follow. `defer` is an unusual but practical approach to resource management. In fact, it isn't tied to resource management only. You can use `defer` for any purpose, such as logging when a function exits.

Certainly, we haven't looked at all of the tidbits Go has to offer. But you should be feeling comfortable enough to tackle whatever you come across.
