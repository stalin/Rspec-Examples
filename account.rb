class Account

  attr_reader :balance

  def initialize(name)
    @name = name
    @balance = 0.0
  end

  def deposit(amount)
    @balance += amount if amount > 0
  end

  def withdraw(amount)
    raise InsufficientFundsError, "Attempted to withdraw Rs.#{amount} from an account with Rs.#{@balance}" if @balance < amount
    @balance -= amount if amount > 0
  end

  def zero_balance?
    @balance == 0
  end
end
