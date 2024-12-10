#Write a Ruby program that iterates through an array of numbers. Stop the iteration when a number divisible by 7 is encountered and print the numbers processed until that point.
puts "enter the size of array"

n= gets.chomp.to_i 


array = gets.chomp.split.map(&:to_i)

array.each do |i|
  puts i
  if i % 7 ==0 
    puts "#{array[i]} is divisible by 7"
    break
  end
end

