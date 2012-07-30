require './account.rb'

describe 'A new Account' do
  it "should have 0 balance" do
    account = Account.new('test user')
    account.balance.should == 0.0
  end
end

