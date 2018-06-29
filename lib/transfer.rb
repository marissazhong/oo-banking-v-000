class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end

  def valid?
    sender.valid? && receiver.receiver.valid?
  end

  def execute_transaction

  end

end

let(:avi) { BankAccount.new("Avi") }
let(:amanda) { BankAccount.new("Amanda") }
let(:transfer) { Transfer.new(amanda, avi, 50) }
let(:bad_transfer) { Transfer.new(amanda, avi, 4000) }
