# Lilypad Lunacy

Source: [Sample Interview Problems](http://www.cs.ox.ac.uk/ugadmissions/how_to_apply/sample_interview_problems.html)

Eleven lily pads are numbered from 0 to 10. A frog starts on pad 0 and wants to get to pad 10. At each jump, the frog can move forward by one or two pads, so there are many ways it can get to pad 10. For example, it can make 10 jumps of one pad, 1111111111, or five jumps of two pads, 22222, or go 221212 or 221122, and so on. We'll call each of these ways different, even if the frog takes the same jumps in a different order.

How many different ways are there of getting from 0 to 10?

## Smaller examples

Lilypad | Ways
:-----: | :--:
(0)     | (1)
1       | 1
2       | 2
3       | 3
4       | 5
5       | 8

It is the Fibonacci sequence. Why?

<!-- An innocent comment to force Markdown out of list parsing mode. See also http://meta.stackoverflow.com/a/99637 -->

    F(0) = 1
    F(1) = 1
    F(n) = F(n-1) + F(n-2)

## Breaking the problem down

We can break the problem down with a _recursive_ solution. Let’s try and define a function _L(k)_ that defines the number of ways for the frog to reach lily pad _k_.

We will split the problem up based on the *first* jump the frog takes.

If the first jump was a step of 1, then there are _L(k-1)_ ways for the frog to proceed after that.

If the first jump was a step of 2, then there are _L(k-2)_ ways for the frog to proceed after that.

Which results in the final form of _L(k) = L(k-1) + L(k-2)_.

Finally, we need to give the base cases

<!-- An innocent comment to force Markdown out of list parsing mode. See also http://meta.stackoverflow.com/a/99637 -->

    L(0) = 1
    L(1) = 1

Which gives us a definition that is equivalent to that of the Fibonacci series.
