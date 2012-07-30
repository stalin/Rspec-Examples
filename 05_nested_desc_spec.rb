
describe 'outer example group' do
  before { puts 'outer before' }
  describe 'inner example group' do
    before { puts 'inner before' }
    it { puts 'inner code example ' }
    after { puts 'inner after' }
  end
  after { puts 'outer after' }
end
