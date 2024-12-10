str = gets.chomp.split.map(&:to_s)
target = gets.chomp.to_s         

found = false 

str.each_with_index do |char, index|
  if char == target
    puts " found at index #{index}"
    found = true
    break
  end
end

puts -1 unless found 
