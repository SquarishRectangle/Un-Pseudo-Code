# Un-Pseudo Code Language Specification
## Introduction
Un-Pseudo Code (UPC) is an interpreted language based on the Pseudo Code used by College Board in their AP Computer Science Principals course. This document is adapted from the [CSP Exam Reference Sheet](https://apcentral.collegeboard.org/media/pdf/ap-computer-science-principles-exam-reference-sheet.pdf) with changes to improve the user experience on a keyboard. 


## Assignment, Display, and Input
`a <- expression`

* Evaluates expression and then assigns a copy of the result to the variable a. 
* Due to the fact that there are no type conversion functions, UPC supports minimal type coercion. However, it is not an official part of UPC and the implementation is minimal.  


`DISPLAY(expression)`

* Displays the value of expression, followed by a space. 


`INPUT()` 

* Accepts a value from the user and returns the input value. 
* When you input a value, UPC will attempt to detect and convert to the intended type. If it fails, the input will be interpreted as a literal string. 


## Arithmetic Operators and Numeric Procedures 
```
a + b 
a - b 
a * b 
a / b 
```
* The arithmetic operators +, -, *, and / are used to perform arithmetic on a and b. For example, 17 / 5 evaluates to 3.4. The order of operations used in mathematics applies when evaluating expressions. 


`a MOD b` 

* Evaluates to the remainder when a is divided by b. Assume that a is an integer greater than or equal to 0 and b is an integer greater than 0. For example, 17 MOD 5 evaluates to 2. The MOD operator has the same precedence as the * and / operators. 


`RANDOM(a, b)` 

* Generates and returns a random integer from a to b, including a and b. Each result is equally likely to occur. For example, RANDOM(1, 3) could return 1, 2, or 3. 


## Relational and Boolean Operators 
```
a = b 
a != b 
a > b 
a < b 
a >= b 
a <= b
```
* The relational operators are used to test the relationship between two variables, expressions, or values. A comparison using relational operators evaluates to a Boolean value. For example, a = b evaluates to true if a and b are equal; otherwise it evaluates to false.


`NOT condition`

* Evaluates to true if condition is false; otherwise evaluates to false.
* Any variable can be coerced into a boolean. Coerced booleans are true if they are not 0, or empty. 


`condition1 AND condition2`

* Evaluates to true if both condition1 and condition2 are true; otherwise evaluates to false.


`condition1 OR condition2`

* Evaluates to true if condition1 is true or if condition2 is true or if both condition1 and condition2 are true; otherwise evaluates to false.


## Selection
```
IF(condition)
{
    <block of statements>
}
```
* The code in block of statements is executed if the Boolean expression condition evaluates to true; no action is taken if condition evaluates to false.
* Any time braces are used, we enter into a new variable scope. Variables declared within the scope will not exist outside the scope. Outside variables can still be modified. 


```
IF(condition)
{
    <block of statements>
}
ELSE
{
 <second block of statements>
}
```
* IF condition first block of statements ELSE second block of statements The code in first block of statements is executed if the Boolean expression condition evaluates to true; otherwise the code in second block of statements is executed. 


```
REPEAT n TIMES
{
    <block of statements>
} 
```
* REPEAT n TIMES block of statements The code in block of statements is executed n times. 
* n must be a positive number. Decimals will be rounded down. 


```
REPEAT UNTIL(condition)
{
    <block of statements>
} 
```
* REPEAT UNTIL block of statements condition The code in block of statements is repeated until the Boolean expression condition evaluates to true. 


## List Operations 
For all list operations, if a list index is less than 1 or greater than the length of the list, an error message is produced and the program terminates. 


`aList <- [value1, value2, value3, ...]` 

* aList valuel, value2, value3 Creates a new list that contains the values value1, value2, value3, and ... at indices 1, 2, 3, and ... respectively and assigns it to aList. 


`aList <- []` 

* aList Creates an empty list and assigns it to aList. 


`aList <- bList` 

* aList bList Assigns a copy of the list bList to the list aList. For example, if bList contains [20, 40, 60], then aList will also contain [20, 40, 60] after the assignment. 


`aList[i]`

* aList i Accesses the element of aList at index i. The first element of aList is at index 1 and is accessed using the notation aList[1].
* i must be a positive number. Decimals will be rounded down. 
  

`x <- aList[i]` 

* Assigns the value of aList[i] to the variable x. 


`aList[i] <- x` 

* Assigns the value of x to aList[i]. 


`aList[i] <- aList[j]` 

* Assigns the value of aList[j] to aList[i]. 


`INSERT(aList, i, value)` 

* Any values in aList at indices greater than or equal to i are shifted one position to the right. The length of the list is increased by 1, and value is placed at index i in aList. 

`APPEND(aList, value)`

* The length of aList is increased by 1, and value is placed at the end of aList.


`REMOVE(aList, i)`

* Removes the item at index i in aList and shifts to the left any values at indices greater than i. The length of aList is decreased by 1. 


`LENGTH(aList)` 

* LENGTH Evaluates to the number of elements in aList. 
* Also works with strings. 


```
FOR EACH item IN aList
{
    <block of statements>
} 
```
* The variable item is assigned the value of each element of aList sequentially, in order, from the first element to the last element. The code in block of statements is executed once for each assignment of item. 


## Procedures and Procedure Calls 
```
PROCEDURE procName(parameter1, parameter2, ...)
{
    <block of statements>
} 
```
* PROCEDURE procName block of statements parameter1, parameter2,... Defines procName as a procedure that takes zero or more arguments. The procedure contains block of statements. The procedure procName can be called using the following notation, where arg1 is assigned to parameter1, arg2 is assigned to parameter2, etc.: procName(arg1, arg2, ...) 

```
PROCEDURE procName(parameter1, parameter2, ...)
{
 <block of statements>
 RETURN(expression)
} 
```
* PROCEDURE procName block of statements RETURN expression parameter1, parameter2,... Defines procName as a procedure that takes zero or more arguments. The procedure contains block of statements and returns the value of expression. The RETURN statement may appear at any point inside the procedure and causes an immediate return from the procedure back to the calling statement. The value returned by the procedure procName can be assigned to the variable result using the following notation: result <- procName(arg1, arg2, ...) 


`RETURN(expression)` 

* RETURN expression Returns the flow of control to the point where the procedure was called and returns the value of expression. 



Robots are not yet supported