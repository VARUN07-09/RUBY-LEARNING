#Write a Ruby program that prompts the user to input a valid integer between 1 and 10. If the user inputs an invalid number, use the redo statement to make them retry entering the value.

loop do
  print "Enter a number from  1 and 10: "
  number = gets.chomp.to_i
  if number >= 1 && number <= 10
    puts "You entered a valid number"
    break
  else
    puts "Invalid Please try again."
    redo
  end
end

