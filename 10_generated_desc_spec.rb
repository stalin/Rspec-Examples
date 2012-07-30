require './user.rb'

describe 'A Cricket team' do
  before do 
    @team = (1..11).to_a 
  end

  it "should have 11 players" do
     @team.should have(11).players 
  end

  specify { @team.should have(11).players }

end

describe User do
  before do
    @voter = User.new('sam', Date.new(1990, 1, 1))
  end

  # incorrect
  specify { @voter.should be_eligible_to_vote }

  # correct
  it "should be eligible to vote at the age of 18" do
    @voter.should be_eligible_to_vote
  end
end


