Hi Karl!

I read your book on Go. Thank you for taking the time to write this!

I found no information on your preferred means of contact/feedback; I
tried sending you e-mail but it bounced. So I'm resorting to the only
communications channel I found that seems to work -- pull request.

I've written one or two packages but I'm still quite new with the
language. Although I knew all of what you covered, it was a good recap
for me and helped jog my memory.

Some feedback:

1. Section "Empty Interface and Conversions"

https://github.com/karlseguin/the-little-go-book/blame/f8812e7f78/en/go.md#L1469-L1473

This part confused me a little. While `a.(int)` would return the
embedded int, it does no conversion (it would panic if the underlying
type was not an int). The next section "Strings and Byte Arrays" also
covers conversion, but does not explain the difference between
string(foo) and foo.(string). Perhaps a brief explanation of the
difference of the two syntaxes would be a good idea.

I tried to improve the formulation to make it more clear what the first
form is.

https://github.com/karlseguin/the-little-go-book/pull/30


2. Section "Synchronization"

You say, "You can have as many readers as you want but writes need to be
synchronized.". Yet, later in the same section you say "since we can
have multiple reads at the same time, there's another common mutex
called a read-write mutex". I interpreted the first part of this second
sentence to mean that multiple simultaneous reading needs locking.

Here is an attempt to minimally change the current wording to reduce
ambiguity:

https://github.com/karlseguin/the-little-go-book/pull/31


Thank you for a really nice sunday read.

/Johan
