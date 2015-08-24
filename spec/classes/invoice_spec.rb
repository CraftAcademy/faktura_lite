require './lib/invoice.rb'
require './lib/user.rb'

describe Invoice do

  subject { Invoice.new }

  it 'instantietes new invoice' do
    expect(subject).to be_a Invoice
  end
  
  context 'should have a sender' do
    it { expect(subject).to respond_to :sender }
    it { expect(subject).to respond_to :sender= }
    it 'accepts sender if class of user' do
      expect{ subject.sender= User.new }.to_not raise_error
    end
    
    it 'rejects sender if not a class of user' do
      expect{subject.sender='whatever'}.to raise_error
    end
    
    it 'adds a User as sender' do
      subject.sender= User.new(name: 'Thomas')
      expect(subject.sender.name).to eql 'Thomas'
    end
    
  end
  
  context 'should have a reciever' do
    it { expect(subject).to respond_to :reciever }
    
  end
  
  context 'should have invoice items' do
    it { expect(subject).to respond_to :invoice_items }
    
  end
  
  
end