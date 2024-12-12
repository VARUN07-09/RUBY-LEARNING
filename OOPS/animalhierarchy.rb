# 3. Inheritance
# Problem Statement 5: Animal Hierarchy
# Create a base class Animal with a method make_sound. Then:
# Create two subclasses Dog and Cat, where Dog implements make_sound as "Woof" and Cat implements make_sound as "Meow".
# Write a method describe_animal in the base class that outputs a description of the animal (i.e., the animal's type and sound).
# Instantiate objects of Dog and Cat, and call their describe_animal method.
class Animal
  def make_sound
    begin 
      raise NotImplementedError ("not used in subclass ")
    rescue NotImplementedError => e 
      puts e.message
    end
    
  end
  def describe_animal
    puts "#{self.class } make a sound like #{make_sound}"
  end
end
class Dog <Animal
  def make_sound
    "Woof"
    
  end
end
class Cat < Animal
  def make_sound 
    "Meow"
  end
end
cat= Cat.new 
dog = Dog.new 
dog.describe_animal
cat.describe_animal

