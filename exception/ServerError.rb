# 7. Problem Statement: Write a Ruby program that attempts to connect to a server by simulating a method connect_to_server. If the connection fails (simulate failure with a RuntimeError), the program should retry the connection up to 3 times before giving up

class ServerError < StandardError
  def intialize(message)
    super(message)
  end
end
attempt =0
max_Attempt=3
begin
  attempt+=1 
  server=rand(0..1)
  puts server
  puts "NUMber of attempts is : #{attempt}"
  raise ServerError.new("SERVER IS not connected") if server == 1
  puts "Server connected"
rescue ServerError =>e 
  puts e.message
  retry if attempt < max_Attempt
end

