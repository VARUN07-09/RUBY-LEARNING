# Problem Statement 4: Vehicle Rental System
# Design an abstract class Vehicle with the following:
# An abstract method calculate_rent to compute the rental cost.
# Two subclasses Car and Bike that implement the calculate_rent method. For example, Car charges $20/day, and Bike charges $10/day.
# Create instances of both subclasses and calculate their rental charges based on the number of days.
class Vehicle 
  def calculate_rent
    begin 
      raise NotImplementedError ("SUBCLASS MUST USE ABSTRACT METHOD")
    rescue NotImplementedError => e 
      puts e.message
    end
    
  end
end

class Car <Vehicle 
  def initialize (day)
    @day=day 
    @rentperday= 20
    
  end
  def calculate_rent 
    puts "Rent of #{@day} days is : $ #{@day*@rentperday} only"
  end 
end
class Bike <Vehicle 
  def initialize (day)
    @day=day 
    @rentperday= 10
    
  end
  def calculate_rent 
    puts "Rent of #{@day} days is : $ #{@day*@rentperday} only"
  end 
end
car= Car.new(50)
car.calculate_rent
bike = Bike.new(20)
bike.calculate_rent

