# Chapter 2 - Structures

Go isn't an object-oriented (OO) language. It doesn't have objects and thus, doesn't have the many concepts associated with OO such as polymorphism, overloading, inheritance and so on.

What Go does have are structures, which can be associated with functions. Go also supports a simple but effective form of composition. Overall, it results in simpler code, but there'll be occasions where you'll miss some of what OO has to offer. (It's worth pointing out that *composition over inheritance* is an old battle cry and Go is the first language I've used that takes a firm stand on the issue.)

Although Go doesn't do OO, you'll notice a lot of similarities between the definition of a structure and that of a class. A simple example is the following `Saiyan` structure:

    type Saiyan struct {
      Name string
      Power int
    }

We'll soon see how to attach functions to this structure, much like you'd have methods as part of a class. Before we do that, we have to dive back into declarations.

## Declarations and Initializations

When we first looked at variables and declarations, we looked only at built-in types, like integers and strings. Now that we're talking about structures, we need to expand that conversation to include pointers.

The simplest way to create an instance of our structure is:

    goku := Saiyan{
      Name: "Goku",
      Power: 9000,
    }

*Note:* The trailing `,` in the above structure is required. Without it, the compiler will give an error.

We don't have to set all or even any of the fields. Both of these are valid:

    goku := Saiyan{}

    // or

    goku := Saiyan{Name: "Goku"}
    goku.Power = 9000

Fields that aren't set will have a default value (0 for integers, "" for strings, false for boolean, nil for pointers). Furthermore, you can skip the field name and rely on the order of the field declarations (though for the sake of clarity, you should only do this for structures with few fields):

    goku := Saiyan{"Goku", 9000}

What all of the above examples do is declare a variable, `goku` and assign a value to it. This is no different from assigning `0` to `x`.

Many times though, we don't want a variable that has a value but rather, we want a variable that has a pointer to a value. A pointer is a memory address; it's the location of where to find the actual value. It's a level of indirection, like directions.

Why do we want a pointer to the value, rather than the actual value? It comes down to the way Go passes arguments to a function: as copies. Knowing this, what does the following print?

    func main() {
      goku := Saiyan{"Goku", 9000}
      Super(goku)
      fmt.Println(goku.Power)
    }

    func Super(s Saiyan) {
      s.Power += 10000
    }

The answer is 9000, not 19000. Why? Because `Super` made changes to a copy of our original `goku` value and thus, changes made in `Super` weren't reflected in the caller. To make this work as you probably expect, we need to pass a pointer to our value:

    func main() {
      goku := &Saiyan{"Goku", 9000}
      Super(goku)
      fmt.Println(goku.Power)
    }

    func Super(s *Saiyan) {
      s.Power += 10000
    }

We made two changes. The first is that we used the `&` operator to get the address of our value (it's called the *address of* operator). Next, we changed the type of parameter `Super` expects. It used to expect a variable of type `Saiyan` but now expects one of type `*Saiyan`, where `*X` means *pointer to X*. Obviously, the two types are related but they are two distinct types.

Note that we're still passing a copy of `goku's` value to `Super` it just so happens that `goku's` value has become an address. That copy is the same address as the original, which is what that indirection buys us. Think of it as copying the directions to a restaurant. What you have is a copy, but it still points to the same restaurant as the original. We can prove that it's a copy by trying to change where it points to:

    func main() {
      goku := &Saiyan{"Goku", 9000}
      Super(goku)
      fmt.Println(goku.Power)
    }

    func Super(s *Saiyan) {
      s = &Saiyan{"Gohan", 1000}
    }

The above, once again, prints 9000. This is how many languages behave, including Ruby, Python, Java and C#. Go, and to some degree C#, simply make the fact visible.

It should also be obvious that copying a pointer is going to be cheaper than copying a complex object. On a 64-bit machine, a pointer is 64 bits large. If we have a structure with many fields, maybe even a large string or array, creating copies can be expensive.

All this isn't to say that you'll always want a pointer. At the end of this chapter, after we've seen a bit more of what we can do with structures, we'll re-examine the pointer-versus-value question.

## Functions on Structures

We can associate a function with a structure:

    type Saiyan struct {
      Name string
      Power int
    }

    func (s *Saiyan) Super() {
      s.Power += 10000
    }

In the above code, we say that an instance of type `*Saiyan` is the **receiver** of the `Super` function. We call `Super` like so:

    goku := &Saiyan{"Goku", 9001}
    goku.Super()
    fmt.Println(goku.Power) // will print 19001


In reality, aside from improved readability and organization, there's no difference between having a receiver, as shown above, and a function that takes a value of `*Saiyan` as a parameter.

## Constructors

Structures don't have constructors. Instead, you create a function that returns an instance of the desired type (like a factory):

    func NewSaiyan(name string, power int) *Saiyan {
      return &Saiyan{
        Name: name,
        Power: power,
      }
    }

This pattern rubs a lot of developers the wrong way. On the one hand, it's a pretty slight syntactical change; on the other, it does feel a little less compartmentalized.

Our factory doesn't have to return a pointer; this is absolutely valid (though it will be marginally slower):

    func NewSaiyan(name string, power int) Saiyan {
      return Saiyan{
        Name: name,
        Power: power,
      }
    }


## Fields of a Structure

In the example that we've seen so far, `Saiyan` has two fields `Name` and `Power` of types `string` and `int`, respectively. Fields can be of any type -- including other structures and types that we haven't explored yet such as arrays, maps, interfaces and functions.

For example, we could expand our definition of `Saiyan`:

    type Saiyan struct {
      Name string
      Power int
      Father *Saiyan
    }

which we'd initialize via:

    gohan := &Saiyan{
      Name: "Gohan",
      Power: 1000,
      Father: &Saiyan {
        Name: "Goku",
        Power: 9001,
        Father: nil,
      },
    }

## Composition

Go supports composition, which is the act of including one structure into another. In some languages, this is called a trait or a mixin. Languages that don't have an explicit composition mechanism can always do it the long way. In Java:

    public class Person {
      private string name;

      public string getName() {
        return this.name;
      }
    }

    public class Saiyan {
      // Saiyan is said to have a person
      private Person person;

      // we forward the call to person
      public string getName() {
        return this.person.getName();
      }
      ...
    }

This can get pretty tedious. Every method of `Person` needs to be duplicated in `Saiyan`. Go avoids this tediousness, thanks to implicit composition:

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

The `Saiyan` structure has a field of type `*Person`. Because we didn't give it an explicit field name, we can implicitly access the fields and functions of the composed type. However, the Go compiler *did* give it a field name, consider the perfectly valid:

    goku := &Saiyan{
      Person: &Person{"Goku"},
    }
    fmt.Println(goku.Name)
    fmt.Println(goku.Person.Name)

Both of the above will print "Goku".

Is composition better than inheritance? Many people think that it's a more robust way to share code. When using inheritance, your class is tightly coupled to your superclass and you end up focusing on hierarchy rather than behavior.

### Overloading

While overloading isn't specific to structures, it's worth addressing. Simply, Go doesn't support overloading. For this reason, you'll see (and write) a lot of functions that look like `Load`, `LoadById`, `LoadByName` and so on.

However, because implicit composition is really just a compiler trick, we can "overwrite" the functions of a composed type. For example, our `Saiyan` structure can have its own `Introduce` function:

    func (s *Saiyan) Introduce() {
      fmt.Printf("Hi, I'm %s. Ya!\n", p.Name)
    }

The composed version is always available via `s.Person.Introduce()`.

## Pointers versus Values

As you write Go code, it's natural to ask yourself *should this be a value, or a pointer to a value?* There are two pieces of good news. First, the answer is the same regardless of which of the following we're talking about:

* A local variable assignment
* Field in a structure
* Return value from a function
* Parameters to a function (including the receiver)

Secondly, if you aren't sure, use a pointer.

As we already saw, passing values is a great way to make data immutable (changes that a function makes to it won't be reflected in the calling code). Sometimes, this is the behavior that you'll want but more often, it won't be.

Even if you don't intend to change the data, consider the cost of creating a copy of large structures. Conversely, you might have small structures, say:

    type Point struct {
      X int,
      Y int,
    }

In such cases, the cost of copying the structure is probably offset by being able to access `X` and `Y` directly, without any indirection.

Again, these are all pretty subtle cases. Unless you're iterating over thousands or possibly tens of thousands of such points, you wouldn't notice a difference.

## Before You Continue

From a practical point of view, this chapter introduced structures, how to make an instance of a structure a receiver of a function, and added pointers to our existing knowledge of Go's type system. The following chapters will build on what we know about structure as well as the inner workings that we've explored.
