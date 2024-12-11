# 4. Problem Statement: Create a Ruby program that calculates the square root of a number provided by the user. If the user provides invalid input, handle the exception and prompt the user to re-enter the value. Use nested exception handling to retry the input process if an error occurs.

class NegErr < StandardError
  def intialize(message)
    super(message)
  end
end
begin 
  puts "ENTER THE NUMBER U WANT TO GET Sqaure root of"

  number= Float (gets.chomp)
  raise NegErr.new("DO NOT ENTER A NEGATIVE NUMBER") if number <=0
  sqrt = Math.sqrt(number)
  
  puts sqrt 
rescue NegErr => e
  puts e.message
  retry
end