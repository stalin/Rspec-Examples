require './account.rb'

describe 'A new Account' do
  before do
    @account = Account.new('test')
  end

  # withtout predict matchers
  it 'should have balance of 0' do
    @account.zero_balance?.should == true
  end

  # with predict matchers; more readbility
  it 'should have balance of 0' do
    @account.should be_zero_balance
  end

  it 'should be an object of Account' do
    @account.should be_a_kind_of Account
    @account.should be_an_instance_of Account
  end
end

