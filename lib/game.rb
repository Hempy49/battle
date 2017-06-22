class Game

attr_reader :votes

  def initialize(votes = 100)
    @votes = votes
  end

  def reduce_votes
    @votes -= 10
  end
end
