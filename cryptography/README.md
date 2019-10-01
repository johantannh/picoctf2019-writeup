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

>16 9 3 15 3 20 6 => PICOCTF

>20 8 5 14 21 13 2 5 18 19 13 1 19 15 14 => THENUMBERSMASON

### Flag
`PICOCTF{THENUMBERSMASON}`

- - -

# 13 
Points: 100

## Problem
>Cryptography can be easy, do you know what ROT13 is? 

```
cvpbPGS{abg_gbb_onq_bs_n_ceboyrz}
```

### Hint
>This can be solved online if you don't want to do it by hand!

## Solution
The encrypted code above can be decrypted online here using the [ROT13](https://www.dcode.fr/rot-13-cipher) encryptor & decryptor
```
cvpbPGS{abg_gbb_onq_bs_n_ceboyrz} => picoCTF{not_too_bad_of_a_problem}
```

### Flag
`picoCTF{not_too_bad_of_a_problem}`

- - - 

# caesar 
Points: 100

## Problem
>Decrypt this [message](https://2019shell1.picoctf.com/static/48df1c1cea3578bb350dd089a9f0bc10/ciphertext) . You can find the ciphertext in /problems/caesar_0_22aa542fadadcc37b6ec6037c493ec9f on the shell server.

```
picoCTF{jyvzzpunaolybipjvunfzpthre}
```

### Hint
>caesar cipher [tutorial](https://learncryptography.com/classical-encryption/caesar-cipher)

## Solution
The encrypted code above can be decrypted online here using the [Caesar-Cipher](https://www.dcode.fr/caesar-cipher) . Brute Force Attack can be applied to guess all possible combination for the shifting of the letter.

```
picoCTF{jyvzzpunaolybipjvunfzpthre} => picoCTF{crossingtherubicongysimakx}
```

### Flag
`picoCTF{crossingtherubicongysimakx}`

- - - 

# Flags 
Points: 200

## Problem
>What do the [flags](https://2019shell1.picoctf.com/static/ae23b7df04365ab0213f0158c5b5d694/flag.png) mean?

### Hint
>The flag is in the format PICOCTF{}

## Solution

Need to use brute force techniques to fill in unknown 8 capital letters. `PICOCTF{FabdebgheTzFF}`. Need refer to immersive labs, there is a lab that can brute force known strings

### Flag
`flag`

- - - 