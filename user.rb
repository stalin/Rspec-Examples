require 'date'

class User
  VOTE_AGE = 18
  def initialize(name, dob=Date.today)
    @name = name
    @dob  = dob
  end

  def set_status(status)
    @status = status
  end

  def eligible_to_vote?
    (Date.today.year - @dob.year) >= VOTE_AGE # must be refactored
  end

  def active?
    @status == 'active'
  end
end
