class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end

  def valid?
    self.sender.valid? && self.receiver.valid?
  end

  def execute_transaction
    if valid?
      self.sender.deposit(-amount)
      self.receiver.deposit(amount)
    else
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer

  end

end

# let(:avi) { BankAccount.new("Avi") }
# let(:amanda) { BankAccount.new("Amanda") }
# let(:transfer) { Transfer.new(amanda, avi, 50) }
# let(:bad_transfer) { Transfer.new(amanda, avi, 4000) }
