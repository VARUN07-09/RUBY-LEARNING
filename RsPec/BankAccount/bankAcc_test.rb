require rspec
require_relative bankAcc  
RSpec.describe BankAccount do
  let(:bank_account) { BankAccount.new(100) }

  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      bank_account.deposit(50)
      expect(bank_account.balance).to eq(150)
    end

    it "raises an error for negative deposit amounts" do
      expect { bank_account.deposit(-50) }.to raise_error(ArgumentError, "Deposit amount must be positive")
    end

    it "raises an error for zero deposit amounts" do
      expect { bank_account.deposit(0) }.to raise_error(ArgumentError, "Deposit amount must be positive")
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount" do
      bank_account.withdraw(50)
      expect(bank_account.balance).to eq(50)
    end

    it "raises an error for negative withdrawal amounts" do
      expect { bank_account.withdraw(-50) }.to raise_error(ArgumentError, "Withdraw amount must be positive")
    end

    it "raises an error for zero withdrawal amounts" do
      expect { bank_account.withdraw(0) }.to raise_error(ArgumentError, "Withdraw amount must be positive")
    end

    it "raises an error for withdrawals exceeding the balance" do
      expect { bank_account.withdraw(150) }.to raise_error(ArgumentError, "Insufficient funds")
    end
  end

  describe "#check_balance" do
    it "returns the current balance" do
      expect(bank_account.check_balance).to eq(100)
    end
  end
end
