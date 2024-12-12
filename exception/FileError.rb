# 3. Problem Statement: Write a Ruby program that reads a file specified by the user. Use multiple rescue blocks to handle the following scenarios:
# File not found (Errno::ENOENT)
# Permission denied (Errno::EACCES)
# Any other generic exceptions

begin 
  puts "ENter a file path : "
  path=gets.chomp 
  content = File.read(path)
  puts "FILE CONTENT :"
  puts content
rescue Errno::ENOENT 
  puts "FILE NOT FOUND"
rescue Errno::EACCES
  puts "PERMISSION DENIED"
end