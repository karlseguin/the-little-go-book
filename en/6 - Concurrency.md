# Chapter 6 - Concurrency

Go is often described as a concurrent-friendly language. The reason for this is that it provides a simple syntax over two powerful mechanisms: goroutines and channels.

## Goroutines

A goroutine is similar to a thread, except it is managed by Go. Code that runs in a goroutine can run concurrently to other code. Let's look at an example:

    package main

    import (
      "fmt"
      "time"
    )

    func main() {
      fmt.Println("start")
      go process()
      time.Sleep(time.Millisecond * 10)
      fmt.Println("done")
    }

    func process() {
      fmt.Println("processing")
    }

There are a few interesting things going on here, but the most important is how we start a goroutine. We simply use the `go` keyword followed by the function we want to execute. If we just want to run a bit of code, such as the above, the following is a good alternative:

    go func() {
      fmt.Println("processing")
    }()

Goroutines aren't useful only because of how easy they are to create, they're also cheap to create and keep around. Multiple goroutines will end up running on the same underlying OS thread. This is often called an M:N threading model because we have M application threads (goroutines) running on N OS threads. The result is that a goroutine has a fraction of overhead (a few KB) than OS threads. On modern hardware, it's possible to have millions of goroutines running.

Furthermore, the complexity of mapping and scheduling is hidden. We just say *this code should run concurrently* and let Go worry about making it happen.

If we go back to our example, you'll notice that we had to `Sleep` for a few milliseconds. That's because the main process exits before the goroutine gets a chance to execute (the process doesn't wait until all goroutines are finished before exiting). To solve this, we need to coordinate our code.

## Synchronization

Creating goroutines is trivial, and they are so cheap that we can start many; however, concurrent code needs to be coordinated. To help with this problem, Go provides `channels`. Before we look at `channels`, I think it's important to understand a little bit about the basics of concurrent programming.

Writing concurrent code requires that you pay specific attention to where and how you read and write values. In some ways, it's like programming without a garbage collector -- it requires that you think about your data from a new angle, always watchful for possible danger. Consider:

    package main

    import (
      "fmt"
      "time"
    )

    var counter = 0

    func main() {
      for i := 0; i < 2; i++ {
        go incr()
      }
      time.Sleep(time.Millisecond * 10)
    }

    func incr() {
      counter++
      fmt.Println(counter)
    }

What do you think the output will be?

If you think the output is `1, 2` you're both right and wrong. It's true that if you run the above code, you'll very likely get that output. However, the reality is that the behavior is undefined. Why? Because we potentially have multiple (two in this case) goroutines writing to the same variable, `counter`, at the same time. Or, just as bad, one goroutine would be reading `counter` while another one writes to it.

Is that really a danger? Yes, absolutely. `counter++` might seem like a simple line of code, but it actually gets broken down into multiple assembly statements -- the exact nature is dependent on the platform that you're running. It's true that, in this example, the most likely case is things will run just fine. However, another possible outcome would be that they both see `counter` when its equal to `0` and you get an output of `1, 1`. There are worse possibilities, such as system crashes or accessing arbitrary pieces of data and incrementing it!

The only concurrent thing you can safely do to a variable is to read from it. You can have as many readers are you want, but writes need to be synchronized. There are various ways to do this, including using some truly atomic operations that rely on special CPU instructions. However, the most common approach is to use a mutex:

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
      for i := 0; i < 2; i++ {
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

A mutex serializes access to the code under lock. The reason we simply define our lock as `lock sync.Mutex` is because the default value of a `sync.Mutex` is unlocked.

Seems simple enough? The example above is deceptive. There's a whole class of serious bugs that can arise when doing concurrent programming. First of all, it isn't always so obvious what code needs to be protected. While it might be tempting to use coarse locks (locks that cover a large amount of code), that undermines the very reason we're doing concurrent programming in the first place. We generally want fine locks; else, we end up with a ten-lane highway that suddenly turns into a one-lane road.

The other problem has to do with deadlocks. With a single lock, this isn't a problem, but if you're using two or more locks around the same code, it's dangerously easy to have situations where goroutineA holds lockA but needs access to lockB, while goroutineB holds lockB but needs access to lockA.

It actually *is* possible to deadlock with a single lock, if we forget to release it. This isn't as dangerous as a multi-lock deadlock (because those are *really* tough to spot), but just so you can see what happens, try running:

    package main

    import (
      "time"
      "sync"
    )

    var (
      lock sync.Mutex
    )

    func main() {
      go func(){ lock.Lock() }()
      time.Sleep(time.Millisecond * 10)
      lock.Lock()
    }

There's more to concurrent programming than what we've seen so far. For one thing, since we can have multiple reads at the same time, there's another common mutex called a read-write mutex. This exposes two locking functions: one to lock readers and one to lock writers.

Furthermore, part of concurrent programming isn't so much about serializing access across the narrowest possible piece of code; it's also about coordinating multiple goroutines. For example, sleeping for 10 milliseconds isn't a particularly elegant solution. What if a goroutine takes more than 10 milliseconds? What if it takes less and we're just wasting cycles? Also, what if instead of just waiting for goroutines to finish, we want to tell one *hey, I have new data for you to process!*?

These are all things that are doable without `channels`. Certainly for simpler cases, I believe you **should** use primitives such as `sync.Mutex` and `sync.RWMutex`, but as we'll see in the next section, `channels` aim at making concurrent programming cleaner and less error-prone.

## Channels

The challenge with concurrent programming stems from sharing data. If your goroutines share no data, you needn't worry about synchronizing them. That isn't an option for all systems, however. In fact, many systems are built with the exact opposite goal in mind: to share data across multiple requests. An in-memory cache or a database, are good examples of this. This is becoming an increasingly common reality.

Channels help make concurrent programming saner by taking shared data out of the picture. A channel is a communication pipe between goroutines which is used to pass data. In other words, a goroutine that has data can pass it to another goroutine via a channel. The result is that, at any point in time, only one goroutine has access to the data.

A channel, like everything else, has a type. This is the type of data that we'll be passing through our channel. For example, to create a channel which can be used to pass an integer around, we'd do:

    c := make(chan int)

The type of this channel is `chan int`. Therefore, to pass this channel to a function, our signature looks like:

    func worker(c chan int) { ... }

Channels support two operations: reading and writing. We write to a channel by doing:

    CHANNEL <- DATA

and read from one by doing

    VAR := <- CHANNEL

The arrow points in the direction that data flows. When writing, the data flows into the channel. When reading, the data flows out of the channel.

The final thing to know before we look at our first example is that reading and writing to and from a channel is blocking. That is, when we read from a channel, execution of the goroutine won't continue until data is available. Similarly, when we write to a channel, execution won't continue until someone on the other side is reading.

Consider a system with incoming data that we want to handle in separate goroutines. This is a common requirement. If we did our data-intensive processing on the goroutine which accepts the incoming data, we'd risk timing out clients. First, we'll write our worker. This could be a simple function, but I'll make it part of a structure since we haven't seen goroutines used like this before:

    type Worker struct {
      id int
    }

    func (w *Worker) process(c chan int) {
      for {
        data := <- c
        fmt.Printf("worker %d got %d\n", w.id, data)
      }
    }

Our worker is simple. It waits until data is available then "processes" it. Dutifully, it does this in a loop, forever waiting for more data to process.

To use this, the first thing we'd do is start some workers:

    c := make(chan int)
    for i := 0; i < 4; i++ {
      worker := &Worker{id: i}
      go worker.process(c)
    }

And then we can give them some work:

    for {
      c <- rand.Int()
      time.Sleep(time.Millisecond * 50)
    }

Here's the complete code to make it run:

    package main

    import (
      "fmt"
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
        data := <- c
        fmt.Printf("worker %d got %d\n", w.id, data)
      }
    }

We don't know which worker is going to get what data. What we do know, what Go guarantees, is that the data we write to a channel will only be read by a single reader.

Notice that the only shared state is the channel, which we can safely read from and written to concurrently. Channels provide all of the synchronization code we need and also ensure that, at any given time, only one goroutine has access to a specific piece of data.

### Buffered Channels

Given the above code, what happens if we have more data coming in than we can handle? You can simulate this by changing the worker to sleep after it has received data:

      for {
        data := <- c
        fmt.Printf("worker %d got %d\n", w.id, data)
        time.Sleep(time.Millisecond * 500)
      }

What's happening is that our main code, the one that accepts the user's incoming data (which we just simulated with a random number generator) is blocking as it writes to the channel because no reader is available.

There are a few popular strategies to handle this, which Go makes it easy to implement. The first is to buffer the data. We don't want to block the main receiver. If no worker is available, we want to temporarily store the data in some sort of queue. Channels have this buffering capability built-in. When we created our channel with `make`, we can give our channel a length:

    c := make(chan int, 100)

You can make this change, but you'll notice that the processing is still choppy. Buffered channels don't add more capacity; they merely provide a queue for pending work and a good way to deal with a sudden spike. In our example, we're continuously pushing more data than our workers can handle.

Nevertheless, we can get a sense that the buffered channel is, in fact, buffering by looking at the channel's `len`:

      for {
        c <- rand.Int()
        fmt.Println(len(c))
        time.Sleep(time.Millisecond * 50)
      }

You can see that it grows and grows until it fills up, at which point the writes to our channel start to block again.

### Select

Even with buffering, there comes a point where we need to start dropping messages. We can't use up an infinite amount of memory hoping a worker frees up. For this, we use Go's `select`.

Syntactically, `select` looks a bit like a switch. With it, we can provide code for when the channel isn't available to write to. First, let's remove our channel's buffering so that we can clearly see how `select` works:

    c := make(chan int)

Next, we change our `for` loop:

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

We're pushing out 20 messages per second, but our workers can only handle 10 per second; thus, half the messages get dropped.

This is only the start of what we can accomplish with `select`. A main purpose of select is to manage multiple channels. Given multiple channels, `select` will block until the first one becomes available. If no channel is available, `default` is executed if one is provided. A channel is randomly picked when multiple are available.

It's hard to come up with a simple example that demonstrates this behavior as it's a fairly advanced feature. The next section might help illustrate this though.

### Timeout

We've looked at buffering messages as well as simply dropping them. Another popular option is to timeout. We're willing to block for some time, but not forever. This is also something easy to achieve in Go. Admittedly, the syntax might be hard to follow but it's such a neat and useful feature that I couldn't leave it out.

To block for a maximum amount of time, we can use the `time.After` function. Let's look at it then try to peek beyond the magic. To use this, our write becomes:

    for {
      select {
      case c <- rand.Int():
      case time.After(time.Millisecond * 100):
        fmt.Println("timed out", )
      }
      time.Sleep(time.Millisecond * 50)
    }

`time.After` returns a channel, so we can `select` from it. The channel is written to after the specified time expires. That's it. There's nothing more magical than that. If you're really curious, here's what an implementation of `after` could look like:

    func after(d time.Duration) chan bool {
      c := make(chan bool)
      go func() {
        time.Sleep(d)
        c <- true
      }()
      return c
    }

Back to our `select`, there are a couple of things to play with. First, what happens if you add the `default` case back? Can you guess? Try it. If you aren't sure what's going on, remember that `default` fires immediately if no channel is available.

Also, `time.After` is a channel of type `chan time.Time`. In the above example, we simply discard the value that was written to the channel. If you want though, you can read it:

      case t := time.After(time.Millisecond * 100):
        fmt.Println("timed out at", t)

Pay close attention to our `select`. Notice that we're writing to `c` but reading from `time.After`. `select` works the same regardless of whether we're reading from, writing to, or any combination of channels:

    * The first available channel is chosen.
    * If multiple channels are available, one is randomly picked.
    * If no channel is available, the default case is executed.
    * If there's no default, select blocks.

Finally, it's common to see a `select` inside a `for`. Consider:

    for {
      select {
      case data := <-c:
        fmt.Printf("worker %d got %d\n", w.id, data)
      case <-time.After(time.Millisecond * 10):
        fmt.Println("Break time")
        time.Sleep(time.Second)
      }
    }

## Before You Continue

If you're new to the world of concurrent programming, it might all seem rather overwhelming. It categorically demands considerably more attention and care. Go aims to make it easier.

Goroutines effectively abstract what's needed to run concurrent code. Channels help eliminate some serious bugs that can happen when data is shared by eliminating the sharing of data. This doesn't just eliminate bugs, but it changes how one approaches concurrent programming. You start to think about concurrency with respect to message passing, rather than dangerous areas of code.

Having said that, I still make extensive use of the various synchronization primitives found in the `sync` and `sync/atomic` packages. I think it's important to be comfortable with both. I encourage you to first focus on channels, but when you see a simple example that needs a short-lived lock, consider using a mutex or read-write mutex.
