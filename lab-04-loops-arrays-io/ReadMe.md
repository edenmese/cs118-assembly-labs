# Loops, Arrays and Input/Output Lab


## Why this lab is important
In this lab you'll demonstrate the use of flow control to create loops using
branching and jumps. Use memory to create arrays.  And use system call for
input and output from the user.   

## Rubric
| Points | Requirements                                                                             |
|--------|------------------------------------------------------------------------------------------|
| 10     | Completed all part 1 in class examples                                                   |
| 20     | Completed part 2 Basic Calculator program                                                   |
| 20     | Completed part 3 Powers of Two program                                                |
| 20     | Completed part 4 Palindrome Checker program                                                      |
| 15     | Completed code walk through in this readMe for Parts 2-4                                 |
| 15     | Used good coding style for all programs. Good comments, spacing, naming and organization.|

## Part 1
Complete the in class examples in the following files:
* branching.asm
* output.asm
* input.asm
* while.asm
* array.asm
* length.asm



## Part 2

Create a program that works as a basic calculator.

* Create your program in the calculator.asm file
* Asks user for 2 integer inputs
* Calculate and outputs sum, difference, product, and quotient and remainder
* Ends program in a friendly way to the user
* Use the exit system call to end your program

In the text area below walk me through the code step by step explaining how it
works, what registers and memory are used.

```text
 	This programs goal is to work as a basic calculator. It first asks user for two integers
 	then performs addition, subtraction, multiplication, division, and modulus using the MIPS instructions
 	for each action and stores the results. Each result is then printed with appropriate labels and formatted with 
 	newlines. After prints goodbye message and exits. 

```

Example of the program running:
```
Please enter the first integer: **** user input : 67
Please enter the second integer: **** user input : 12

Results
 Sum: 79
 Difference: 55
 Product: 804
 Quotient: 5
 Remainder: 7
-- program is finished running --
```

## Part 3

Create a program that uses an array to store powers of 2 in memory.  And then
loops over that array to display the numbers.

* Create your program in the arrays_of_twos.asm file.
* Reserve a block of memory big enough to hold all the powers of 2 from 0 to 10.
* use a loop to store the values into the memory array
  * hint: use the sll instruction to double a value
* use a second loop to iterate over the memory array outputting the values.

In the text area below walk me through the code step by step explaining how it
works, what registers and memory are used.

```text

This program calculates and prints the first 10 powers of 2. It first initializes an array and starts by
setting the value to 1 and the counter to 0. Then in a loop it shifts the value to the left 
which doubles the value and stores that in the array untill all 10 values are computed.
After filling array, the program prints message and loops throuhg the array to display each 
computed power of 2 on a new line. Then exits program. 

```

Example of the program running:
```

The first 10 powers of 2 are:
1
2
4
8
16
32
64
128
256
512
1024

-- program is finished running --
```





# Part 4
Create a program and takes a string input and tells the user if the string is a
palindrome or not.

* Create your program in the palindrome.asm file.
* Prompt the user to enter a word
* Store the word in memory
* Determine if the word is a palindrome or not
* Display the word back to the user stating if it is or is not a palindrome.

In the text area below walk me through the code step by step explaining how it
works, what registers and memory are used.

```text: 

In this program the goal is to check if a word inputed by the user is a palindrome (word read the same forward as backwards) or isn't. 
The program first asks for the user to enter a string. The program then loops throught the string untill it encounters the newline charachtar
which it replaces with null terminator to indicate the end of the string. Then it sets two pointers (one at the beginning of string and end of string)
and compares the chrachters at the start and end untill the charachtars meet or cross. If all charachtars match, then it is a palindrome
and palindrome_msg is printed if not then prints not_palindrome. 

```

Example of the program running:
```

Please enter a word: **** user input : racecar
That is a palindrome
-- program is finished running --


Reset: reset completed.

Please enter a word: **** user input : noon
That is a palindrome
-- program is finished running --


Reset: reset completed.

Please enter a word: **** user input : trashcan
That is not a palindrom
-- program is finished running --

```
