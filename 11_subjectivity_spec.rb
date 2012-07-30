require './user.rb'

class RspecUser
  def happy?
    true
  end
end

describe 'Explicit Subject' do
  describe User do
    subject { User.new('david', Date.new(2990, 1, 1)) }
    specify { subject.should be_eligible_to_vote }
    it { should be_eligible_to_vote }
  end
end

describe 'Implicit Subject' do
  describe RspecUser do
    it {should be_happy}
  end
end
