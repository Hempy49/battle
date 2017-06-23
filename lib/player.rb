class Player

  attr_reader :name, :votes

  def initialize(name, votes = 20)
    @name = name
    @votes = votes
  end

  def reduce_votes
    @votes -= 10
  end
end
