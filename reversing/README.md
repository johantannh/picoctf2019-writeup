# vault-door-training
Points: 50

## Problem
>Your mission is to enter Dr. Evil's laboratory and retrieve the blueprints for his Doomsday Project. The laboratory is protected by a series of locked vault doors. Each door is controlled by a computer and requires a password to open. Unfortunately, our undercover agents have not been able to obtain the secret passwords for the vault doors, but one of our junior agents obtained the source code for each vault's computer! You will need to read the source code for each level to figure out what the password is for that vault door. As a warmup, we have created a replica vault in our training facility. The source code for the training vault is here: [VaultDoorTraining.java](https://2019shell1.picoctf.com/static/b0a612187f91d39a982c08b5b1703f20/VaultDoorTraining.java)

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
>This vault uses some complicated arrays! I hope you can make sense of it, special agent. The source code for this vault is here: [VaultDoor1.java](https://2019shell1.picoctf.com/static/e34a3f6d6e6341be2f9f562f1b4e7c33/VaultDoor1.java)

### Hint
>Look up the charAt() method online.

## Solution
Firstly, each ValutDoor1.java differ from each others or other team, so please get the correct version. 

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
This vault uses for-loops and byte arrays. The source code for this vault is here: [VaultDoor3.java](
https://2019shell1.picoctf.com/static/e3c91f3cd8fb4d926e10ec20ecf074b6/VaultDoor3.java)

### Hint
>Make a table that contains each value of the loop variables and the corresponding buffer index that it writes to.

## Solution [Here](https://repl.it/@x3sphiorx/vd3)


```java
import java.util.Scanner;

class Main {
  static String CipherText = "jU5t_a_sna_3lpm13gc49_u_4_m0rf41";

  public static void main(String[] args) {
    String userInput = "picoCTF{" + CipherText + "}";
    System.out.println("Enter vault password: " + userInput);

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
    String reversePassword = new String(buffer);

    System.out.println("Password Reverse : picoCTF{" + reversePassword + "}");

    return s.equals("jU5t_a_sna_3lpm13gc49_u_4_m0rf41");
  }

}
```
### Flag
picoCTF{jU5t_a_s1mpl3_an4gr4m_4_u_90cf31}

```
Enter vault password: picoCTF{jU5t_a_sna_3lpm13gc49_u_4_m0rf41}
Password Reverse: picoCTF{jU5t_a_s1mpl3_an4gr4m_4_u_90cf31}
Access denied!
```
- - -

# vault-door-4
Points: 250

## Problem
This vault uses ASCII encoding for the password. The source code for this vault is here: [VaultDoor4.java](https://2019shell1.picoctf.com/static/069d0ac8cb5ef3a4380155b2902d931c/VaultDoor4.java)

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
picoCTF{jU5t_4_bUnCh_0f_bYt3s_3a724c8f92}

- - -

# vault-door-5
Points: 300

## Problem
In the last challenge, you mastered octal (base 8), decimal (base 10), and hexadecimal (base 16) numbers, but this vault door uses a different change of base as well as URL encoding! The source code for this vault is here: [VaultDoor5.java](https://2019shell1.picoctf.com/static/973481b7e1f7abc490c49061c415722d/VaultDoor5.java)

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
picoCTF{c0nv3rt1ng_fr0m_ba5e_64_da882d01}

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
This vault uses an XOR encryption scheme. The source code for this vault is here: [VaultDoor6.java](https://2019shell1.picoctf.com/static/85cf337e69ef98ce5fde6972bf58c5bf/VaultDoor6.java)

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
picoCTF{n0t_mUcH_h4rD3r_tH4n_x0r_3484ebc}

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
This vault uses bit shifts to convert a password string into an array of integers. Hurry, agent, we are running out of time to stop Dr. Evil's nefarious plans! The source code for this vault is here: [VaultDoor7.java](https://2019shell1.picoctf.com/static/65415dd6da943c05146d9b8279d6ccc6/VaultDoor7.java)

### Hint
>Use a decimal/hexademical converter such as this one: https://www.mathsisfun.com/binary-decimal-hexadecimal-converter.html

>You will also need to consult an ASCII table such as this one: https://www.asciitable.com/

## Solution

### Flag
picoCTF{A_b1t_0f_b1t_sh1fTiNg_97cb1f367b}

- - -

# vault-door-8
Points: 450

## Problem
Apparently Dr. Evil's minions knew that our agency was making copies of their source code, because they intentionally sabotaged this source code in order to make it harder for our agents to analyze and crack into! The result is a quite mess, but I trust that my best special agent will find a way to solve it. The source code for this vault is here: [VaultDoor8.java](https://2019shell1.picoctf.com/static/4fb5848a676119dbc837ca447cdfb556/VaultDoor8.java)

### Hint
>Clean up the source code so that you can read it and understand what is going on.

>Draw a diagram to illustrate which bits are being switched in the scramble() method, then figure out a sequence of bit switches to undo it. You should be able to reuse the switchBits() method as is.

## Solution

### Flag
picoCTF{s0m3_m0r3_b1t_sh1fTiNg_60bea5ea1}

- - -

# asm1
Points: 200

## Problem
What does asm1(0x345) return? Submit the flag as a hexadecimal value (starting with '0x'). NOTE: Your submission for this question will NOT be in the normal flag format. [Source](https://2019shell1.picoctf.com/static/bee4f468b435b1693aa13e0d6c616573/test.S) located in the directory at /problems/asm1_5_301df039c0ee4ee4dfa8adad6a40b875.

### Hint
>assembly [conditions](https://www.tutorialspoint.com/assembly_programming/assembly_conditions.htm)

## Solution

### Flag
0x348

- - -

# asm2
Points: 250

## Problem
What does asm2(0x7,0x18) return? Submit the flag as a hexadecimal value (starting with '0x'). NOTE: Your submission for this question will NOT be in the normal flag format. [Source](https://2019shell1.picoctf.com/static/f4eabe889f4e1c2ddb0232e87eb5e785/test.S) located in the directory at /problems/asm2_3_edb10ce41667cb1cd4213657dae580fd.

### Hint
>assembly [conditions](https://www.tutorialspoint.com/assembly_programming/assembly_conditions.htm)

## Solution

### Flag

- - -

# asm3
Points: 300

## Problem
What does asm3(0xc264bd5c,0xb5a06caa,0xad761175) return? Submit the flag as a hexadecimal value (starting with '0x'). NOTE: Your submission for this question will NOT be in the normal flag format. [Source](https://2019shell1.picoctf.com/static/0f75abb569e8a11ee4b1975d111676fb/test.S) located in the directory at /problems/asm3_1_b71abaa5cc92e3f7061f23957206b434.

### Hint
>more(?) [registers](https://wiki.skullsecurity.org/index.php?title=Registers)

## Solution

### Flag

- - -

# asm4
Points: 300

## Problem
What will asm4("picoCTF_376ee") return? Submit the flag as a hexadecimal value (starting with '0x'). NOTE: Your submission for this question will NOT be in the normal flag format. [Source](https://2019shell1.picoctf.com/static/2ebdf4385b3c4d69aef0240d6140c84b/test.S) located in the directory at /problems/asm4_2_0932017a5f5efe2bc813afd0fe0603aa.

### Hint
>Treat the Array argument as a pointer

## Solution

### Flag

