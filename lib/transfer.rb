class Transfer
  attr_accessor :sender, :receiver, :transfer_amount, :status

  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @transfer_amount = transfer_amount
    @status = 'pending'
  end

  def valid?

  end

  def execute_transaction

  end

end
