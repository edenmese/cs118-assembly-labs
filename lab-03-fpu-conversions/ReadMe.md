# FPU Lab

## Why this lab is important
In this lab we'll look at using floating point numbers.  It's hard to do most calculations without using decimal numbers.  So it's time we started looking and how MIPS and assembly hands decimal numbers.  

We'll look at mathematical operators, comparisons and some limitations of working with decimals on a binary computer systems.  We'll also look at ways to deal with those limitations.

## Rubric
| Points | Requirements                                                                             |
|--------|------------------------------------------------------------------------------------------|
| 10     | Completed all part 1 in class examples                                                   |
| 20     | Completed part 3 Calculator version 2                                                    |
| 20     | Completed part 3 Temperature conversions with a function                                 |
| 20     | Completed part 4 BMI calculator                                                          |
| 15     | Completed code walk through in this readMe for Parts 2-4                                 |
| 15     | Used good coding style for all programs. Good comments, spacing, naming and organization.|


## Part 1
Complete the in class examples in the following files:
* doubleDouble.asm
* inputOutput.asm
* convert.asm
* branching.asm
* any other in class examples we do together

## Part 2
Recreate the calculator.asm from the loops and arrays lab but update it to work with
decimal numbers.  And use a function.  
* Create your program in the calculatorV2.asm file.
* Collect the to decimal numbers and store them in double FPU registers in the "main" part of your program.
* Create a function that takes the two numbers as parameters on the stack
* Calculate the display the results just like in the previous lab.
  * The exception being that division will now return a single decimal number instead of a quotient and remainder.

  In the text area below walk me through the code step by step explaining how it
  works, what registers and memory are used.

This program functions as a basic calculator. It first prompts the user to input two decimal
(double-precision) numbers. It then loads both user inputs onto a stack. Afterwards the 
code loads each decimal from the stack and performs the following calculations:
addition, subtraction, multiplication, and division each operation and stores the results.
After printing all the results, the program displays a goodbye message and exits. 
  ```
## Part 3
Create a temperature conversion program that converts Fahrenheit to Celsius.
* Create your program in the temperature.asm file.
* Store the inputed value in a double FPU register.
* Write a function that takes the double value as a parameter
on the stack and returns the results in the $f0 register.
* Your program should:
  1. Collection the user input from "main"
  2. Put the parameters on the stack
  3. Call the conversion function that you write
  4. Display the results from "main"


  In the text area below walk me through the code step by step explaining how it
  works, what registers and memory are used.

  ``
  This program converts a temperature input in farenheit to celsius, using double precision arithmetic. 
  It first prompts the user to enter a fahrenheit value (which is stored in f0) and moves it to f2 for
  the conversion calculation (F-32)x5/9 while loading intermediate values into CPU registers and converting to FPU for 
  calculation. 
  The result is then displayed using single precision format in f12 for printing. 
  ```


## Part 4
Create a program that Calculates a person's BMI base on height in inches and weight in lbs.
It should then present that BMI index number as well as the interpretation of the
number indicating a person's weight status as underweight, a healthy weight, overweight, 
or obesity
***Disclaimer*** The BMI is one interpretation of healthy weight but does not 
take many factors into account such as age and gender.  This assignment is not an 
endorsement of the BMI scale.  
It's simply a convenient exercise that requires the implementation of decimal numbers and 
conditionals on those numbers.
* Create your program in the bmi.asm file.
* The program should take 2 inputs from the user:
  1. height in inches as a integer value
  2. weight in pounds as a decimal value
* The BMI formula is Formula: weight (lb) / [height (in)]<sup>2</sup> x 703
* The BMI chart is:
  | BMI            | Weight Status  |
  |----------------|----------------|
  | Below 18.5     | Underweight    |
  | 18.5 – 24.9    | Healthy Weight |
  | 25.0 – 29.9    | Overweight     |
  | 30.0 and Above | Obesity        |
* Your program should include a function that takes the two parameters
from the stack and returns the results in the $f0 register.

In the text area below walk me through the code step by step explaining how it
works, what registers and memory are used.

```
This program calculates the user's BMI by prompting for an integer (height in inches) 
and a double precision (weight in pounds). It stores these user inpputed values onto a stack 
then loads data off the stack and computes the BMI (formula: (weight/height^2)*703) and stores 
the result in register f12. Lastly, values of each catagory threshhold is loaded
into FPU registers and the result is then compared with each threshhold to evaluate wether
the user is health, underweigth, overweight, or obese and prints out appropriate message. 


```
