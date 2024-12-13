# Problem Statement 10: Online Store Using OOP Principles
# Create a class Product with name, price, and quantity attributes. Then:
# Create two subclasses ElectronicProduct (with a warranty_period) and ClothingProduct (with a size).
# Add methods to calculate the total price based on the quantity.
# Use polymorphism to apply a discount on all products. Electronic products get a 10% discount, and clothing products get a 5% discount.
# Demonstrate encapsulation by hiding the product’s details from the user and only providing access to relevant methods.
class Product
  attr_reader :name, :price, :quantity


  def initialize(name, price, quantity)
    @name = name
    @price = price
    @quantity = quantity
  end


  def total_price
    price * quantity
  end
end


class ElectronicProduct < Product
  def total_price
    super * 0.9
  end
end

class ClothingProduct < Product
  def total_price
    super * 0.95
  end
end


products = [ElectronicProduct.new("Laptop", 1000, 1), ClothingProduct.new("T-Shirt", 20, 3)]
products.each do |product|
  puts "#{product.name}, after discount final price: $#{product.total_price}"
end