require './account.rb'

describe Account do
  before do
    @account = Account.new('test')
    @account.deposit(100)
  end

  describe '#deposit' do
    it 'should add amount to existing balance' do
      @account.deposit(100)
      @account.balance.should eql 200.0
    end
    it 'should not allow amount in negative' do
      @account.deposit(-100)
      @account.balance.should eql 100.0
    end
  end

  describe '#withdraw' do
    it 'should deduct withdrawn amount from balance' do
      @account.withdraw(50)
      @account.balance.should eql 50.0
    end
  end

  describe '#transfer' do
    it 'should deduct from self'
    it 'should increase the balance of payee'
  end

  describe 'transfer pending 2' do
    it 'should deduct from self' do
      pending 'not yet implemented'
      @account.transfer(100, @payee)
      @account.balance.should == 0.0
    end
  end
end
