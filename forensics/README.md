# Glory-of-the-Garden
Points: 50

## Problem
>This [garden](https://2019shell1.picoctf.com/static/4cb555b64c51e0be6ac482d422350f61/garden.jpg) contains more than it seems. You can also find the file in You can also find the file in /problems/glory-of-the-garden_6_0d6d3ea97757b84c7a51a38daa7dca8d on the shell server.

### Hint
>What is a hex editor?

## Solution
Solution here

### Flag
`Flag`

- - -

# unzip
Points: 50

## Problem
>Can you unzip this [file](https://2019shell1.picoctf.com/static/37762a7e5774d7d6c1bc79e8e1758ef9/flag.zip) and get the flag?

### Hint
>put the flag in the format picoCTF{XXXXX}

## Solution
Solution here

### Flag
`Flag`

- - -

# So Meta
Points: 150

## Problem
>Find the flag in this [picture](https://2019shell1.picoctf.com/static/a30c7f1637db2034e21b101e3aa0ecc0/pico_img.png). You can also find the file in /problems/so-meta_1_c8994cc94991979b60e80828d19f75bf.

### Hint
>What does meta mean in the context of files?
>Ever hear of metadata?

## Solution
Solution here

### Flag
`Flag`

- - -

# What Lies Within
Points: 150

## Problem
>Theres something in the [building](https://2019shell1.picoctf.com/static/2804fd0637f2ec556066880dd4ffb40e/buildings.png). Can you retrieve the flag?

### Hint
>There is data encoded somewhere, there might be an online decoder

## Solution
Solution here

### Flag
`Flag`

- - -

# extensions
Points: 150

## Problem
>This is a really weird text file [TXT](https://2019shell1.picoctf.com/static/abf4be47fd85ea3f6ed15b71c360fc6f/flag.txt)? Can you find the flag?

### Hint
>How do operating systems know what kind of file it is? (It's not just the ending!
>Make sure to submit the flag as picoCTF{XXXXX}

## Solution
Solution here

### Flag
`Flag`

- - -

# shark-on-wire-1
Points: 150

## Problem
>We found this [packet capture](https://2019shell1.picoctf.com/static/ae9ca8cff43ed638ed5d137f9ece7455/capture.pcap). Recover the flag. You can also find the file in /problems/shark-on-wire-1_0_606ee6b0b78f6987c7b12f43253b2d9b.

### Hint
>Try using a tool like Wireshark
>What are streams?

## Solution

Use this wireshark filter `udp.stream eq 6`

### Flag
`picoCTF{StaT31355_636f6e6e}`

- - -

# Based
Points: 200

## Problem
>To get truly 1337, you must understand different data encodings, such as hexadecimal or binary. Can you get the flag from this program to prove you are on the way to becoming 1337? Connect with nc 2019shell1.picoctf.com 62267.

### Hint
>I hear python can convert things.
>It might help to have multiple windows open

## Solution
Solution here

### Flag
`Flag`

- - - 

# like1000
Points: 250

## Problem
>This [.tar file](https://2019shell1.picoctf.com/static/8694f84879d3b7c0dcf775930f4665fc/1000.tar) got tarred alot. Also available at /problems/like1000_0_369bbdba2af17750ddf10cc415672f1c.

### Hint
>Try and script this, it'll save you alot of time

## Solution

1. Inspect the hex value and notice that there are many tar files.
2. Each tar file name decreases by 1 value

Use a simple python script to untar the file from 1000 to 0

The script done on python 3.6
```python
import tarfile

for i in range(1000, 0, -1):
  tf = tarfile.open(str(i)+".tar")
  tf.extractall()
```

Inside there are
1. filler.txt
2. flag.png

### Flag
`picoCTF{l0t5_0f_TAR5}`

- - -

# shark-on-wire-2
Points: 300

## Problem
>We found this [packet capture](https://2019shell1.picoctf.com/static/dcd259894e0efe9d6e91da2af47e6369/capture.pcap). Recover the flag that was pilfered from the network. You can also find the file in /problems/shark-on-wire-2_0_3e92bfbdb2f6d0e25b8d019453fdbf07.

### Hint


## Solution

1. Use wireshark filter `udp.port == 22`. Notice it forms a unique value
2. Use a script to extract all src port, strip the value and convert back to ascii

### Flag
`picoCTF{p1LLf3r3d_data_v1a_st3g0}`

- - -