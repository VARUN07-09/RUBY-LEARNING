# 2. Problem Statement: Create a custom exception class called AgeError. Write a Ruby program that takes a user's age as input and raises an AgeError if the input is not between 18 and 100. Handle the exception and provide a user-friendly error message.

class AgeError < StandardError
  def intialize(message)
    super(message)
  end
end

begin 
  puts "enter the age"
  age= gets.chomp.to_i
  raise AgeError.new("Age is not valid, Please put age between 18 to 100") if age >=100 || age<=18
  puts "VALID AGE"
rescue StandardError => e 
  puts e.message
end
