require "player.rb"

describe Player do

  subject(:player) { described_class.new("Simon") }

  describe "#initialize" do
    it "is initialised with 100 votes" do
      expect(player.votes).to eq 20
    end
  end

  it "returns a name" do
    expect(player.name).to eq "Simon"
  end

  describe "#reduce_votes" do
    it "reduces the votes by 10" do
      player.reduce_votes
      expect(player.votes).to eq 10
    end
  end
end
