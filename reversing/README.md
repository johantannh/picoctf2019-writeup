# vault-door-training
Points: 50

## Problem
>Your mission is to enter Dr. Evil's laboratory and retrieve the blueprints for his Doomsday Project. The laboratory is protected by a series of locked vault doors. Each door is controlled by a computer and requires a password to open. Unfortunately, our undercover agents have not been able to obtain the secret passwords for the vault doors, but one of our junior agents obtained the source code for each vault's computer! You will need to read the source code for each level to figure out what the password is for that vault door. As a warmup, we have created a replica vault in our training facility. The source code for the training vault is here: [VaultDoorTraining.java](VaultDoorTraining.java)

### Hint
>The password is revealed in the program's source code.

## Solution
Password can be found within the checkPassword method. The password entered would just be used to compare with the password set within the checkPassword method. Hence the flag is 'w4rm1ng_Up_w1tH_jAv4_87f51143e4b'.

```
public boolean checkPassword(String password) {
        return password.equals("w4rm1ng_Up_w1tH_jAv4_87f51143e4b");
    }
```

### Flag
`picoCTF{w4rm1ng_Up_w1tH_jAv4_87f51143e4b}`

- - -

# vault-door-1
Points: 100

## Problem
>This vault uses some complicated arrays! I hope you can make sense of it, special agent. The source code for this vault is here: [VaultDoor1.java](VaultDoor1.java)

### Hint
>Look up the charAt() method online.

## Solution
Same as the previous task, the password is within the checkPassword method. Upon looking up the source code for the vaultDoor1.java, the new checkPassword method tries to scan each character of the password input into the program. The sequence and the indexing of the password are obfuscated to increase the difficulty of decoding the password. 

Length of Password = 32. 

```java
public boolean checkPassword(String password) {
        return password.length() == 32 &&
               password.charAt(0)  == 'd' &&
               password.charAt(29) == 'f' &&
               password.charAt(4)  == 'r' &&
               password.charAt(2)  == '5' &&
               password.charAt(23) == 'r' &&
               password.charAt(3)  == 'c' &&
               password.charAt(17) == '4' &&
               password.charAt(1)  == '3' &&
               password.charAt(7)  == 'b' &&
               password.charAt(10) == '_' &&
               password.charAt(5)  == '4' &&
               password.charAt(9)  == '3' &&
               password.charAt(11) == 't' &&
               password.charAt(15) == 'c' &&
               password.charAt(8)  == 'l' &&
               password.charAt(12) == 'H' &&
               password.charAt(20) == 'c' &&
               password.charAt(14) == '_' &&
               password.charAt(6)  == 'm' &&
               password.charAt(24) == '5' &&
               password.charAt(18) == 'r' &&
               password.charAt(13) == '3' &&
               password.charAt(19) == '4' &&
               password.charAt(21) == 'T' &&
               password.charAt(16) == 'H' &&
               password.charAt(27) == '3' &&
               password.charAt(30) == '3' &&
               password.charAt(25) == '_' &&
               password.charAt(22) == '3' &&
               password.charAt(28) == 'e' &&
               password.charAt(26) == '6' &&
               password.charAt(31) == 'a';
    }
```

To retrieve the password, 
- Method 1 : Either run the same code on a new console application, replace 'password.chartAt(' with a temp variables
- Method 2 : Use notepad++ with line operation to re-arrange the lines according to the index number to retreive the flag for this problem. 

##### Run Code Via IDE [Method 1](https://repl.it/@x3sphiorx/vd1)

```java
class Main {
  public static void main(String[] args) {
    printPassword();
  }

  public static void printPassword(){
    char[] temp = new char[32];
    temp[0] = 'd';
    temp[29] = 'f';
    temp[4] = 'r';
    temp[2] = '5';
    temp[23] = 'r';
    temp[3] = 'c';
    temp[17] = '4';
    temp[1] = '3';
    temp[7] = 'b';
    temp[10] = '_';
    temp[5] = '4';
    temp[9] = '3';
    temp[11] = 't';
    temp[15] = 'c';
    temp[8] = 'l';
    temp[12] = 'H';
    temp[20] = 'c';
    temp[14] = '_';
    temp[6] = 'm';
    temp[24] = '5';
    temp[18] = 'r';
    temp[13] = '3';
    temp[19] = '4';
    temp[21] = 'T';
    temp[16] = 'H';
    temp[27] = '3';
    temp[30] = '3';
    temp[25] = '_';
    temp[22] = '3';
    temp[28] = 'e';
    temp[26] = '6';
    temp[31] = 'a';

    String t = "picoCTF{";
	
    for (char x : temp){
		t += x;
    }

    t += "}";
	
    System.out.println(t);
  }
}
```

##### Arrange Using Notepad++ & Excel [Method 2]()


### Flag
`picoCTF{d35cr4mbl3_tH3_cH4r4cT3r5_63ef3a}`

- - -

# vault-door-3
Points: 200

## Problem
This vault uses for-loops and byte arrays. The source code for this vault is here: [VaultDoor3.java](VaultDoor3.java)

### Hint
>Make a table that contains each value of the loop variables and the corresponding buffer index that it writes to.

## Solution [Here](https://repl.it/@x3sphiorx/vd3)

### Process of Encryption

<p align="center">
<img src="https://i.imgur.com/9dBCUK1.png" alt="Encryption Process" width="500">
</p>

```java
import java.util.Scanner;

class Main {
  static String CipherText = "jU5t_a_sna_3lpm13gc49_u_4_m0rf41";

  public static void main(String[] args) {
    
    System.out.println("Cipher password: " + CipherText);

    String pass = reversePassword(CipherText);

    String userInput = "picoCTF{" + pass + "}";
  
    System.out.println("Enter password: " + userInput);

    String input = userInput.substring("picoCTF{".length(), userInput.length() - 1);

    if (checkPassword(input)) {
      System.out.println("Access granted.");
    } else {
      System.out.println("Access denied!");
    }
  }

  public static boolean checkPassword(String password) {
    char[] buffer = new char[32];
    int i;

    if (password.length() != 32) {
      return false;
    }

    for (i = 0; i < 8; i++) {
      buffer[i] = password.charAt(i);
    }
    for (; i < 16; i++) {
      buffer[i] = password.charAt(23 - i);
    }
    for (; i < 32; i += 2) {
      buffer[i] = password.charAt(46 - i);
    }
    for (i = 31; i >= 17; i -= 2) {
      buffer[i] = password.charAt(i);
    }

    String s = new String(buffer);

    return s.equals("jU5t_a_sna_3lpm13gc49_u_4_m0rf41");
  }


  public static String reversePassword(String password) {
    char[] buffer = new char[32];
    int i;

    for (i = 0; i < 8; i++) {
      buffer[i] = password.charAt(i);
    }
    for (; i < 16; i++) {
      buffer[i] = password.charAt(23 - i);
    }
    for (; i < 32; i += 2) {
      buffer[i] = password.charAt(46 - i);
    }
    for (i = 31; i >= 17; i -= 2) {
      buffer[i] = password.charAt(i);
    }

    return new String(buffer);
  }
}
```
### Flag
`picoCTF{jU5t_a_s1mpl3_an4gr4m_4_u_90cf31}`

```
Cipher password: jU5t_a_sna_3lpm13gc49_u_4_m0rf41
Enter password: picoCTF{jU5t_a_s1mpl3_an4gr4m_4_u_90cf31}
Access granted.
```
- - -

# vault-door-4
Points: 250

## Problem
This vault uses ASCII encoding for the password. The source code for this vault is here: [VaultDoor4.java](VaultDoor4.java)

### Hint
>Use a search engine to find an "ASCII table".

>You will also need to know the difference between octal, decimal, and hexademical numbers.

## Solution [Here](https://repl.it/@x3sphiorx/vd4)
```java
public static boolean checkPassword(String password) {
    byte[] passBytes = password.getBytes();
    byte[] myBytes = { 
      106, 85, 53, 116, 95, 52, 95, 98, 
      0x55, 0x6e, 0x43, 0x68, 0x5f, 0x30, 0x66, 0x5f, 
      0142, 0131, 0164, 063, 0163, 0137, 063, 0141, 
      '7', '2', '4', 'c', '8', 'f', '9', '2', 
      };
    /*
    Password is within myBytes. Just convert them from decimal, 
    hex, octal to ASCII. This will result in 
    decimal :  106, 85, 53, 116, 95, 52, 95, 98 >> jU5t_4_b 
    hex :  0x55, 0x6e, 0x43, 0x68, 0x5f, 0x30, 0x66, 0x5f >> UnCh_0f_ 
    oct : 0142, 0131, 0164, 063, 0163, 0137, 063, 0141 >> bYt3s_3a (convert decimal then hex)
    ASCII : '7', '2', '4', 'c', '8', 'f', '9', '2' >> 724c8f92 
    Combine : jU5t_4_bUnCh_0f_bYt3s_3a724c8f92
    https://www.rapidtables.com/convert/number/ascii-hex-bin-dec-converter.html
    */
    for (int i = 0; i < 32; i++) {
      if (passBytes[i] != myBytes[i]) {
        return false;
      }
    }
    return true;
  }
```

### Flag
`picoCTF{jU5t_4_bUnCh_0f_bYt3s_3a724c8f92}`

- - -

# vault-door-5
Points: 300

## Problem
In the last challenge, you mastered octal (base 8), decimal (base 10), and hexadecimal (base 16) numbers, but this vault door uses a different change of base as well as URL encoding! The source code for this vault is here: [VaultDoor5.java](VaultDoor5.java)

### Hint
>You may find an encoder/decoder tool helpful, such as https://encoding.tools/

>Read the wikipedia articles on URL encoding and base 64 encoding to understand how they work and what the results look like.

## Solution [Here](https://repl.it/@x3sphiorx/vd5)
```java
import java.net.URLDecoder;
import java.util.*;
import java.nio.charset.StandardCharsets;
import java.io.UnsupportedEncodingException;

class Main {
  public static String expected = 
			"JTYzJTMwJTZlJTc2JTMzJTcyJTc0JTMxJTZlJTY3JTVm"
                        + "JTY2JTcyJTMwJTZkJTVmJTYyJTYxJTM1JTY1JTVmJTM2"
                        + "JTM0JTVmJTY0JTYxJTM4JTM4JTMyJTY0JTMwJTMx";

  public static void main(String[] args) {

    //Encode from URL > Base 64
    //Decode from Base 64 > URL
    System.out.println("Expected : " + expected);
    
    String b64d = base64Decode(expected);
    System.out.println("Expected URL : " + b64d.toString());
    
    String urlDecoded = urlDecode(b64d);
    System.out.println("Expected password : " + urlDecoded);


    String userInput = "picoCTF{" + urlDecoded + "}";
    System.out.println("Enter vault password: " + userInput);

    String input = userInput.substring("picoCTF{".length(), userInput.length() - 1);

    if (checkPassword(input)) {
      System.out.println("Access granted.");
    } else {
      System.out.println("Access denied!");
    }
  }

  // Minion #7781 used base 8 and base 16, but this is base 64, which is
  // like... eight times stronger, right? Riiigghtt? Well that's what my twin
  // brother Minion #2415 says, anyway.
  //
  // -Minion #2414
  public static String base64Encode(byte[] input) {
    return Base64.getEncoder().encodeToString(input);
  }

  public static String base64Decode(String input) {
    byte[] bytes = Base64.getDecoder().decode(input);
    String s = new String(bytes);
    return s;
  }

  // URL encoding is meant for web pages, so any double agent spies who steal
  // our source code will think this is a web site or something, defintely not
  // vault door! Oh wait, should I have not said that in a source code
  // comment?
  //
  // -Minion #2415
  public static String urlEncode(byte[] input) {
    StringBuffer buf = new StringBuffer();
    for (int i = 0; i < input.length; i++) {
      buf.append(String.format("%%%2x", input[i]));
    }
    return buf.toString();
  }

    public static String urlDecode(String urlString) {
    try {
            return URLDecoder.decode(urlString, StandardCharsets.UTF_8.toString());
        } catch (UnsupportedEncodingException ex) {
            throw new RuntimeException(ex.getCause());
        }
  }

  public static boolean checkPassword(String password) {
    String urlEncoded = urlEncode(password.getBytes());
    String base64Encoded = base64Encode(urlEncoded.getBytes());

    return base64Encoded.equals(expected);
  }
}
```
### Flag
`picoCTF{c0nv3rt1ng_fr0m_ba5e_64_da882d01}`

```
Expected : JTYzJTMwJTZlJTc2JTMzJTcyJTc0JTMxJTZlJTY3JTVmJTY2JTcyJTMwJTZkJTVmJTYyJTYxJTM1JTY1JTVmJTM2JTM0JTVmJTY0JTYxJTM4JTM4JTMyJTY0JTMwJTMx
Expected URL : %63%30%6e%76%33%72%74%31%6e%67%5f%66%72%30%6d%5f%62%61%35%65%5f%36%34%5f%64%61%38%38%32%64%30%31
Expected password : c0nv3rt1ng_fr0m_ba5e_64_da882d01
Enter vault password: picoCTF{c0nv3rt1ng_fr0m_ba5e_64_da882d01}
Access granted.
```
- - -

# vault-door-6
Points: 350

## Problem
This vault uses an XOR encryption scheme. The source code for this vault is here: [VaultDoor6.java](VaultDoor6.java)

### Hint
>If X ^ Y = Z, then Z ^ Y = X. Write a program that decrypts the flag based on this fact.

## Solution [Here](https://repl.it/@x3sphiorx/vd6)
```java
class Main {
  public static byte[] myBytes = { 
    0x3b, 0x65, 0x21, 0x0a, 0x38, 0x00 , 0x36, 0x1d,
    0x0a, 0x3d, 0x61, 0x27, 0x11, 0x66, 0x27, 0x0a,
    0x21, 0x1d, 0x61, 0x3b, 0x0a , 0x2d, 0x65, 0x27,
    0x0a, 0x66, 0x61, 0x6d, 0x61, 0x30, 0x37, 0x36,
  };

  public static void main(String[] args) {

    String s = new String(myBytes);

    System.out.println("Pre Reverse Password Converted From Bytes : " + s.replaceAll("[\\n\\r]", ""));

    byte[] myPassBytes = new byte[32];

    byte byte_operand = 0x55;

    int i = 0;
    for (byte b : myBytes) {
      myPassBytes[i] = (byte) ((int) b ^ (int) byte_operand);
      i++;
    }

    String userInput = "picoCTF{";
     userInput += new String(myPassBytes).replaceAll("[\\n\\r]", "");
     userInput +="}";

    System.out.println("Reverse Password: " + userInput);

    System.out.println("Enter vault password:" + userInput);

    String input = userInput.substring("picoCTF{".length(), userInput.length() -
    1);

    if (checkPassword(input)) {
    System.out.println("Access granted.");
    } else {
    System.out.println("Access denied!");
    }
  }

  public static boolean checkPassword(String password) {
    if (password.length() != 32) {
      return false;
    }
    byte[] passBytes = password.getBytes();

    /*
     * Encryption part is within this loop, where every byte is XOR with the
     * password to check if it match.
     * 
     * Since X ^ Y = Z, then Z ^ Y = X.
     * 
     */
    for (int i = 0; i < 32; i++) {
      if (((passBytes[i] ^ 0x55) - myBytes[i]) != 0) {
        return false;
      }
    }
    return true;
  }
}
```

### Flag
`picoCTF{n0t_mUcH_h4rD3r_tH4n_x0r_3484ebc}`

```
Pre Reverse Password Converted From Bytes : ;e!86=a'f'!a;-e'fama076
Reverse Password: picoCTF{n0t_mUcH_h4rD3r_tH4n_x0r_3484ebc}
Enter vault password:picoCTF{n0t_mUcH_h4rD3r_tH4n_x0r_3484ebc}
Access granted.
```
- - -

# vault-door-7
Points: 400

## Problem
This vault uses bit shifts to convert a password string into an array of integers. Hurry, agent, we are running out of time to stop Dr. Evil's nefarious plans! The source code for this vault is here: [VaultDoor7.java](VaultDoor7.java)

### Hint
>Use a decimal/hexademical converter such as this one: https://www.mathsisfun.com/binary-decimal-hexadecimal-converter.html

>You will also need to consult an ASCII table such as this one: https://www.asciitable.com/

## Solution [Here](https://repl.it/@x3sphiorx/vd7)

```java
import java.util.*;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import java.security.*;

class Main {
  public static void main(String args[]) {

    String userInput = "picoCTF{";
    userInput += breakPassword();
    userInput += "}";

    System.out.println("Reverse Password: " + userInput);

    System.out.println("Enter vault password: " + userInput);
    String input = userInput.substring("picoCTF{".length(), userInput.length() - 1);

    if (checkPassword(input)) {
      System.out.println("Access granted.");
    } else {
      System.out.println("Access denied!");
    }
  }

  // Each character can be represented as a byte value using its
  // ASCII encoding. Each byte contains 8 bits, and an int contains
  // 32 bits, so we can "pack" 4 bytes into a single int. Here's an
  // example: if the hex string is "01ab", then those can be
  // represented as the bytes {0x30, 0x31, 0x61, 0x62}. When those
  // bytes are represented as binary, they are:
  //
  // 0x30: 00110000
  // 0x31: 00110001
  // 0x61: 01100001
  // 0x62: 01100010
  //
  // If we put those 4 binary numbers end to end, we end up with 32
  // bits that can be interpreted as an int.
  //
  // 00110000001100010110000101100010 -> 808542562
  //
  // Since 4 chars can be represented as 1 int, the 32 character password can
  // be represented as an array of 8 ints.
  //
  // - Minion #7816
  public static int[] passwordToIntArray(String hex) {
    int[] x = new int[8];
    byte[] hexBytes = hex.getBytes();
    for (int i = 0; i < 8; i++) {
      x[i] = hexBytes[i * 4] << 24 | hexBytes[i * 4 + 1] << 16 | hexBytes[i * 4 + 2] << 8 | hexBytes[i * 4 + 3];
    }
    return x;
  }

  public static boolean checkPassword(String password) {
    if (password.length() != 32) {
      return false;
    }
    int[] x = passwordToIntArray(password);
    return x[0] == 1096770097 // 0x415F6231 = 01000001 01011111 01100010 00110001
        && x[1] == 1952395366 // 0x745F3066 = 01110100 01011111 00110000 01100110
        && x[2] == 1600270708 // 0x5F623174 = 01011111 01100010 00110001 01110100
        && x[3] == 1601398833 // 0x5F736831 = 01011111 01110011 01101000 00110001
        && x[4] == 1716808014 // 0x6654694E = 01100110 01010100 01101001 01001110
        && x[5] == 1734293815 // 0x675F3937 = 01100111 01011111 00111001 00110111
        && x[6] == 1667379558 // 0x63623166 = 01100011 01100010 00110001 01100110
        && x[7] == 859191138; // 0x33363762 = 00110011 00110110 00110111 01100010
  }

  //Reverse the password by first converting the int > hex > ASCII
  //Append the bits of the password by using string builder 
  public static String breakPassword() {

    int[] x = new int[8];

    x[0] = 1096770097;
    x[1] = 1952395366;
    x[2] = 1600270708;
    x[3] = 1601398833;
    x[4] = 1716808014;
    x[5] = 1734293815;
    x[6] = 1667379558;
    x[7] = 859191138;

    StringBuilder cOutput = new StringBuilder("");

    for (int temp : x) {
      String decrypted = hexToAscii(Integer.toHexString(temp));
      cOutput.append(decrypted);
    }

    return cOutput.toString();
  }

  private static String hexToAscii(String hexStr) {
    StringBuilder output = new StringBuilder("");

    for (int i = 0; i < hexStr.length(); i += 2) {
      String str = hexStr.substring(i, i + 2);
      output.append((char) Integer.parseInt(str, 16));
    }

    return output.toString();
  }

}
```


### Flag
`picoCTF{A_b1t_0f_b1t_sh1fTiNg_97cb1f367b}`

```
Reverse Password: picoCTF{A_b1t_0f_b1t_sh1fTiNg_97cb1f367b}
Enter vault password: picoCTF{A_b1t_0f_b1t_sh1fTiNg_97cb1f367b}
Access granted.
```
- - -

# vault-door-8
Points: 450

## Problem
Apparently Dr. Evil's minions knew that our agency was making copies of their source code, because they intentionally sabotaged this source code in order to make it harder for our agents to analyze and crack into! The result is a quite mess, but I trust that my best special agent will find a way to solve it. The source code for this vault is here: [VaultDoor8.java](VaultDoor8.java)

### Hint
>Clean up the source code so that you can read it and understand what is going on.

>Draw a diagram to illustrate which bits are being switched in the scramble() method, then figure out a sequence of bit switches to undo it. You should be able to reuse the switchBits() method as is.

## Solution [Here](https://repl.it/@x3sphiorx/vd8)

### Code In Obfuscated Form.
```java
// These pesky special agents keep reverse engineering our source code and then
// breaking into our secret vaults. THIS will teach those sneaky sneaks a
// lesson.
//
// -Minion #0891
import java.util.*; import javax.crypto.Cipher; import javax.crypto.spec.SecretKeySpec;
import java.security.*; class VaultDoor8 {public static void main(String args[]) {
Scanner b = new Scanner(System.in); System.out.print("Enter vault password: ");
String c = b.next(); String f = c.substring(8,c.length()-1); VaultDoor8 a = new VaultDoor8(); if (a.checkPassword(f)) {System.out.println("Access granted."); }
else {System.out.println("Access denied!"); } } public char[] scramble(String password) {/* Scramble a password by transposing pairs of bits. */
char[] a = password.toCharArray(); for (int b=0; b<a.length; b++) {char c = a[b]; c = switchBits(c,1,2); c = switchBits(c,0,3); /* c = switchBits(c,14,3); c = switchBits(c, 2, 0); */ c = switchBits(c,5,6); c = switchBits(c,4,7);
c = switchBits(c,0,1); /* d = switchBits(d, 4, 5); e = switchBits(e, 5, 6); */ c = switchBits(c,3,4); c = switchBits(c,2,5); c = switchBits(c,6,7); a[b] = c; } return a;
} public char switchBits(char c, int p1, int p2) {/* Move the bit in position p1 to position p2, and move the bit
that was in position p2 to position p1. Precondition: p1 < p2 */ char mask1 = (char)(1 << p1);
char mask2 = (char)(1 << p2); /* char mask3 = (char)(1<<p1<<p2); mask1++; mask1--; */ char bit1 = (char)(c & mask1); char bit2 = (char)(c & mask2); /* System.out.println("bit1 " + Integer.toBinaryString(bit1));
System.out.println("bit2 " + Integer.toBinaryString(bit2)); */ char rest = (char)(c & ~(mask1 | mask2)); char shift = (char)(p2 - p1); char result = (char)((bit1<<shift) | (bit2>>shift) | rest); return result;
} public boolean checkPassword(String password) {char[] scrambled = scramble(password); char[] expected = {
0xF4, 0xC0, 0x97, 0xF0, 0x77, 0x97, 0xC0, 0xE4, 0xF0, 0x77, 0xA4, 0xD0, 0xC5, 0x77, 0xF4, 0x86, 0xD0, 0xA5, 0x45, 0x96, 0x27, 0xB5, 0x77, 0xE1, 0xC0, 0xA4, 0x95, 0x94, 0xD1, 0x95, 0x94, 0xD0 }; return Arrays.equals(scrambled, expected); } }
```

### Code After Beautify 

```java
// These pesky special agents keep reverse engineering our source code and then
// breaking into our secret vaults. THIS will teach those sneaky sneaks a
// lesson.
//
// -Minion #0891
import java.util.*;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import java.security.*;
class VaultDoor8 {
 public static void main(String args[]) {
  Scanner b = new Scanner(System.in);
  System.out.print("Enter vault password: ");
  String c = b.next();
  String f = c.substring(8, c.length() - 1);
  VaultDoor8 a = new VaultDoor8();
  if (a.checkPassword(f)) {
   System.out.println("Access granted.");
  } else {
   System.out.println("Access denied!");
  }
 }
 public char[] scramble(String password) {
  /* Scramble a password by transposing pairs of bits. */
  char[] a = password.toCharArray();
  for (int b = 0; b < a.length; b++) {
   char c = a[b];
   c = switchBits(c, 1, 2);
   c = switchBits(c, 0, 3); /* c = switchBits(c,14,3); c = switchBits(c, 2, 0); */
   c = switchBits(c, 5, 6);
   c = switchBits(c, 4, 7);
   c = switchBits(c, 0, 1); /* d = switchBits(d, 4, 5); e = switchBits(e, 5, 6); */
   c = switchBits(c, 3, 4);
   c = switchBits(c, 2, 5);
   c = switchBits(c, 6, 7);
   a[b] = c;
  }
  return a;
 }
 public char switchBits(char c, int p1, int p2) {
  /* Move the bit in position p1 to position p2, and move the bit
  that was in position p2 to position p1. Precondition: p1 < p2 */
  char mask1 = (char)(1 << p1);
  char mask2 = (char)(1 << p2); /* char mask3 = (char)(1<<p1<<p2); mask1++; mask1--; */
  char bit1 = (char)(c & mask1);
  char bit2 = (char)(c & mask2);
  /* System.out.println("bit1 " + Integer.toBinaryString(bit1));
System.out.println("bit2 " + Integer.toBinaryString(bit2)); */
  char rest = (char)(c & ~(mask1 | mask2));
  char shift = (char)(p2 - p1);
  char result = (char)((bit1 << shift) | (bit2 >> shift) | rest);
  return result;
 }
 public boolean checkPassword(String password) {
  char[] scrambled = scramble(password);
  char[] expected = {
   0xF4, 0xC0, 0x97, 0xF0, 0x77, 0x97, 0xC0, 0xE4,
   0xF0, 0x77, 0xA4, 0xD0, 0xC5, 0x77, 0xF4, 0x86,
   0xD0, 0xA5, 0x45, 0x96, 0x27, 0xB5, 0x77, 0xE1,
   0xC0, 0xA4, 0x95, 0x94, 0xD1, 0x95, 0x94, 0xD0
  };
  return Arrays.equals(scrambled, expected);
 }
}
```


### After reversing the order of Scramble Method 

```java

// These pesky special agents keep reverse engineering our source code and then
// breaking into our secret vaults. THIS will teach those sneaky sneaks a
// lesson.
//
// -Minion #0891
import java.util.*;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import java.security.*;

class Main {
  public static void main(String[] args) {

    String userInput = "picoCTF{";
    userInput += String.valueOf(unScramble());
    userInput += "}";

    System.out.println("Reverse Password: " + userInput);

    System.out.println("Enter vault password: " + userInput);
    String input = userInput.substring("picoCTF{".length(), userInput.length() - 1);

    if (checkPassword(input)) {
      System.out.println("Access granted.");
    } else {
      System.out.println("Access denied!");
    }
  }

  // reverse the order of the scramble methhod.
  // E.g. 1>2>3>4>5 ===> 5>4>3>2>1
  public static char[] unScramble() {
    /* Scramble a password by transposing pairs of bits. */
    // char[] a = password.toCharArray();
    char[] expected = { 0xF4, 0xC0, 0x97, 0xF0, 0x77, 0x97, 0xC0, 0xE4, 0xF0, 0x77, 0xA4, 0xD0, 0xC5, 0x77, 0xF4, 0x86,
        0xD0, 0xA5, 0x45, 0x96, 0x27, 0xB5, 0x77, 0xE1, 0xC0, 0xA4, 0x95, 0x94, 0xD1, 0x95, 0x94, 0xD0 };
    for (int b = 0; b < expected.length; b++) {
      char c = expected[b];
      c = switchBits(c, 6, 7);
      c = switchBits(c, 2, 5);
      c = switchBits(c, 3, 4);
      c = switchBits(c, 0, 1);
      /* d = switchBits(d, 4, 5); e = switchBits(e, 5, 6); */
      c = switchBits(c, 4, 7);
      c = switchBits(c, 5, 6);
      c = switchBits(c, 0, 3);
      /* c = switchBits(c,14,3); c = switchBits(c, 2, 0); */
      c = switchBits(c, 1, 2);

      expected[b] = c;
    }
    return expected;
  }

  public static char[] scramble(String password) {
    /* Scramble a password by transposing pairs of bits. */
    char[] a = password.toCharArray();
    for (int b = 0; b < a.length; b++) {
      char c = a[b];
      c = switchBits(c, 1, 2);
      c = switchBits(c, 0, 3); /* c = switchBits(c,14,3); c = switchBits(c, 2, 0); */
      c = switchBits(c, 5, 6);
      c = switchBits(c, 4, 7);
      c = switchBits(c, 0, 1); /* d = switchBits(d, 4, 5); e = switchBits(e, 5, 6); */
      c = switchBits(c, 3, 4);
      c = switchBits(c, 2, 5);
      c = switchBits(c, 6, 7);
      a[b] = c;
    }
    return a;
  }

  public static char switchBits(char c, int p1, int p2) {
    /*
     * Move the bit in position p1 to position p2, and move the bit that was in
     * position p2 to position p1. Precondition: p1 < p2
     */
    char mask1 = (char) (1 << p1);
    char mask2 = (char) (1 << p2);
    /* char mask3 = (char)(1<<p1<<p2); mask1++; mask1--; */
    char bit1 = (char) (c & mask1);
    char bit2 = (char) (c & mask2);
    /*
     * System.out.println("bit1 " + Integer.toBinaryString(bit1));
     * System.out.println("bit2 " + Integer.toBinaryString(bit2));
     */
    char rest = (char) (c & ~(mask1 | mask2));
    char shift = (char) (p2 - p1);
    char result = (char) ((bit1 << shift) | (bit2 >> shift) | rest);
    return result;
  }

  public static boolean checkPassword(String password) {
    char[] scrambled = scramble(password);
    char[] expected = { 0xF4, 0xC0, 0x97, 0xF0, 0x77, 0x97, 0xC0, 0xE4, 0xF0, 0x77, 0xA4, 0xD0, 0xC5, 0x77, 0xF4, 0x86,
        0xD0, 0xA5, 0x45, 0x96, 0x27, 0xB5, 0x77, 0xE1, 0xC0, 0xA4, 0x95, 0x94, 0xD1, 0x95, 0x94, 0xD0 };
    return Arrays.equals(scrambled, expected);
  }

}
```

### Flag
`picoCTF{s0m3_m0r3_b1t_sh1fTiNg_60bea5ea1}`

```
Reverse Password: picoCTF{s0m3_m0r3_b1t_sh1fTiNg_60bea5ea1}
Enter vault password: picoCTF{s0m3_m0r3_b1t_sh1fTiNg_60bea5ea1}
Access granted.
```

- - -

# asm1
Points: 200

## Problem
What does asm1(0x345) return? Submit the flag as a hexadecimal value (starting with '0x'). NOTE: Your submission for this question will NOT be in the normal flag format. [Source](asm1test.S) located in the directory at /problems/asm1_5_301df039c0ee4ee4dfa8adad6a40b875.

### Hint
>assembly [conditions](https://www.tutorialspoint.com/assembly_programming/assembly_conditions.htm)

## Solution (2 Methods)

### Example of the Stack during Subroutine Call

<p align="center"><img src="https://i.imgur.com/exh4kaR.png" alt="Stack during Subroutine Call" width="500"></p>

### Method 1 : Visualising the questions. 
### Method 2 : [Here](#method-2-for-asm1)

`Calling asm1(0x345) >> move {0x345} into [ebp+08]`

This is how the stack looks like after performing the `mov ebp,esp` command:
```
+---------------+
| old ebp       | <-- ebp
+---------------+
| ret           | <-- ebp + 0x4
+---------------+
| 0x345	        | <-- ebp + 0x8 (arg1)
+---------------+
```

```assembly
asm1:						;						Description of Function
	<+0>:	push   ebp			;						function Prologue
	<+1>:	mov    ebp,esp			;						~
	<+3>:	cmp    DWORD PTR [ebp+0x8],0x37a;						cmp - compare {0x345 vs 0x37a} = 345 < 37a (lesser than; therefore no jump)
	<+10>:	jg     0x512 <asm1+37>		;	---------				JG - Jump Greater if true
						;		|		
	<+12>:	cmp    DWORD PTR [ebp+0x8],0x345;		|				cmp - compare {0x345 vs 0x345} = 345 = 345 (equal than; therefore no jump)
	<+19>:	jne    0x50a <asm1+29>		;	--------|----------			JNE - Jump not Equal if true
						;		|	 ||
	<+21>:	mov    eax,DWORD PTR [ebp+0x8]	;		|	 ||			move [ebp+0x8] = {0x345} into EAX
	<+24>:	add    eax,0x3			;		|	 ||			add 0x3 to EAX = {0x345 + 0x3} = {0x348} <<<< Correct Answer; no condition jump to {asm1+60}
	<+27>:	jmp    0x529 <asm1+60>		;	--------|--------||--------------	JMP - Jump to address {asm1+60}
						;		|	 ||    		v
	<+29>:	mov    eax,DWORD PTR [ebp+0x8]	;   <-----------|----------		v	move [ebp+0x8] = {0x345} into EAX
	<+32>:	sub    eax,0x3			;		|    			v	sub 0x3 to EAX
	<+35>:	jmp    0x529 <asm1+60>		;	--------|-----------------------v	JMP - Jump to address {asm1+60}
						;		|			v
	<+37>:	cmp    DWORD PTR [ebp+0x8],0x5ff;    <-----------			v	cmp - compare {0x345 vs 0x5ff}
	<+44>:	jne    0x523 <asm1+54>		;	-----------------		v	JNE - Jump not Equal if true
						;			|		v
	<+46>:	mov    eax,DWORD PTR [ebp+0x8]	;			|		v	move [ebp+0x8] = {0x345} into EAX
	<+49>:	sub    eax,0x3			;			|		v	sub 0x3 to EAX
	<+52>:	jmp    0x529 <asm1+60>		;	----------------|---------------v	JMP - Jump to address {asm1+60}
						;			|		v	
	<+54>:	mov    eax,DWORD PTR [ebp+0x8]	;   <--------------------	 	v	move [ebp+0x8] = {0x345} into EAX
	<+57>:	add    eax,0x3			;					v	add 0x3 to EAX
	<+60>:	pop    ebp			;   <------------------------------------	function Epilogue
	<+61>:	ret    				;						return
```

### Flag
`0x348`

- - -

# asm2
Points: 250

## Problem
What does asm2(0x7,0x18) return? Submit the flag as a hexadecimal value (starting with '0x'). NOTE: Your submission for this question will NOT be in the normal flag format. [Source](asm2test.S) located in the directory at /problems/asm2_3_edb10ce41667cb1cd4213657dae580fd.

### Hint
>assembly [conditions](https://www.tutorialspoint.com/assembly_programming/assembly_conditions.htm)

## Solution

### Method 1 : Visualising the questions.
### Method 2 : [Here](#method-2-for-asm2)

`Calling asm2(0x7,0x18) >> move {0x7} into [ebp+08] & {0x18} into [ebp+0c]`

This is how the stack looks like after performing the `mov ebp,esp` command & after operation :
```
'mov ebp,esp'					|	'after operation'
+---------------+				|	+---------------+
| reserve       | <-- ebp - 0x10		|	| reserve       | <-- ebp - 0x10
+---------------+				|	+---------------+
| reserve       | <-- ebp - 0xc			|	| reserve       | <-- ebp - 0xc	
+---------------+				|	+---------------+		
| reserve      	| <-- ebp - 0x8			|	| 0x3967     	| <-- ebp - 0x8	(0x7 + [48 x 0xcc = 0x3960])
+---------------+				|	+---------------+	
| reserve       | <-- ebp - 0x4			|	| 0x60	        | <-- ebp - 0x4 (0x18 + 0x48)
+---------------+				|	+---------------+
| old ebp       | <-- ebp			|	| old ebp       | <-- ebp	
+---------------+				|	+---------------+		
| ret           | <-- ebp + 0x4			|	| ret           | <-- ebp + 0x4	
+---------------+				|	+---------------+			
| 0x7	        | <-- ebp + 0x8 (arg1)		|	| 0x7	        | <-- ebp + 0x8 (arg1)	
+---------------+				|	+---------------+	
| 0x18	        | <-- ebp + 0xc (arg2)		|	| 0x18	        | <-- ebp + 0xc (arg2)		
+---------------+				|	+---------------+
```

```assembly
asm2:						;				Description of Function
	<+0>:	push   ebp			;				function Prologue
	<+1>:	mov    ebp,esp			;				~
	<+3>:	sub    esp,0x10			;				reserve 16 bytes on stack {0x10} = 16 in hex
	<+6>:	mov    eax,DWORD PTR [ebp+0xc]	;				move [ebp+0xc] = {0x18} into EAX
	<+9>:	mov    DWORD PTR [ebp-0x4],eax	;				move EAX into reserve stack address [ebp-04]
	<+12>:	mov    eax,DWORD PTR [ebp+0x8]	;				move [ebp+0x8] = {0x7} into EAX
	<+15>:	mov    DWORD PTR [ebp-0x8],eax	;				move EAX into reserve stack address [ebp-0xc]
	<+18>:	jmp    0x50c <asm2+31>		;	---------		JMP - Jump to address {asm1+31}
						;		|
	<+20>:	add    DWORD PTR [ebp-0x4],0x1	;	<-------|--------	add 0x1 to [ebp-0x4]	
	<+24>:	add    DWORD PTR [ebp-0x8],0xcc	;		|	^	add 0xcc to [ebp-0x8]
	<+31>:	cmp    DWORD PTR [ebp-0x8],0x3937 ;	<--------	^	cmp - compare [ebp-0x8] vs {0x3937}  
	<+38>:	jle    0x501 <asm2+20>		;	-----------------	JLE - Jump Less if true
						;
	<+40>:	mov    eax,DWORD PTR [ebp-0x4]	;				move [ebp-0x4] = {0x60} into EAX
	<+43>:	leave  				;				function Epilogue
	<+44>:	ret    				;				return
```

```assembly
;After this line
<+12>:	mov    eax,DWORD PTR [ebp+0x8]	; 
<+15>:	mov    DWORD PTR [ebp-0x8],eax	; [ebp-0x8] contain the value of 0x7

;Next, the program would go into looping operation where 0xcc is added into [ebp-0x8] 
;and the exit condition is to be greater than `0x3937`
<+24>:	add    DWORD PTR [ebp-0x8],0xcc	;
<+31>:	cmp    DWORD PTR [ebp-0x8],0x3937 ;

;Therefore 0x3937 - 0x7(inital) = 0x3930
;No. Of Loops = 0x3930 / 0xcc = 47 Remainder 9C ≈ 48 Cycles (Greater than to exit)
;Finally, 0x18 + 0x48 = 0x60 (Correct Answer)
```

### Flag
`0x60`
- - -

# asm3
Points: 300

## Problem
What does asm3(0xc264bd5c,0xb5a06caa,0xad761175) return? Submit the flag as a hexadecimal value (starting with '0x'). NOTE: Your submission for this question will NOT be in the normal flag format. [Source](asm3test.S) located in the directory at /problems/asm3_1_b71abaa5cc92e3f7061f23957206b434.

### Hint
>more(?) [registers](https://wiki.skullsecurity.org/index.php?title=Registers)

## Solution

### Method 1 : Visualising the questions.
### Method 2 : [Here](#method-2-for-asm3)

### 'x86' Registers Structure

<p align="center"><img src="https://i.imgur.com/ZSn4oxn.png" alt="Stack Registers" width="500"></p>

>Credits to 'Dvd848' for writing a excellent guide for a similar question in 2018 [Here](https://github.com/Dvd848/CTFs/blob/master/2018_picoCTF/assembly-3.md)

`Calling asm3(0xc264bd5c,0xb5a06caa,0xad761175) >> move {0xc264bd5c} into [ebp+08], {0xb5a06caa} into [ebp+0c], {0xad761175} into [ebp+10]`

This is how the stack looks like after performing the `mov ebp,esp` command:
```
							'little-endian' (reverse form)
+---------------+				|	+---------------+			
| old ebp       | <-- ebp			|	| old ebp       | <-- ebp		
+---------------+				|	+---------------+
| ret           | <-- ebp + 0x4			|	| ret           | <-- ebp + 0x4
+---------------+				|	+---------------+		
| 0xc264bd5c    | <-- ebp + 0x8 (arg1)		|	|  5c|bd|64|c2  | <-- ebp + 0x8 (arg1)
+---------------+				|	+---------------+
| 0xb5a06caa    | <-- ebp + 0xc (arg2)		|	|  aa|6c|a0|b5  | <-- ebp + 0xc (arg2)	
+---------------+				|	+---------------+		
| 0xad761175    | <-- ebp + 0x10 (arg3)		|	|  75|11|76|ad  | <-- ebp + 0x10 (arg3)	
+---------------+				|	+---------------+
```

And due to endianness (little-endian), this is how the stack looks like, relative to ebp:

```
Byte grouping:
+0x8 +0x9 +0xA +0xB +0xC +0xD +0xE +0xF +0x10 0x11 0x12 0x13
+----+----+----+----+----+----+----+----+----+----+----+----+
| 5c | bd | 64 | c2 | aa | 6c | a0 | b5 | 75 | 11 | 76 | ad |
+----+----+----+----+----+----+----+----+----+----+----+----+
<---------------------------read RTL-------------------------

Word grouping:
+0x8   +0xA   +0xC   +0xE   +0x10  +0x12
+------+------+------+------+------+------+
| 52bd | 64c2 | aa6c | a0b5 | 7511 | 76ad |
+------+------+------+------+------+------+
<---------------read RTL-------------------

DWord grouping:
+0x8	   +0xC   	+0x10
+----------+----------+----------+
| 52bd64c2 | aa6ca0b5 | 751176ad |
+----------+----------+----------+
<-------------read RTL------------

```

```assembly
asm3:						;	Description of Function
	<+0>:	push   ebp			;	function Prologue
	<+1>:	mov    ebp,esp			;	~
	<+3>:	xor    eax,eax			;	faster way of moving {0} into EAX		
	<+5>:	mov    ah,BYTE PTR [ebp+0x9]	;	base on 'Byte grouping' [ebp+0x9] = {0xbd}, mov ah = {0xbd00}		
	<+8>:	shl    ax,0x10			;	sh1 (left shifts) by 0x10, result ax = 0 			
	<+12>:	sub    al,BYTE PTR [ebp+0xd]	;	sub al with BYTE [ebp+0xd] = {0x6c} = 0x0-0x6c=0x94 (1 bit overlow, 0x100-0x6c=0x94)
	<+15>:	add    ah,BYTE PTR [ebp+0xf]	;	add ah with BYTE [ebp+0xf] = {0xb5} = 0xb5, ax = {0xb594} 			
	<+18>:	xor    ax,WORD PTR [ebp+0x10]	;	Xor ax with WORD [ebp+0x10] = {0x1175} Read RTL = {0xb594 XOR 0x1175} = {0xa4e1} Correct Answer 		
	<+22>:	nop				;	no operation				
	<+23>:	pop    ebp			;	function Epilogue				
	<+24>:	ret    				;	return		
```	

### Flag
`0xa4e1`
- - -

# asm4
Points: 400

## Problem

What will asm4("picoCTF_376ee") return? Submit the flag as a hexadecimal value (starting with '0x'). NOTE: Your submission for this question will NOT be in the normal flag format. [Source](asm4test.S) located in the directory at /problems/asm4_2_0932017a5f5efe2bc813afd0fe0603aa.

### Hint
>Treat the Array argument as a pointer

## Solution

>Credits to 'xnand.netlify' & 'prasantadh' for writing a excellent guide for a similar question in 2018 [Here](https://xnand.netlify.com/2018/10/22/picoctf2018-assembly-0-1-2-3-4) Or [Here](https://github.com/prasantadh/ctf_writeups/tree/master/picoCTF2018/assembly-0-1-2-3-4)

An alternative approach is taken to resolve the problem. Instead of visualising the code line by line, the ASM code is converted to NASM (Netwide Assembler) code for direct execution. The process of converting includes 

* Removing of PTR from the ASM code. `mov    DWORD PTR [ebp-0x10],0x25c  >>>  mov    DWORD [ebp-0x10],0x25c`

* Changing the jump address to labels `jmp    0x518 <asm4+27>     >>>    jmp    part_b`

* Added `section .text` & `global` on the header of the NASM file

### ASM Code

```assembly
asm4:
	<+0>:	push   ebp
	<+1>:	mov    ebp,esp
	<+3>:	push   ebx
	<+4>:	sub    esp,0x10
	<+7>:	mov    DWORD PTR [ebp-0x10],0x25c
	<+14>:	mov    DWORD PTR [ebp-0xc],0x0
	<+21>:	jmp    0x518 <asm4+27>
	
	<+23>:	add    DWORD PTR [ebp-0xc],0x1
	<+27>:	mov    edx,DWORD PTR [ebp-0xc]
	<+30>:	mov    eax,DWORD PTR [ebp+0x8]
	<+33>:	add    eax,edx
	<+35>:	movzx  eax,BYTE PTR [eax]
	<+38>:	test   al,al
	<+40>:	jne    0x514 <asm4+23>
	
	<+42>:	mov    DWORD PTR [ebp-0x8],0x1
	<+49>:	jmp    0x587 <asm4+138>
	
	<+51>:	mov    edx,DWORD PTR [ebp-0x8]
	<+54>:	mov    eax,DWORD PTR [ebp+0x8]
	<+57>:	add    eax,edx
	<+59>:	movzx  eax,BYTE PTR [eax]
	<+62>:	movsx  edx,al
	<+65>:	mov    eax,DWORD PTR [ebp-0x8]
	<+68>:	lea    ecx,[eax-0x1]
	<+71>:	mov    eax,DWORD PTR [ebp+0x8]
	<+74>:	add    eax,ecx
	<+76>:	movzx  eax,BYTE PTR [eax]
	<+79>:	movsx  eax,al
	<+82>:	sub    edx,eax
	<+84>:	mov    eax,edx
	<+86>:	mov    edx,eax
	<+88>:	mov    eax,DWORD PTR [ebp-0x10]
	<+91>:	lea    ebx,[edx+eax*1]
	<+94>:	mov    eax,DWORD PTR [ebp-0x8]
	<+97>:	lea    edx,[eax+0x1]
	<+100>:	mov    eax,DWORD PTR [ebp+0x8]
	<+103>:	add    eax,edx
	<+105>:	movzx  eax,BYTE PTR [eax]
	<+108>:	movsx  edx,al
	<+111>:	mov    ecx,DWORD PTR [ebp-0x8]
	<+114>:	mov    eax,DWORD PTR [ebp+0x8]
	<+117>:	add    eax,ecx
	<+119>:	movzx  eax,BYTE PTR [eax]
	<+122>:	movsx  eax,al
	<+125>:	sub    edx,eax
	<+127>:	mov    eax,edx
	<+129>:	add    eax,ebx
	<+131>:	mov    DWORD PTR [ebp-0x10],eax
	<+134>:	add    DWORD PTR [ebp-0x8],0x1
	<+138>:	mov    eax,DWORD PTR [ebp-0xc]
	<+141>:	sub    eax,0x1
	<+144>:	cmp    DWORD PTR [ebp-0x8],eax
	<+147>:	jl     0x530 <asm4+51>
	
	<+149>:	mov    eax,DWORD PTR [ebp-0x10]
	<+152>:	add    esp,0x10
	<+155>:	pop    ebx
	<+156>:	pop    ebp
	<+157>:	ret    
```
### NASM Code (end_asm_rev.S)

```assembly
section .text
global asm4

asm4:
	push   ebp
	mov    ebp,esp
	push   ebx
	sub    esp,0x10
	mov    DWORD [ebp-0x10],0x25c
	mov    DWORD [ebp-0xc],0x0
	jmp    part_b

part_c:	
	add    DWORD [ebp-0xc],0x1
	
part_b:	
	mov    edx,DWORD [ebp-0xc]
	mov    eax,DWORD [ebp+0x8]
	add    eax,edx
	movzx  eax,BYTE [eax]
	test   al,al
	jne    part_c
	mov    DWORD [ebp-0x8],0x1
	jmp    part_d

part_e:
	mov    edx,DWORD [ebp-0x8]
	mov    eax,DWORD [ebp+0x8]
	add    eax,edx
	movzx  eax,BYTE [eax]
	movsx  edx,al
	mov    eax,DWORD [ebp-0x8]
	lea    ecx,[eax-0x1]
	mov    eax,DWORD [ebp+0x8]
	add    eax,ecx
	movzx  eax,BYTE [eax]
	movsx  eax,al
	sub    edx,eax
	mov    eax,edx
	mov    edx,eax
	mov    eax,DWORD [ebp-0x10]
	lea    ebx,[edx+eax*1]
	mov    eax,DWORD [ebp-0x8]
	lea    edx,[eax+0x1]
	mov    eax,DWORD [ebp+0x8]
	add    eax,edx
	movzx  eax,BYTE [eax]
	movsx  edx,al
	mov    ecx,DWORD [ebp-0x8]
	mov    eax,DWORD [ebp+0x8]
	add    eax,ecx
	movzx  eax,BYTE [eax]
	movsx  eax,al
	sub    edx,eax
	mov    eax,edx
	add    eax,ebx
	mov    DWORD [ebp-0x10],eax
	add    DWORD [ebp-0x8],0x1

part_d:	
	mov    eax,DWORD [ebp-0xc]
	sub    eax,0x1
	cmp    DWORD [ebp-0x8],eax
	jl     part_e
	mov    eax,DWORD [ebp-0x10]
	add    esp,0x10
	pop    ebx
	pop    ebp
	ret    
```

### C Code (solution.c)

Next is to write a C program that uses the exported library:

```C
#include <stdio.h>

extern int asm4(char a[]);

int main(void) {
	char a[]="picoCTF_376ee";
	printf("0x%x\n", asm4(a));

	return 0;
}
```
Compile the prgram as seen below : 

> 'nasm -f elf32 end_asm_rev.S -o end_asm_rev.o'

> 'gcc solution.c end_asm_rev.o -o solution -m32'

Lastly, Run the program as following : 

<p align="center"><img src="https://github.com/johantannh/picoctf2019-writeup/blob/master/reversing/Images/32-%20fEfgFrcg.png" alt="Stack during Subroutine Call"></p>

### Troubleshooting

If an error is return during the execution of the solution file : 

> '__cannot execute binary file: Exec format error__' Error 

You may follow this solution to resolve the error from `Froosh` @ [Here](https://stackoverflow.com/questions/42120938/exec-format-error-32-bit-executable-windows-subsystem-for-linux)

- - -
### Flag
`0x24d`

- - -

### Method 2 for ASM1
### Method 2 for ASM2
### Method 2 for ASM3

- - -

