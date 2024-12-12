# 1. Encapsulation
# Problem Statement 1: Bank Account Management System
# Create a class BankAccount that encapsulates the details of a bank account. The class should have the following features:
# An instance variable balance (private) to store the current balance.
# Methods to deposit(amount) and withdraw(amount) with proper validation to ensure the balance doesn't go negative.
# A method display_balance that returns the current balance (public).
# Create an object of BankAccount, perform some deposit and withdrawal operations, and display the balance.

class BalanceError < StandardError
  def intialize(message)
    super(message)
  end
end

class BankAccount 

  def initialize (balance=0)
   @balance =balance 
    
  end

  def deposit_amnt (deposit)
    @balance+=deposit 
    puts "Deposited amount #{deposit} successfully!"
  end

  def withdrawal(withdraw)
    begin 
      raise BalanceError.new("#{withdraw} Ammount is greater than your balance")  unless withdraw>0 && withdraw<@balance 


      @balance-=withdraw
    
         puts "Withdrawl sucessfully"      
  rescue BalanceError => e 
    puts e.message
    
  end
  end
  def display_balance 
    puts @balance
    
  end

end
varun = BankAccount.new
varun.deposit_amnt(10000)
varun.display_balance
varun.withdrawal(12000)
varun.display_balance

