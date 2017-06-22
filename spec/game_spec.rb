require "game.rb"

describe Game do

  subject(:game) { described_class.new }

describe "#initialize" do
  it "is initialised with 100 votes" do
    expect(game.votes).to eq 100
  end
end


  describe "#reduce_votes" do
    it "reduces the votes by 10" do
      game.reduce_votes
      expect(game.votes).to eq 90
    end
  end
end
