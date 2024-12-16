# Functions Lab

## Why this lab is important
In this lab we'll explore subrutines aka functions.  

We'll see that the problems with functions is that they may over write the
registars we use causing all kinds of errors in our code.  We look at solutions
to solve those issues by storing the values of registars in memory.

We need to learn about how memory is organized for the passing of data in and
out of functions.  We'll learn how early programing languages use blocks of
memory call "Active Records" to set block out memory for a functions local
variables.

Then we'll expore how to improve on this model by using a the stack to allow
move advanced functions that can handle recursion.

## Rubric
| Percent | Requirements                                                                             |
|---------|------------------------------------------------------------------------------------------|
| 10%     | Completed all part 1 in class examples                                                   |
| 20%     | Completed part 2 Volume of a Cube                                                          |
| 20%     | Completed part 3 Find the Max of 8                                                       |
| 20%     | Completed part 4 Powers                                                                  |
| 15%     | Completed code walk through in this readMe for Parts 2-4                                 |
| 15%     | Used good coding style for all programs. Good comments, spacing, naming and organization.|

## Part 1
Complete the in class examples in the following files:
* addtwo.asm
* factorial.asm
* addFour.asm
* addFourWithStack.asm
* addEight.asm
* factorialWithRecursion.asm


# Part 2
Create a program that uses a subroutine to calculate volume of a cube.

* Create your program in the areaOfCube.asm file.
* You must have a minimum of two subroutines
  * one to calculation the volume of the cube base on 3 arguments
  * one to get the user's input for the width, height, and depth_prompt
    * Note there are 3 propts and your get user input subroutine needs to deplay the correct one.


In the text area below walk me through the code step by step explaining how it
works, what registers and memory are used.

```text
This programs goal is to calculate the volume of a cube by gathering each dimesion from 
user input through the subroutine get_dimensions and storing them in argument registers a1-3.
It then computes and displays the volume by multiplying the width, depth, and height 
storing into a0 and displaying with the subroutine calculate_volume. 

```

Example of the program running:
```
This program will calculate the volume of a cube.
Please enter a width:**** user input : 6
Please enter a height:**** user input : 8
Please enter a depth:**** user input : 16
The volume of the cube is: 768
-- program is finished running --
```
## Part 3
Create a program that uses a function to get the max value of eight parameters.

* Write your program in the maxOfEight.asm file
* The program should get the 8 values from as user input.
* Create a fucntion that takes eight parameters and returns the maximum values.
  * You'll need to pass at least 4 of the parameters using the stack
    * You're welcome to pass all 8 on the stack
* You may want to create a helper function that compares two numbers and return the larger
* You may not use an array or record in memory to pass the values, we'll do that in a future lab.

In the text area below walk me through the code step by step explaining how it
works, what registers and memory are used.

```text
This programs goal is to find and display the largest of eight user-input numbers by storing
each input on a stack. It gathers each number through the subroutine prompt_input which prompts
the user and reads input. The the program uses find_max subroutine to iterate through each
value and comparing it to a fixed value from the stack (switching out for the maximum value after each comparison)



```

Example of the program running:
```
This program will return the greatest of eight numbers.
Please enter a number:**** user input : 56
Please enter a number:**** user input : 34
Please enter a number:**** user input : 78
Please enter a number:**** user input : 109
Please enter a number:**** user input : 188
Please enter a number:**** user input : 34
Please enter a number:**** user input : 97
Please enter a number:**** user input : 85
The largest of all 8 numbers is: 188
-- program is finished running --
```

## Part 4

Create a program that calculates the power of a base number using a recursive function.

* Write your program in the powers.asm file.
* You program should take a base number of exponant from the use and return the power value.
  * for example 3<sup>4</sup> is 81
* Your program must include a recusive function that takes the base and exponant as parameters.
* Your program mush use the stack to facilitate the recursive function calls.


In the text area below walk me through the code step by step explaining how it
works, what registers and memory are used.

```text
This powers program calculates the result of raising a base number to exponent 
with user input, recursion and storing on stacks. The code prompts user for a base and 
exponent with subroutine prompt_input and stores into a1(base) and a2(exponent)
then calls teh power subroutine where it recursivly calculate result. In power subroutine if the exponent
= 0 the function returns 1 in v0. Otherwise it recursivly decreses the exponent and lateer multiplies the base
by the result of each recursive call untill zero.  

```

Example of the program running:
```
This program will return the power of base number.
Please enter a base:**** user input : 4
Please enter the exponant:**** user input : 6
The power is: 4096
-- program is finished running --
```
