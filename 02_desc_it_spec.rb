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
end
