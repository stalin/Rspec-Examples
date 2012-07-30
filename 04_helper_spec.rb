require './user.rb'

describe User do
  it 'should be true when user is active' do
    user = User.new('TestUser')
    user.set_status('active')
    user.active?.should == true
  end

  it 'should be false when user is in-active' do
    user = User.new('TestUser')
    user.set_status('in-active')
    user.active?.should == false
  end
end


describe User, 'with helper methods' do
  def create_user(options)
    user = User.new('TestUser')
    user.set_status(options[:status])
    user
  end

  it 'should be true when user is active' do
    user = create_user(:status => 'active')
    user.active?.should == true
  end

  it 'should be false when user is in-active' do
    user = create_user(:status => 'in-active')
    user.active?.should == false
  end
end
