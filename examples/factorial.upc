# Example UPC Pseudo Code Program
# Calculates and displays the factorial of a number
# Prompts the user for input, validates the input, and then calculates the factorial using iteration
# Finally, it displays the result

# Prompt the user for input
DISPLAY("Enter a non-negative integer: ")
input <- INPUT()
DISPLAY(input)

# Validate the input
REPEAT UNTIL(input >= 0)
{
    DISPLAY("Invalid input. Enter a non-negative integer:")
    input <- INPUT()
}

# Calculate the factorial using iteration
fact <- input
mult <- input - 1
REPEAT mult TIMES
{
    fact <- fact * mult
    mult <- mult - 1
}

# Display the result
DISPLAY("The factorial of")
DISPLAY(input)
DISPLAY("is")
DISPLAY(fact)
