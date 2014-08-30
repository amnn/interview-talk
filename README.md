# Haskell

Summarised from: http://www.seas.upenn.edu/~cis194/lectures/01-intro.html

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
now never happen.

### Lazy

Laziness is a feature in Haskell that does not feature prominently in many
other languages. What it means is that expressions are only evaluated as much
as needed. This allows us to use interesting constructs like infinite
data structures.

## Basic Types

```haskell
x :: Int
x = 3
```

The above declaration says that `x` is a 32bit integer type (`::` is read as
"has type") and is declared with the value of `3`. `x` cannot be redefined
after this, it will hold the value `3` for the entire runtime of the program.

Other basic types include:

 * `Integer` An arbitrary precision integer type: unlike `Int`, `Integer` can
   hold arbitrarily large numbers (as long as you have enough memory to hold
   them).
 * `Float` A single precision floating point number
 * `Double` A double precision floating point number
 * `Bool` can be either `True` or `False`
 * `Char` Unicode characters

## Lists

```haskell
xs :: [Int]
xs = [1, 2, 3]
```
`[Int]` is pronounced, "list of type `Int`". In general, `[a]` reads as list
of type `a`.

Haskell also supports lists of type `Char` (`[Char]`) natively as a
type called `String`: `"hello" == ['h', 'e', 'l', 'l', 'o']`.

## Functions

```haskell
increment :: Int -> Int
increment x = x + 1
```


```haskell
add :: Int -> Int -> Int
add x y = x + y
```

`increment` takes one argument, and returns the argument plus one.
`add` takes two arguments, and returns the addition of those arguments

In general, the type of a function `f` with `k` arguments whose types are
`t_1`, `t_2`, ..., `t_k`, which returns a value of type `r` is:

    f :: t_1 -> t_2 -> ... -> t_k -> r
