
# Problem Statement 6: Employee Salary Calculation
# Create a class Employee with the following:
# name and salary as instance variables.
# A method display_details to show the name and salary of the employee.
# Create two subclasses Manager and Developer that inherit from Employee. The Manager class should have an additional method to give a bonus, while Developer should include a method to increase the salary by a certain percentage.
# Create objects of both subclasses, set salaries, and calculate the final salary with bonuses and increases.


class Employee
  attr_accessor :name, :salary

  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  def display_details
    puts "Name: #{@name}, Salary: #{@salary}"
  end
end


class Manager < Employee

  def give_bonus(amount)
    @salary += amount
    puts "#{@name} received a bonus of #{amount}. New Salary: #{@salary}"
  end
end


class Developer < Employee

  def increase_salary(percentage)
    increment = @salary * (percentage / 100.0)
    @salary += increment
    puts "#{@name}'s salary increased by #{percentage}%. New Salary: #{@salary}"
  end
end


manager = Manager.new("varun", 70000)
developer = Developer.new("vishal", 50000)

manager.display_details
developer.display_details

manager.give_bonus(10000)        
developer.increase_salary(20)   

manager.display_details
developer.display_details

