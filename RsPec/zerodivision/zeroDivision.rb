# 1. Write a test suite using RSpec for a class Calculator that includes methods add, subtract, multiply, and divide. Ensure that your tests cover edge cases, such as division by zero.
class Calculator
  def add(a, b)
    a + b
  end


  def subtract(a,b)
    a-b
  end


  def multiply(a,b)
    a*b
  end


  def divide(a,b)
    begin
      a/b
    rescue ZeroDivisionError=> e
      puts "#{e.message} , please enter a valid number"
    end
  end
end