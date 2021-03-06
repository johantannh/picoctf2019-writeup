# The-Factory's-Secret 
Points: 1

## Problem
>There appear to be some mysterious glyphs hidden inside this [abandoned factory](https://2019game.picoctf.com/game)... I wonder what would happen if you collected them all?

### Hint
>Submit your answer in our competition's flag format. For example, if you answer was 'hello', you would submit 'picoCTF{hello}' as the flag

## Solution
Play the unity game on the picoCTF website, every location got a glyph, get all 6 to solve it.
| Challenges                                 | Solve     | Glyph Obtained |
|:-------------------------------------------|:-----------|:-------|
| Reverse Engineering                        | 2413         | Yes |
| Forensics                                  | Top right in the river | Yes |
| Cryptography                               | 5th from top, 5 to the right | Yes |
| Binary Exploit                             | R,B,R,B,R,B until yellow door | Yes |
| General Skills                             | Right infront | Yes |
| Web Exploit                                | Btm right, bottom wall has teleporter to top left | Yes |

Scan QR get password
password: xmfv53uqkf621gakvh502gxfu1g78glds

Go to starting computer, type in password and view message log. Theres a short funny message that comes out which tells you the secret.

### Flag
`picoCTF{zerozerozerozero}`

- - -
# 2Warm
Points: 50

## Problem
>Can you convert the number 42 (base 10) to binary (base 2)?

### Hint
>Submit your answer in our competition's flag format. For example, if you answer was '11111', you would submit 'picoCTF{11111}' as the flag.

## Solution
Use any dec to bin calculator

### Flag
`picoCTF{101010}`

- - -

# Lets-Warm-Up
Points: 50

## Problem
>If I told you a word started with 0x70 in hexadecimal, what would it start with in ASCII?

### Hint
>Submit your answer in our competition's flag format. For example, if you answer was 'hello', you would submit 'picoCTF{hello}' as the flag.

## Solution
Use online table to reference 0x70 to ascii.

### Flag
`picoCTF{p}`

- - -

# Warmed-Up
Points: 50

## Problem
>What is 0x3D (base 16) in decimal (base 10).

### Hint
>Submit your answer in our competition's flag format. For example, if you answer was '22', you would submit 'picoCTF{22}' as the flag.

## Solution
Use any hexa to dec calculator.

### Flag
`picoCTF{61}`

- - -



# Bases
Points: 100

## Problem
>What does this bDNhcm5fdGgzX3IwcDM1 mean? I think it has something to do with bases.

### Hint
>Submit your answer in our competition's flag format. For example, if you answer was 'hello', you would submit 'picoCTF{hello}' as the flag.

## Solution
Decode 'bDNhcm5fdGgzX3IwcDM1' from Base64 format 

### Flag
`picoCTF{l3arn_th3_r0p35}`

- - -

# First-Grep
Points: 100

## Problem
>Can you find the [flag](https://2019shell1.picoctf.com/static/c603b946e99b2f55debd8e2c0ab79df6/file) in file? This would be really tedious to look through manually, something tells me there is a better way. You can also find the file in /problems/first-grep_1_6788154ca7ee937f569985ff397203b6 on the shell server.

### Hint
>grep [tutorial](https://ryanstutorials.net/linuxtutorial/grep.php)

## Solution
1. Run `grep "picoCTF" file` to get the flag.

### Flag
`picoCTF{grep_is_good_to_find_things_205b65d7}`

- - -

# Resources
Points: 100

## Problem
>We put together a bunch of resources to help you out on our website! If you go over there, you might even find a flag! https://picoctf.com/resources (link)

## Solution
1. Visit https://picoctf.com/resources
2. The flag is on the page itself.

### Flag
`picoCTF{r3source_pag3_f1ag}`

- - -

# strings-it
Points: 100

## Problem
>Can you find the flag in [file](https://2019shell1.picoctf.com/static/f25587dade29bcf8a5b25042145ad9ed/strings) without running it? You can also find the file in /problems/strings-it_3_d2b2eb25dc5e3f3625810131832de295 on the shell server.

### Hint
>[strings](https://linux.die.net/man/1/strings)

## Solution
1. Run `strings` cmd  and `grep` cmd on the file downloaded 

### Flag
`picoCTF{r3source_pag3_f1ag}`

- - -

# whats-a-netcat?
Points: 100

## Problem
>Using netcat (nc) is going to be pretty important. Can you connect to 2019shell1.picoctf.com at port 32225 to get the flag?

### Hint
>nc [tutorial](https://linux.die.net/man/1/nc)

## Solution
1. Run `nc 2019shell1.picoctf.com 32225` to get the flag

### Flag
`picoCTF{nEtCat_Mast3ry_b1d25ece}`

- - -


# Based
Points: 200

## Problem
>To get truly 1337, you must understand different data encodings, such as hexadecimal or binary. Can you get the flag from this program to prove you are on the way to becoming 1337? Connect with `nc 2019shell1.picoctf.com 25180`.

### Hint
>I hear python can convert things. It might help to have multiple windows open

## Solution
1. Connect to the server by using the following cmd `nc 2019shell1.picoctf.com 25180`
2. Use a binary to word converter to get the 1st word
3. Use a octal to word converter to get the 2nd word
4. Use a hex to word converter to get the flag.

### Flag
`picoCTF{learning_about_converting_values_d57e7f86}`

- - -


# First-Grep-Part-II 
Points: 200

## Problem
>Can you find the flag in /problems/first-grep--part-ii_0_b68f6a4e9cb3a7aad4090dea9dd80ce1/files on the shell server? Remember to use grep.

### Hint
>grep [tutorial](https://ryanstutorials.net/linuxtutorial/grep.php)

## Solution
1. Change directory to the abovementioned directory
2. Run the following cmd `grep -r "picoCTF" .` to get the flag


### Flag
`picoCTF{grep_r_to_find_this_e4fa3ba7}`


- - -


# plumbing 
Points: 200

## Problem
>Sometimes you need to handle process data outside of a file. Can you find a way to keep the output from this program and search for the flag? Connect to 2019shell1.picoctf.com 9525.

### Hint
>Remember the flag format is picoCTF{XXXX}  What's a pipe? No not that kind of pipe... This [kind](http://www.linfo.org/pipes.html)

## Solution
1. Run `nc 2019shell1.picoctf.com 9525 > out.txt` and `grep` cmd to get the flag

### Flag
`picoCTF{digital_plumb3r_dd86d037}`
- - -

# whats-the-difference 
Points: 200

## Problem
>Can you spot the difference? [kitters](https://2019shell1.picoctf.com/static/473cf765877f28edf95140f90cd76b59/kitters.jpg) [cattos](https://2019shell1.picoctf.com/static/473cf765877f28edf95140f90cd76b59/cattos.jpg). They are also available at /problems/whats-the-difference_0_00862749a2aeb45993f36cc9cf98a47a on the shell server

### Hint
>How do you find the difference between two files? Dumping the data from a hex editor may make it easier to compare.

## Solution

> __HexViewer Plugin__ [Plugin Here](https://github.com/facelessuser/HexViewer)

> __Compare Side-By-Side__ [Plugin Here](https://github.com/DougTy/sublime-compare-side-by-side)
* Jump to next: `Alt+N`, Jump to previous: `Alt+P`

```
Run both file in sublime text and convert them with the `HexViewer` plugin. 
After Hex is obtain run 'Compare Side-By-Side' plugin in sublime text. 
The comparing process might take some time.
```
<img src="https://raw.githubusercontent.com/johantannh/picoctf2019-writeup/master/reversing/Images/29%20-%20GV0y9yX.gif" alt="Hex Dump in Sublime">

### Flag
`picoCTF{th3yr3_a5_d1ff3r3nt_4s_bu773r_4nd_j311y_aslkjfdsalkfslkflkjdsfdszmz10548}`

- - -

# where-is-the-file  
Points: 200

## Problem
>I've used a super secret mind trick to hide this file. Maybe something lies in /problems/where-is-the-file_2_f1aa319cafd4b55ee4a60c1ba65255e2.

### Hint
>What command can see/read files? What's in the manual page of ls?

## Solution
1. Change directory to the abovementioned directory
2. Run the following cmd `ls -la` to get the hidden file
3. Run the cat cmd on the file to get the flag.

### Flag
`picoCTF{w3ll_that_d1dnt_w0RK_30444bc6}`
- - -

# flag_shop 
Points: 300

## Problem
>There's a flag shop selling stuff, can you buy a flag? [Source](flag_shop/store.c). Connect with nc 2019shell1.picoctf.com 29250.

### Hint
>Two's compliment can do some weird things when numbers get really big!

## Solution
Analyze the code given to find out what it does. Basically is a shop that allows you to buy flag. There is a flaw in the system when you buy a flag. 
```c
account_balance = account_balance - total_cost;
```
In twos complement system, the MSB is the negative bit. Therefore just make the total_cost large enough until it becomes negative so that it adds to your account balance.

```
2
...
1
...
These knockoff Flags cost 900 each, enter desired quantity
2147468647

The final cost is: -13500900

Your current balance after transaction: 13502000
```
And based on the code found in 2., your account balance will be added and you will be rich enough to purchase the 1337 flag.


### Flag
`picoCTF{m0n3y_bag5_783740a8}`
- - -


# mus1c   
Points: 300

## Problem
>I wrote you a [song](https://2019shell1.picoctf.com/static/40f27dcc8a1fe070ee7cfc03140920aa/lyrics.txt) Put it in the picoCTF{} flag format

### Hint
>Do you think you can master rockstar?

## Solution
1. Go to https://codewithrockstar.com/
2. Go to try it tab and paste what is in the text file onto the page.
3. Click on "rock" and copy the output to an online ascii to text converter to get the flag.


### Flag
`picoCTF{rrrocknrn0113r}`
- - -
