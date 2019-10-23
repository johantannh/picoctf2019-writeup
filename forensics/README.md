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

# WhitePages
Points: 200

## Problem
>I stopped using YellowPages and moved onto WhitePages... but [the page they gave me](https://2019shell1.picoctf.com/static/6e6a95fce4c36be16c4c2eec55fdb8ab/whitepages.txt) is all blank!

### Hint


## Solution
1. Use a text editor such as Notepad++ to open the given file
2. Replace the unknown characters with 0
3. Replace the whitespaces with 1
4. Use an online binary to text decoder to decode the resulting binary string to get the flag.

### Flag
`picoCTF{not_all_spaces_are_created_equal_3bf40b869ee984866e67f3057f006a92}`

- - - 


# c0rrupt
Points: 250

## Problem
>We found this [file](https://2019shell1.picoctf.com/static/3435d990f1d20fe3563cbb897b4c96db/mystery). Recover the flag. You can also find the file in /problems/c0rrupt_0_1fcad1344c25a122a00721e4af86de13.

### Hint
>Try fixing the file header

## Solution
After examining a PNG image file from the picoCTF website E.g : 

<p align="center">
<img src="https://raw.githubusercontent.com/johantannh/picoctf2019-writeup/master/reversing/Images/3%20-%20roldVTt.png" alt="Flag Image">
</p>

The file header can be seen using a hex viewer : 

<p align="center">
<img src="https://raw.githubusercontent.com/johantannh/picoctf2019-writeup/master/reversing/Images/37%20-%20otEPtoo34.png" alt="Flag Header Image">
</p>

Using the file header as an example, arrange the original file header from this : 

<p align="center">
<img src="https://raw.githubusercontent.com/johantannh/picoctf2019-writeup/master/reversing/Images/38%20-%20UIef356s.png" alt="Original File Header Image">
</p>

to this format : 

<p align="center">
<img src="https://raw.githubusercontent.com/johantannh/picoctf2019-writeup/master/reversing/Images/36%20-%20sdETh43t.png" alt="Original File Header Image">
</p>

After editing the file header, save in hex editor and a new image will be obtain : 

<p align="center">
<img src="https://raw.githubusercontent.com/johantannh/picoctf2019-writeup/master/reversing/Images/1%20-%20CYP4e9C.png" alt="c0rrupt">
</p>

### Flag
`picoCTF{c0rrupt10n_1847995}`

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

Use a simple [python script](like1000/untar.py) to untar the file from 1000 to 0

The script done on python 3.6
```python
import tarfile

for i in range(1000, 0, -1):
  tf = tarfile.open(str(i)+".tar")
  tf.extractall()
```

Inside there are
1. [filler.txt](like1000/filler.txt)
2. [flag.png](like1000/flag.png)

### Flag
`picoCTF{l0t5_0f_TAR5}`

- - -

# m00nwalk
Points: 250

## Problem
>Decode this message from the moon. You can also find the file in /problems/m00nwalk_1_727ca48dac5da21d2c11635238649314.

### Hint
>How did pictures from the moon landing get sent back to Earth?
>What is the CMU mascot?, that might help select a RX option

## Solution


### Flag
`Flag`

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

# WebNet0
Points: 350

## Problem
>We found this [packet capture](WebNet0/capture.pcap) and [key](WebNet0/picopico.key). Recover the flag. You can also find the file in /problems/webnet0_0_363c0e92cf19b68e5b5c14efb37ed786.

### Hint
> Try using a tool like Wireshark

> How can you decrypt the TLS stream?

## Solution

1. Use wireshark
2. Edit > Preferences > Protocols > SSL
3. RSA keys list > Edit 
4. Fill in
    1. ip - 128.238.140.23
    2. port - 443
    3. protocol - tcp
    4. file - picopico.key
5. The stream will be decrypted. Now just follow the TLSv1.2 stream.
6. Pico-Flag header is the answer


### Flag
`picoCTF{nongshim.shrimp.crackers}`

- - -

# WebNet1
Points: 450

## Problem
>We found this [packet capture](WebNet1/capture.pcap) and [key](WebNet1/picopico.key). Recover the flag. You can also find the file in /problems/webnet1_0_d63b267c607b8fedbae100068e010422.

### Hint
> Try using a tool like Wireshark

> How can you decrypt the TLS stream?

## Solution

1. Use wireshark
2. Edit > Preferences > Protocols > SSL
3. RSA keys list > Edit 
4. Fill in
    1. ip - 128.237.140.23
    2. port - 443
    3. protocol - http
    4. file - picopico.key
5. The stream will be decrypted. You will notice there are some `HTTP` protocols 
6. Filter by `http` protocol(type `http` in the filter)
7. Look at packet 41 and 42. Under the packet breakdown(right below the packet window), Right click on `Line based text data: text/html` > Export packet bytes > [second.html](WebNet1/second.html)
8. Open second.html and notice that it is a web page with an image vulture.jpg
9. Similarly, filter by `http` and look for the `GET vulture.jpg` trailer packet(91).
10. Right click on `JPEG File Interchange Format` > Export packet bytes... > [vulture.jpg](WebNet1/vulture.jpg) . You will see the same image as seen in second.html
11. Right click on the `vulture.jpg` on your pc > Properties > details
12. The `authors` meta data has the flag.

Alternatively, you can Show packet bytes and view by `Hex Dump` or `ASCII`. Metadata of an image is always stored in the file header and that is where information can be hidden.


### Flag
`picoCTF{honey.roasted.peanuts}`

- - -
