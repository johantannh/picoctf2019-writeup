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

## Solution


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
- - -

# vault-door-4
Points: 250

## Problem
This vault uses ASCII encoding for the password. The source code for this vault is here: [VaultDoor4.java](https://2019shell1.picoctf.com/static/069d0ac8cb5ef3a4380155b2902d931c/VaultDoor4.java)

### Hint
>Use a search engine to find an "ASCII table".

>You will also need to know the difference between octal, decimal, and hexademical numbers.

## Solution

### Flag
```
decimal : jU5t_4_b 
hex : UnCh_0f_ 
oct : (convert decimal then hex) bYt3s_3a
char : 724c8f92 
picoCTF{jU5t_4_bUnCh_0f_bYt3s_3a724c8f92}
```
- - -

# vault-door-5
Points: 300

## Problem
In the last challenge, you mastered octal (base 8), decimal (base 10), and hexadecimal (base 16) numbers, but this vault door uses a different change of base as well as URL encoding! The source code for this vault is here: [VaultDoor5.java](https://2019shell1.picoctf.com/static/973481b7e1f7abc490c49061c415722d/VaultDoor5.java)

### Hint
>You may find an encoder/decoder tool helpful, such as https://encoding.tools/

>Read the wikipedia articles on URL encoding and base 64 encoding to understand how they work and what the results look like.

## Solution

### Flag
picoCTF{c0nv3rt1ng_fr0m_ba5e_64_da882d01}

- - -

# vault-door-6
Points: 350

## Problem
This vault uses an XOR encryption scheme. The source code for this vault is here: [VaultDoor6.java](https://2019shell1.picoctf.com/static/85cf337e69ef98ce5fde6972bf58c5bf/VaultDoor6.java)

### Hint
>If X ^ Y = Z, then Z ^ Y = X. Write a program that decrypts the flag based on this fact.

## Solution

### Flag
picoCTF{n0t_mUcH_h4rD3r_tH4n_x0r_3484ebc}

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

# asm1
Points: 200

## Problem
What does asm1(0x345) return? Submit the flag as a hexadecimal value (starting with '0x'). NOTE: Your submission for this question will NOT be in the normal flag format. [Source](https://2019shell1.picoctf.com/static/bee4f468b435b1693aa13e0d6c616573/test.S) located in the directory at /problems/asm1_5_301df039c0ee4ee4dfa8adad6a40b875.

### Hint
>assembly [conditions](https://www.tutorialspoint.com/assembly_programming/assembly_conditions.htm)

## Solution

### Flag
0x348
