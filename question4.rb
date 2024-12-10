#Write a program that simulates a simple counter. It attempts to divide a number by a given divisor. If the divisor is 0, retry the division after prompting the user for a new divisor.
begin 
  puts "Enter the numerator"
  n=gets.chomp.to_i 
  puts "Enter the denomerator"
  d=gets.chomp.to_i 
  raise "ERROR" if d== 0
  puts n/d 
rescue 
  puts "enter valid denomenator"
  retry 
end