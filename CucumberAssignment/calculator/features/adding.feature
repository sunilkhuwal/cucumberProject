Feature: Adding
	
	Scenario: Add two numbers
		Given the input "2" and "2"
		When the calculator do sum
		Then the output should be "4"
		
		
	Scenario: Subtract two numbers
		Given the input "2" and "2"
		When the calculator do subtract
		Then the output should be "0"
		
		
	Scenario: Divide two numbers
		Given the input "2" and "2"
		When the calculator do divide
		Then the output should be "1"
		
	Scenario: Multiply two numbers
		Given the input "2" and "3"
		When the calculator do multiply
		Then the output should be "6"