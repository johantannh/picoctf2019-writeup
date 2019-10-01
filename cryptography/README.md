# The-Numbers
Points: 50

## Problem
>The [numbers](https://2019shell1.picoctf.com/static/eb3589c566dd3f809908053460acb817/the_numbers.png)... what do they mean?

### Hint
>The flag is in the format PICOCTF{}

## Solution
The image show a bunch of number align in the following format 
```
16 9 3 15 3 20 6 { 20 8 5 14 21 13 2 5 18 19 13 1 19 15 14 } 
```
The number above is encrypted using a [Substitution Cipher](https://www.dcode.fr/letter-number-cipher) based on Letter Number (A1Z26) A=1, B=2, C=3.....

>16 9 3 15 3 20 6 => PICOTF

>20 8 5 14 21 13 2 5 18 19 13 1 19 15 14 => THENUMBERSMASON

### Flag
`PICOCTF{THENUMBERSMASON}`

* * *


