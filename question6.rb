# Write a Ruby program to process an array of names. If a specific name (e.g., "exit") is found, immediately stop the processing using throw and print a message indicating the name was found.
names = gets.chomp.split.map(&:to_s)
catch (:found_exit) do 
  names.each do |name|
    if name == "exit"
      puts "Exiting beacuse exit is found"
      throw :found_exit
    end
    puts name 
  end
end

