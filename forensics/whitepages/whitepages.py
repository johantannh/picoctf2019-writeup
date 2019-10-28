import locale
import binascii

locale.getpreferredencoding()
binstr=""
with open("whitepages.txt", "rb") as f:
  while True:
    c = f.read(1)
    #print(c)
    if not c:
      print("end")
      break
    #if (len(binstr) % 9 == 0):
    #  binstr = binstr + " "
    if c is b'\x20':
      binstr += "1" 
    else:
      # read E2 80 83, then replace the 3 bytes as a single 0
      c = f.read(2)
      binstr += "0"
print(binstr)

# convert binary to number
n = int(binstr, 2)
hex_string = '%x' % n
len_of_str = len(hex_string)
transformed_text = binascii.unhexlify(hex_string.zfill(len_of_str + (len_of_str & 1)))
print(transformed_text.decode().encode('ascii',errors='ignore'))


