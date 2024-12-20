#create a login system which require email id password through regex password min 1 small 1 capital 1 special character 
#create a object credential defalut id is varun91thakur@gmail.com paass Varun@123
class LoginExceptionHandler < StandardError
  def initialize(message)
    super(message)
  end
end

class Login
  def eemail
    begin
      default_email = "varun91thakur@gmail.com"
      defpass = "Varun@123"
      puts "ENTER YOUR USERNAME"
      mail = gets.chomp
      
      email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
      raise LoginExceptionHandler.new("Email is invalid") unless mail =~ email_regex 
      raise LoginExceptionHandler.new("User not registered") unless mail == default_email 
      puts "ENTER YOUR PASSWORD"
      password = gets.chomp
      password_regex = /\A(?=.*[a-z])(?=.*[A-Z])(?=.*[@$!%?&]).{8,}\z/
      raise LoginExceptionHandler.new("Password is invalid") unless password =~ password_regex
      raise LoginExceptionHandler.new("Mismatched Password") unless password == defpass  

      puts "User logged in successfully!"
    rescue LoginExceptionHandler => e
      puts e.message
    end
  end
end

login = Login.new
login.eemail




    
    