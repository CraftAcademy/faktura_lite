class Invoice
  attr_accessor :sender, :reciever, :invoice_items
  
  def sender=(sender)
    if is_user?(sender)
      self.sender= sender
    end
  end
  
  private
  def is_user?
    raise 'foo' unless object.class == User
  end
  
  
end