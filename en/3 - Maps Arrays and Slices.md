# Chapter 3 - Maps, Arrays and Slices

So far we've seen a number of simple types and structures. It's now time to look at maps, arrays and slices.

## Maps

Maps in Go are what other languages call hashtables or dictionaries. They work as you expect: you define a key and value type, and can get, set and delete values from it.

Maps, like arrays, are created in a way we haven't seen before: with the built-in `make` function. Let's look at an example:

  func main() {
    lookup := make(map[string]int)
    lookup["goku"] = 9001
    power, exists := lookup["vegeta"]

    // prints 0, false
    // 0 is the default value for an integer
    fmt.Println(power, exists)
  }

We use `make`, rather than `new`, because creating a map or array involves more than just allocating memory -- the internal structure needs to be initialized.

To remove a value based on its key, we use `delete`. To get the number of keys, we use `len`:

    // returns 1
    total := len(lookup)

    // has no return, can be called on an non-existing keys
    delete(lookup, "goku")

Maps grow dynamically. However, we can supply a second argument to `make` to set an initial size:

    lookup := make(map[string]int, 100)

If you have some idea of how many keys your map will have, defining an initial size can help with performance. (Also, if you're paying attention, you'll note that `make` and `len` *are* overloaded. Go is a language that, to the frustration of some, makes use of features which aren't exposed for developers to use.)

When you need a map as a field of a structure, you define it as:

    type Saiyan struct {
      Name string
      Friends map[string]*Saiyan
    }

One way to initialize the above is via:

    goku := &Saiyan{
      Name: "Goku",
      Friends: make(map[string]*Saiyan),
    }
    goku.Friends["krillin"] = ... //todo load or create Krillin

There's yet another way to declare and initialize values in Go. Like `make`, this approach is specific to maps and arrays. We can declare it while also assigning values:

    lookup := map[string]int{
      "goku": 9001,
      "gohan": 2044,
    }

We can iterate over a map using a `for` loop combined with the `range` keyword:

    for key, value := range lookup {
      ...
    }

Iteration over maps isn't ordered.

## Arrays

Although arrays and slices are closely related, we'll talk about them separately. For now, we'll look at arrays as though slices didn't exist.

Like maps, arrays are created with `make`:

    func main() {
      scores := make([]int, 10)
      scores[4] = 100
      fmt.Println(scores[4])
    }

Unlike maps, the length isn't optional. Why? Because arrays are fixed-length structures. If you come from a C, C++, Java, or C# background (and many others), this will be normal. If you come from Python, Ruby, Perl, JavaScript or PHP (and also many others), this might be new since these languages have what's called *dynamic arrays*. In this last group of languages, you can append as many values to an array as you want. In the first group, and in Go, the length is fixed. Our above `score` variable can hold 0 to 10 scores, no more (or less!).

Sounds like a drag, right? Well, it turns out that dynamic arrays are just wrappers around fixed-length arrays. By default, they start at a specific length, say 20. When we try to insert a 21st element, the runtime creates a new larger array (often using 2x growth factor) and copies values from the old array into the new. If this sounds inefficient, it is and it isn't. It depends on how many times the array needs to grow.

Regardless, creating the logic for a dynamic array is simple. Even so, Go has a built-in `append` function that does it for us:

    scores := make([]int, 10)
    for i := 0; i < 25; i++ {
      scores = append(scores, i)
    }
    for index, value := range scores {
      fmt.Printf("The score at index %d is %d\n", index, value)
    }

There's a lot of new stuff here, so let's look at each one individually.

First, we're seeing a traditional `for` loop composed of three parts: initializing variables, setting a condition to continue the loop, and defining the code to run after each iteration.

Next, we're seeing the `append` function in action. Notice that we need to re-assign the value of `append` back to `scores`. This is because `append` might need to create a new larger array.

Finally, we're seeing the `for` loop with `range` applied to an array. This is similar to what we already saw with a `map`.

You might want to play with the above code. For example, what happens if you don't assign `append` to anything? The compiler will give you an error. Well, what if we insist that we're smarter than the compiler and assign append to `_`?

    _ := append(scores, i)

Now it compiles and runs, but look at the output.

What happens if we change our printing loop to:

    for index, value := range scores {
      fmt.Println(value)
    }

Again, the compiler complains. Go really doesn't like unused variables. To make it run, we change our code to:

    for _, value := range scores {
      fmt.Println(value)
    }

The last thing to know about arrays is that, like maps, we can use an array as a structure's field, and initialize them with values. Here's an example of both:

    type Person struct {
      Name string
      Numbers []string
    }

    peter := &Person{
      Name: "Peter"
      Numbers: []string{"1-800-654-1984", "867-5309"},
    }

## Slices

In Go, you rarely, if ever, use arrays. Instead, you use slices. A slice is a lightweight structure that wraps and represents a portion of an actual array. All the examples that we saw above, using `make` or doing inline initialization, were actually slices.

Many languages have some type of array slicing capability. Both JavaScript and Ruby arrays have a `slice` method. You can also get a slice in Ruby by using `[START..END]` or in Python via `[START:END]`. However, in these languages, a slice is actually a new array with the values of the original copied over. If we take Ruby, what's the output of the following?

    scores = [1,2,3,4,5]
    slice = scores[2..4]
    slice[0] = 999
    puts scores

The answer is `[1, 2, 3, 4, 5]`. That's because `slice` is a completely new array with copies of values. Now, consider the Go equivalent:

    scores := []int{1,2,3,4,5}
    slice := scores[2:4]
    slice[0] = 999
    fmt.Println(scores)

The output is `[1, 2, 999, 4, 5]`.

Slices also work on strings. However, since strings are immutable in Go (as in most languages), changes to a string slice won't be seen in the original.

As we've already seen, slices have a `len`. They also have a `cap` which is the capacity of the underlying array. When you create a slice with `make`, you can specify both the length and the capacity:

    scores := make([]int, 0, 10)

The above creates a slice with a length of 0, but whose underlying array has a size of 10 (we call this underlying size the capacity of the slice). This can be difficult to understand, so let's look at various examples.

    func main() {
      scores := make([]int, 0, 10)
      scores[5] = 9033
      fmt.Println(scores)
    }

Our first example crashes. Why? Because our slice has a length of 0. Yes, the underlying array has 10 slots, but we need to explicitly expand our slice in order to access those slots. One way to expand a slice is via `append`:

    func main() {
      scores := make([]int, 0, 10)
      scores = scores(append, 5)
      fmt.Println(scores) // prints [5]
    }

But that changes the intent of our original code. Appending to a slice of length 0 will set the first element. For whatever reason, our crashing code wanted to set the 6th element (at index 5). To do this, we can re-slice our slice:

    func main() {
      scores := make([]int, 0, 10)
      scores = scores[:6]
      scores[5] = 9033
      fmt.Println(scores)
    }

How large can we resize a slice? Up to its capacity which, in this case, is 10.

When we looked at arrays, we mentioned that `append` will create a new and large array if necessary. If I told you that Go grew arrays with a 2x algorithm, can you guess what the following will output?

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

The initial capacity of `scores` is 5. In order to hold 20 values, it'll have to be expanded 3 times with a capacity of 10, 20 and finally 40.

As a final example, consider:

    func main() {
      scores := make([]int, 5)
      scores = append(scores, 9332)
      fmt.Println(scores)
    }

Here, the output is going to be [0, 0, 0, 0, 0, 9332]. Maybe you thought it would be [9332, 0, 0, 0,0]? To a human, that might seem logical. To a compiler, you're telling it to append a value to a slice that already holds 5 values.

Ultimately, there are three common ways to initialize a slice:

    names = []string{"leto", "jessica", "paul"}
    checks := make([]bool, 10)
    scores := make([]int, 0, 20)

When do you use which? The first one shouldn't need much of an explanation. You use this when you know the values that you want in the array ahead of time.

The second one is useful when you'll be writing into specific indexes of an array. For example:

    func extractPowers(saiyans []*Saiyans) []int {
      powers := make([]int, len(saiyans))
      for index, saiyan := range saiyans {
        powers[index] = saiyan.Power
      }
      return powers
    }

The last version is most often used in conjunction with `append`. This mostly happens when you don't know the final size of the array. Even when you know the size, `append` can be used. It's largely a matter of preference:

    func extractPowers(saiyans []*Saiyans) []int {
      powers := make([]int, 0, len(saiyans))
      for _, saiyan := range saiyans {
        powers = append(powers, saiyan.Power)
      }
      return powers
    }

Slices as wrappers to arrays and strings is a powerful concept. For one thing, creating a slice in Go is fast. That speed is also constant regardless of the size of the slice.

It also changes how you code. For example, a number of functions take a position parameter. In JavaScript, if we want to find the first space in a string after the first five characters, we'd write:

    haystack = "the spice must flow";
    console.log(haystack.indexOf(" ", 5));

In Go, we leverage slices:

    strings.Index(haystack[5:], " ")

We can see from the above example, that `[X:]` is shorthand for *from X to the end* while `[:X]` is shorthand for *from the start to X*. Unlike other languages, Go doesn't support negative values. If we want all of the values of an array except the last, we do:

    scores := []int{1,2,3,4,5}
    scores = scores[:len(scores)-1]

The above is actually the start of an efficient way to remove a value from an unsorted array:

    func main() {
      scores := []int{1,2,3,4,5}
      scores = removeAtIndex(scores, 2)
      fmt.Println(scores)
    }

    func removeAtIndex(source []int, index int) []int {
      lastIndex := len(source) - 1
      //swap the last value and the value we want to remove
      source[index], source[lastIndex] = source[lastIndex], source[index]
      return source[:lastIndex]
    }

Slices and their underlying structure (be it an array or a string) are transparent. The above function, `removeAtIndex`, takes an `[]int` and returns an `[]int`. These can be either slices or real arrays -- the two are always interchangeable.

The only time that you create an actual array is when you declare the array with a size:

    // create an array that can hold 10 booleans
    // all slots initialized to false, the default boolean value
    checks := [10]bool{}

    //or
    names := [3]string{"leto", "paul", "jessica"}

To be clear, the above *is* different than the other array initializer we've used:

    // we don't specify the size
    // a slice is create (with a length and capacity  of 2)
    Numbers: []string{"1-800-654-1984", "867-5309"},


Finally, now that we know about slices, we can look at another commonly used built-in function: `copy`. `copy` is one of those functions that highlights how slices changes the way we code. Normally, a method that copies values from one array to another has 5 parameters: `source`, `sourceStart`, `count`, `destination` and `destinationSource`. With slices, we only need two:

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

Take some time and play with the above code. Try variations. See what happens if you change copy to something like `copy(worse[2:4], scores[:5])`, or what if you try to copy more or less than `5` values into `worst`?

## Pointers versus Values

We finished Chapter 2 by looking at whether you should assign and pass pointers or values. We'll now have this same conversation with respect to array and map values. Which of these should you use?

    a := make([]Saiyan, 10)
    //or
    b := make([]*Saiyan, 10)

Many developers think that passing `b` to, or returning it from, a function is going to be more efficient. However, what's being passed/returned is a copy of the slice, which itself is a reference. So with respect to passing/returning the slice itself, there's no difference.

Where you will see a difference is when you pass the individual elements to a function:

    for _, saiyan := range saiyans {
      Super(saiyan)
    }

At this point, the same logic that we saw in Chapter 2 applies. So the decision on whether to define an array of pointers versus an array of values comes down to how you use the individual values, not how you use the array or map itself.

## Before You Continue

Arrays and maps in Go work much like they do in other languages. If you're used to dynamic arrays, there might be a small adjustment, but `append` should solve most of your discomfort. If we peek beyond the superficial syntax of arrays, we find slices. Slices are powerful and they have a surprisingly large impact on the clarity of your code.

There are edge cases that we haven't covered, but you're not likely to run into them. And, if you do, hopefully the foundation we've built here will let you understand what's going on.
