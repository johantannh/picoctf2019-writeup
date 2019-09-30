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

```
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


### Flag
`picoCTF{d35cr4mbl3_tH3_cH4r4cT3r5_63ef3a}`

- - -

# vault-door-3
Points: 200

## Problem

### Hint
>Make a table that contains each value of the loop variables and the corresponding buffer index that it writes to.

## Solution

### Flag
- - -
