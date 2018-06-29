class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction

  end

end

class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  def initialize(name)
    @name = name
    @balance = 1000
    @status = 'open'
  end

  def deposit(amount)
    @balance += amount
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    @status == 'open' && @balance > 0
  end

  def close_account
    @status = 'closed'
  end
end

let(:avi) { BankAccount.new("Avi") }
let(:amanda) { BankAccount.new("Amanda") }
let(:transfer) { Transfer.new(amanda, avi, 50) }
let(:bad_transfer) { Transfer.new(amanda, avi, 4000) }
