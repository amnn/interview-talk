# Scribble

Source: [Sample Interview Problems](http://www.cs.ox.ac.uk/ugadmissions/how_to_apply/sample_interview_problems.html)

The game of Scribble is played with an inexhaustible supply of tiles, and consists of forming ‘words’ according to certain rules. Since each tile bears one of the letters *P*, *Q*, or *R*, these are not words that will be found in any ordinary dictionary. The game begins with the word “PQ” on the board; each move consists of applying one of the following rules:

- If the word on the board is *P*_x_ for some shorter word _x_, you may change it to *P*_xx_. E.g. if the word is “PQRRQ” then you may change it to “PQRRQQRRQ”.

- If the word on the board is _x_*QQQ*_y_, for some shorter words _x_ and _y_, then you may change it to _x_*R*_y_, replacing the sequence *QQQ* with a single *R*.

- If the word on the baord is _x_*RR*_y_ for some shorter words _x_ and _y_, then you may change it to _xy_, deleting the sequence *RR* entirely.

**Summary of Rules:**

1. *P*_x_ → *P*_xx_

2. _x_*QQQ*_y_ → _x_*R*_y_

3. _x_*RR*_y_ → _xy_

**Questions:**

1. For each of the following words, say whether you can make it or not by following the rules of the game:

   a. “QPR”
   b. “PQQ”
   c. “PQR”
   d. “PR”

2. Given *any* word, how can you decide whether it can be made or not?

* * *

## Solution 1(i).

*No.* Because there is no way to start a word with a *Q*.

Proposition: All words we make in the game, begin with a *P*.

**Proof by Induction:**

Base Case: “PQ” Trivially, begins with a *P*. ■

Inductive Step: Given a word _w_ beginning with *P*, consider _w’_ the word we get from applying Rule 1.

- _w’_ is of the form *P*_xx_. { Rule 1, RHS. }

- _w’_ begins with a *P*. ■

Inductive Step: Given a word _w_ beginning with *P*, consider _w’_ the word we get from applying Rule 2.

- _w_ is of the form *P*_x’_*QQQ*_y_ { Rule 2, LHS. & Induction Hypothesis }

- _w’_ is of the form *P*_x’_*R*_y_ { Rule 2, RHS. }

- _w’_ begins with a *P*. ■

Inductive Step: Given a word _w_ beginning with *P*, consider _w’_ the word we get from applying Rule 3.

- _w_ is of the form *P*_x’_*RR*_y_ { Rule 3 LHS. & Induction Hypothesis }

- _w’_ is of the form *P*_x’y_ { Rule 3 RHS. }

- _w’_ begins with a P. ■

By induction, all words in the game begin with a *P*. ■

## Solution 1(ii).

    “PQ” → “PQQ”

## Solution 1(iii).

    “PQ” → “PQQ” → “PQQQQ” → “PQR”

## Solution 1(iv) and 2

- Any word in the game is a result of applying a sequence of rules.

- This sequence can always be rearranged so that all the applications of Rule 1 are applied first, then all the applications of Rule 2, and finally all the applications of Rule 3. _Proof left as an exercise._

- Consider this as “pumping” the word to get the right number of *Q*’s, then converting the necessary *QQQ*’s to *R*’s, and finally “pruning” the word of excess *RR*’s to get the target word.

- This means that after applying all the Rule 1’s we will get a word of the form “PQ...Q” where the number of *Q*’s is a power of 2.

- Furthermore, every *R* in the final word came from removing 3 *Q*’s when applying all the Rule 2’s.

- Finally, there is an undisclosed number of pairs of *R*’s that were removed when applying all the Rule 3’s.

Consider a word _w_ containing _q_ *Q*’s and _r_ *R*’s, from which an unknown number (let us call it _r’_) of *RR*’s have been removed.

Then, the number of *Q*’s after applying all the Rule 1’s to produce _w_ can be described by the expression:

      q + 3(r + 2r’) (for some r’ ≥ 0)
    = q + 3r + 6r’

From the assertions earlier, we know that this must equal some power of 2 (again, we do not know which power of 2):

    q + 3r + 6r’ = 2^k (for some k ≥ 0)

**the above is almost the same as saying:**

    q + 3r = 2^k (mod 6) (for some k ≥ 0)

inspecting the powers of 2 modulo 6, we see the following:

 k  | 2^k | 2^k (mod 6)
--- | --- | -----------
1   | 1   | 1
2   | 2   | 2
3   | 4   | 4
4   | 8   | 2
5   | 16  | 4
6   | 32  | 2
7   | 64  | 4
... | ... | ...

We see that it is cyclic. This means that the remainder of _q + 3r_ when divided by 6 must be equal to 2 or 4, or there is precisely one *Q*.
