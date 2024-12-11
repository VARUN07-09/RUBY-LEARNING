# 1. Problem Statement: Write a Ruby program that prompts the user to enter two numbers and performs division. Use exception handling to catch and handle the following errors:

# Division by zero (ZeroDivisionError)
# Invalid input (ArgumentError, e.g., if the user inputs non-numeric values) 
begin 
  puts "ENTER THE TWO NUMBERS"

  x = Float (gets.chomp)
  y = Float(gets.chomp)
  raise "ERRor!!" if y== 0
  puts x/y 
rescue ZeroDivisionError
  puts "Cannot divide with zero"
  retry
rescue ArgumentError
  puts "ENTER A VALID INPUT"
end

