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
![Flag](https://github.com/johantannh/picoctf2019-writeup/blob/master/reversing/Images/3%20-%20roldVTt.png "Flag")

### Encryption Table : 
![Table](https://github.com/johantannh/picoctf2019-writeup/blob/master/reversing/Images/30%20-%20YPed2b4.jpg "Table")

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
>There are tools that make this easy. Perhaps looking at history will help

## Solution

```
-------------------------------------------------------------------------------
vhweytfl bjyj ql ghxy sote - syjrxjwvg_ql_v_hpjy_otikmt_powbwtllfi                                                      -------------------------------------------------------------------------------                                         nj njyj whf ixvb ihyj fbtw t rxtyfjy hs tw bhxy hxf hs hxy lbqu fqoo nj ltn bjy lqwa, twm fbjw q xwmjylfhhm shy fbj sqylf fqij nbtf ntl ijtwf kg t lbqu shxwmjyqwe qw fbj ljt.  q ixlf tvawhnojmej q btm btymog jgjl fh ohha xu nbjw fbj ljtijw fhom ij lbj ntl lqwaqwe; shy syhi fbj ihijwf fbtf fbjg ytfbjy uxf ij qwfh fbj khtf fbtw fbtf q iqebf kj ltqm fh eh qw, ig bjtyf ntl, tl qf njyj, mjtm nqfbqw ij, utyfog nqfb syqebf, utyfog nqfb bhyyhy hs iqwm, twm fbj fbhxebfl hs nbtf ntl gjf kjshyj ij.
```

### Flag
`Flag`

- - - 


# rsa-pop-quiz
Points: 200

## Problem
>Class, take your seats! It's PRIME-time for a quiz... ` 2019shell1.picoctf.com 48028`

### Hint
>[RSA Info](https://simple.wikipedia.org/wiki/RSA_algorithm)

## Solution

1. [rsa-calculator](https://www.cs.drexel.edu/~jpopyack/IntroCS/HW/RSAWorksheet.html)
2. [toitient-calculator](http://www.kourbatov.com/math/calculators/eulertotientfunction.htm)

1. `Y` 
```
p=60413
q=76753
n = p*q = 4636878989
```
2. `Y`
```
p = 54269
n = p*q = 5051846941
q = n/p = 93089
```
3. `N`
```
e = 3
n = 12738162802910546503821920886905393316386362759567480839428456525224226445173031635306683726182522494910808518920409019414034814409330094245825749680913204566832337704700165993198897029795786969124232138869784626202501366135975223827287812326250577148625360887698930625504334325804587329905617936581116392784684334664204309771430814449606147221349888320403451637882447709796221706470239625292297988766493746209684880843111138170600039888112404411310974758532603998608057008811836384597579147244737606088756299939654265086899096359070667266167754944587948695842171915048619846282873769413489072243477764350071787327913
```

4. 
```python
q = 66347
p = 12611
totient(n) = 836623060
```

5.
```python
pt= 6357294171489311547190987615544575133581967886499484091352661406414044440475205342882841236357665973431462491355089413710392273380203038793241564304774271529108729717
e=3
n=29129463609326322559521123136222078780585451208149138547799121083622333250646678767769126248182207478527881025116332742616201890576280859777513414460842754045651093593251726785499360828237897586278068419875517543013545369871704159718105354690802726645710699029936754265654381929650494383622583174075805797766685192325859982797796060391271817578087472948205626257717479858369754502615173773514087437504532994142632207906501079835037052797306690891600559321673928943158514646572885986881016569647357891598545880304236145548059520898133142087545369179876065657214225826997676844000054327141666320553082128424707948750331
```
### Flag
`Flag`

- - - 
