# 2. Abstraction
# Problem Statement 3: Shape Hierarchy
# Create an abstract base class Shape with the following characteristics:
# A method area (abstract) that must be implemented by any subclass.
# Define two subclasses Circle and Rectangle. The Circle class should calculate its area using the formula πr^2, and the Rectangle class should calculate its area using width * height.
# Create an instance of each subclass and calculate and display their areas.

class Shape 
  def area 
    begin 
    raise NotImplementedError, (" not used ")
    rescue NotImplementedError =>e 
      puts e.message
    end 

  end

    
end

class Circle < Shape 
 attr_accessor :radius 
  def initialize(radius) 
    @radius=radius
  end
  def area 
    Math:: PI * @radius**2
  end
end


class Rectangle < Shape
  attr_accessor :height , :width 
  def initialize(height , width)
    @height = height
    @width = width
  end
  def area 
    @width*@height
  end 
end

circle = Circle.new(5)
puts "Area of Circle is : #{circle.area}"
rect = Rectangle.new(5, 4)
puts "Area of Rechtangle is : #{rect.area}"
