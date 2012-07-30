require './account.rb'

describe Account do
  before do
    @account = Account.new('test')
    @account.deposit(100)
  end

  describe '#deposit' do
    it 'should change the balance' do
      lambda{@account.deposit(100)}.should change{@account.balance}
    end

    it 'should have balance of Rs.200' do
      lambda{@account.deposit(100)}.should change{@account.balance}.to(200.00)
    end

    it 'should change the balance by Rs.100.00' do
      lambda{@account.deposit(100)}.should change{@account.balance}.by(100.00)
    end

    it 'should change the balance from Rs.100.00 to Rs.200.00' do
      lambda{@account.deposit(100)}.should change{@account.balance}.from(100.00).to(200.00)
    end
  end
end
