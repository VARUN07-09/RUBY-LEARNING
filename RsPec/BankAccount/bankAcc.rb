class BankAccount
  attr_reader :balance

  def initialize(initial_balance = 0)
    @balance = initial_balance
  end

  def deposit(amount)
    raise ArgumentError, "Deposit amount must be positive" if amount <= 0

    @balance += amount
  end

  def withdraw(amount)
    raise ArgumentError, "Withdraw amount must be positive" if amount <= 0
    raise ArgumentError, "Insufficient funds" if amount > @balance

    @balance -= amount
  end

  def check_balance
    @balance
  end
end