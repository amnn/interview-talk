# Haskell

Haskell is a *functional*, *statically typed*, *pure*, *lazy* programming
language.

### Functional

This essentially means that functions are **first-class**: Functions are not
a special construct of the language, they are values, just like numbers,
strings, booleans, and lists.

### Statically Typed

Everything in Haskell has a *type* which is known at compile time. This fact
can be used to make guarantees about programs that allow the programmer to be
more sure about the correctness of what they have written.

### Pure

Purity in this context refers to side effects. A pure function can produce
no side-effects: Given the same inputs, it always produces the same outputs,
and does nothing else.

Printing to the screen, updating the user interface, reading or writing files,
updating variables are all usually considered side-effects.

All functions in Haskell are pure, this means:

 * They are *referentially transparent*: anywhere a function is called, it
   can be replaced by its function definition to produce exactly the same
   result.
 * **There are no variables**. This is a big one: you can't have a name whose
   value changes (Because no function can change the value of a variable).
   You can still, however, have values with names.

Not being able to use side effects may seem restrictive at first, but it is a
blessing in disguise: Side effects introduce a whole family of bugs which can
be avoided.

### Lazy

Laziness is a feature in Haskell that does not feature prominently in many
other languages. What it means is that expressions are only evaluated as much
as needed. This allows us to use interesting constructs like infinite
data structures.
