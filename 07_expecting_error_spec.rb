require './account.rb'

InsufficientFundsError = Class.new Exception

describe Account do
  before do
    @account = Account.new('test')
  end

  describe '#withdraw' do
    context "when 0 balance" do
      it 'should raise error' do
        lambda { @account.withdraw(200) }.should raise_error
      end

      it 'should raise error with error message' do
        lambda { @account.withdraw(200) }.should raise_error( "Attempted to withdraw Rs.200 from an account with Rs.0.0")
      end

      it 'should raise error with exception class ' do
        lambda { @account.withdraw(200) }.should raise_error(InsufficientFundsError)
      end

      it 'should raise error with exception class  and error message' do
        lambda { @account.withdraw(200) }.should raise_error( InsufficientFundsError, "Attempted to withdraw Rs.200 from an account with Rs.0.0")
      end
    end
  end
end

