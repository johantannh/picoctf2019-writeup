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
>What do the [flags](https://github.com/johantannh/picoctf2019-writeup/blob/master/reversing/Images/3%20-%20roldVTt.png) mean?

### Hint
>The flag is in the format PICOCTF{}

## Solution
The flag show is encoded in NATO phonetic alphabet, codes & signals. This can be seen below

### The Code : 
![Flag](https://raw.githubusercontent.com/johantannh/picoctf2019-writeup/master/reversing/Images/3%20-%20roldVTt.png "Flag")

### Encryption Table : 
![Table](https://raw.githubusercontent.com/johantannh/picoctf2019-writeup/master/reversing/Images/30%20-%20YPed2b4.jpg "Table")

### Flag
`PICOCTF{F1AG5AND5TUFF}`

- - - 


# Mr-Worldwide
Points: 200

## Problem
>A musician left us a [message](https://2019shell1.picoctf.com/static/46e165b0a953075440f3a544fdb4cff1/message.txt). What's it mean?

### Hint
>Nil

## Solution

Arrange the coordinates. put each one into google map
```
picoCTF{
(35.028309, 135.753082)
(46.469391, 30.740883)
(39.758949, -84.191605)
(41.015137, 28.979530)
(24.466667, 54.366669)
(3.140853, 101.693207)
_
(9.005401, 38.763611)
(-3.989038, -79.203560)
(52.377956, 4.897070)
(41.085651, -73.858467)
(57.790001, -152.407227)
(31.205753, 29.924526)
}
```

Paste each coordinate in google map. Copy the address for each coordinate and notice the `city` for each coordinate. Take the first letter of each city and put together it forms the words.

```
picoCTF{
2QH3+86 Kyoto, Japan
FP9R+Q9 Odesa, Odessa Oblast, Ukraine
QR55+H9 Dayton, Ohio, USA
2X8H+3R Istanbul(Eminönü, Rüstem Paşa, Fatih/İstanbul, Turkey)
F988+MM Abu Dhabi - United Arab Emirates
4MRV+87 Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia
_
2Q47+5C Addis Ababa, Ethiopia
2Q6W+9H Loja, Ecuador
9VHW+5R Amsterdam, Netherlands
34PR+7J Sleepy Hollow, New York, USA
QHRV+24 Kodiak, Alaska, USA
6W4F+8R Alexandria, Egypt
}
```

### Flag
`picoCTF{KODIAK_ALASKA}`

- - - 


# Tapping
Points: 200

## Problem
>Theres tapping coming in from the wires. What's it saying `nc 2019shell1.picoctf.com 37920`.


### Hint
>What kind of encoding uses dashes and dots? The flag is in the format PICOCTF{}

## Solution

1. Run  `nc 2019shell1.picoctf.com 37920`
2. Get the flag and use an online morse code decoder to decode the flag.

### Flag
`PICOCTF{M0RS3C0D31SFUN3960854397}`

- - - 

# la-cifra-de
Points: 200

## Problem
>I found this cipher in an old book. Can you figure out what it says? Connect with `nc 2019shell1.picoctf.com 60147`

### Hint
> There are tools that make this easy.

> Perhaps looking at history will help
## Solution
Ciphertext given is shown below. Apparently it is encoded by Vigenere cipher encryption. To solve this it can be easily brute-force by using online tools such as [this](https://www.guballa.de/vigenere-solver).

### Cipher Text
```
Ne iy nytkwpsznyg nth it mtsztcy vjzprj zfzjy rkhpibj nrkitt ltc tnnygy ysee itd tte cxjltk

Ifrosr tnj noawde uk siyyzre, yse Bnretèwp Cousex mls hjpn xjtnbjytki xatd eisjd

Iz bls lfwskqj azycihzeej yz Brftsk ip Volpnèxj ls oy hay tcimnyarqj dkxnrogpd os 1553 my Mnzvgs Mazytszf Merqlsu ny hox moup Wa inqrg ipl. Ynr. Gotgat Gltzndtg Gplrfdo 

Ltc tnj tmvqpmkseaznzn uk ehox nivmpr g ylbrj ts ltcmki my yqtdosr tnj wocjc hgqq ol fy oxitngwj arusahje fuw ln guaaxjytrd catizm tzxbkw zf vqlckx hizm ceyupcz yz tnj fpvjc hgqqpohzCZK{m311a50_0x_a1rn3x3_h1ah3xfmel1g3m}

Tnj qixxe wkqw-duhfmkseej ipsiwtpznzn uk l puqjarusahjeii htpnjc hubpvkw, hay rldk fcoaso 1467 be Qpot Gltzndtg Fwbkwei.

Zmp Volpnèxj Nivmpr ox ehkwpfuwp surptorps ifwlki ehk Fwbkwei Jndc uw Llhjcto Htpnjc.

It 1508, Ozhgsyey Ycizmpmozd itapnzjo tnj do-ifwlki eahzwa xjntg (f xazwtx uk dhokeej fwpnfmezx) ehgy
hoaqo lgypr hj l cxneiifw curaotjyt uk ehk Atgksèce Inahkw.

Merqlsu’x deityd htzkrje avupaxjo it 1555 fd a itytosfaznzn uk ehk ktryy. Ehk qzwkw saraps uk ehk fwpnfmezx lrk szw ymtfzjo rklflgwwy,
hze tnj llvmlbkyd ati ehk nydkc wezypry fce sniej gj mkfys uk l mtjxotnn kkd ahxfde, cmtcn hln hj oilkprkse woys eghs cuwceyuznjjyt.
```

### Encryption Key Brute-Force

> __`flag`(Key)__


### Plain Text 

```
It is interesting how in history people often receive credit for things they did not create

During the course of history, the Vigenère Cipher has been reinvented many times

It was falsely attributed to Blaise de Vigenère as it was originally described in 1553 by Giovan Battista Bellaso in his book La cifra del. Sig. Giovan Battista Bellaso 

For the implementation of this cipher a table is formed by sliding the lower half of an ordinary alphabet for an apparently random number of places with respect to the upper halfpicoCTF{b311a50_0r_v1gn3r3_c1ph3rabef1b3b}

The first well-documented description of a polyalphabetic cipher however, was made around 1467 by Leon Battista Alberti.

The Vigenère Cipher is therefore sometimes called the Alberti Disc or Alberti Cipher.

In 1508, Johannes Trithemius invented the so-called tabula recta (a matrix of shifted alphabets) that would later be a critical
component of the Vigenère Cipher.

Bellaso’s second booklet appeared in 1555 as a continuation of the first. The lower halves of the alphabets are now shifted regularly,
but the alphabets and the index letters are mixed by means of a mnemonic key phrase, which can be different with each correspondent.
```

### Flag
`picoCTF{b311a50_0r_v1gn3r3_c1ph3rabef1b3b}`

- - - 

# rsa-pop-quiz
Points: 200

## Problem
>Class, take your seats! It's PRIME-time for a quiz... `nc 2019shell1.picoctf.com 48028`

### Hint
>[RSA Info](https://simple.wikipedia.org/wiki/RSA_algorithm)

## Solution

1. [rsa-calculator](https://www.cs.drexel.edu/~jpopyack/IntroCS/HW/RSAWorksheet.html)
2. [toitient-calculator](http://www.kourbatov.com/math/calculators/eulertotientfunction.htm)

### Steps to encode/decode RSA

1. Find N as a product of `two prime numbers` p and q. N = p*q
2. 

### Concepts
1. Euler's totient function ϕ(n) - positive integers up to n that are relatively prime to n. Simply put it, no GCD between 2 numbers(except 1) means they are relatively prime.
    - if n = 9, ϕ(9) = { 1, 2, 4, 5, 7, 8 } = 6
    - if n = 16, ϕ(16) = { 1, 3, 5, 7, 9, 11, 13, 15 } = 9
2.
### Flag
`Flag`

- - - 

# waves over lambda
Points: 300

## Problem
>We made alot of substitutions to encrypt this. Can you decrypt it? Connect with `nc 2019shell1.picoctf.com 21903`.

### Hint
>Flag is not in the usual flag format

## Solution
Ciphertext given is shown below. Apparently it is encoded by substitution cipher encryption. To solve this it can be easily brute-force by using online tools such as [this](https://www.guballa.de/substitution-solver) or [this](https://planetcalc.com/8047/).

### Cipher Text
```
-------------------------------------------------------------------------------
vhweytfl bjyj ql ghxy sote - syjrxjwvg_ql_v_hpjy_otikmt_powbwtllfi 
-------------------------------------------------------------------------------
nj njyj whf ixvb ihyj fbtw t rxtyfjy hs tw bhxy hxf hs hxy lbqu fqoo nj ltn bjy lqwa, 
twm fbjw q xwmjylfhhm shy fbj sqylf fqij nbtf ntl ijtwf kg t lbqu shxwmjyqwe qw fbj ljt.  
q ixlf tvawhnojmej q btm btymog jgjl fh ohha xu nbjw fbj ljtijw fhom ij lbj ntl lqwaqwe; 
shy syhi fbj ihijwf fbtf fbjg ytfbjy uxf ij qwfh fbj khtf fbtw fbtf q iqebf kj ltqm fh eh qw, 
ig bjtyf ntl, tl qf njyj, mjtm nqfbqw ij, utyfog nqfb syqebf, utyfog nqfb bhyyhy hs iqwm, 
twm fbj fbhxebfl hs nbtf ntl gjf kjshyj ij.
```

### Encryption Key Brute-Force

> This clear text ... abcdefghijklmnopqrstuvwxyz

> maps to this cipher text... __`tkvmjsebqcaoiwhurylfxpnzgd`(Key)__


### Plain Text 

```
-------------------------------------------------------------------------------
congrats here is your flag - frequency_is_c_over_lambda_vlnhnasstm 
-------------------------------------------------------------------------------
we were not much more than a quarter of an hour out of our ship till we saw her sink, 
and then i understood for the first time what was meant by a ship foundering in the sea.  
i must acknowledge i had hardly eyes to look up when the seamen told me she was sinking; 
for from the moment that they rather put me into the boat than that i might be said to go in, 
my heart was, as it were, dead within me, partly with fright, partly with horror of mind, 
and the thoughts of what was yet before me.
```

### Flag
`picoCTF{frequency_is_c_over_lambda_vlnhnasstm}`

- - - 
