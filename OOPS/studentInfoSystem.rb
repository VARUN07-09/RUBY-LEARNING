
# Problem Statement 2: Student Information System
# Design a class Student that stores the name, age, and grades of a student. Implement the following:
# Use attr_accessor for name and age, and attr_reader for grades (making it read-only).
# The class should have a method add_grade(grade) that adds a grade to the student's grades array.
# Write a method calculate_average to return the average grade of the student.
# Ensure that the grades variable is encapsulated properly, and students can only add grades through the add_grade method.




class GradeError < StandardError
  def initialize(message)
    super(message)
  end
end

class Student
  attr_reader :grades
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
    @grades = [] 
  end

  def add_grade(grade)
    begin
      
      raise GradeError.new("Grade must be between 0 and 100.") unless grade.between?(0, 100)

      @grades << grade
      puts "Grade #{grade} added successfully."
    rescue GradeError => e
      puts e.message
    end
  end

  def calculate_average
    return 0 if @grades.empty?

    average = @grades.sum / @grades.size.to_f
    puts "Average Grade: #{average.round(2)}"
    average
  end
end


varun = Student.new("Varun Thakur", 22)
varun.age = 30
puts varun.age
varun.add_grade(100) 
varun.add_grade(50)  
varun.add_grade(110) 
varun.calculate_average
