#Create a Ruby program that loops through numbers from 1 to 20. Skip numbers that are multiples of 3 and print the rest.

(1..20).each do |i|
   
  if i % 3 == 0
    next 
  end
  puts i
end