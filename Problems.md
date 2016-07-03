# Scribble

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

# Lilypad Lunacy

Eleven lily pads are numbered from 0 to 10. A frog starts on pad 0 and wants to get to pad 10. At each jump, the frog can move forward by one or two pads, so there are many ways it can get to pad 10. For example, it can make 10 jumps of one pad, 1111111111, or five jumps of two pads, 22222, or go 221212 or 221122, and so on. We'll call each of these ways different, even if the frog takes the same jumps in a different order.

How many different ways are there of getting from 0 to 10?

* * *

*Source: [Sample Interview Problems](http://www.cs.ox.ac.uk/ugadmissions/how_to_apply/sample_interview_problems.html)*
