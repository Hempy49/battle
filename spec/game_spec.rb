require "game.rb"
require "player.rb"

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }

  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe "#initialize" do
    it "is initialized with two instances of the Player class" do
      expect(game.player1).to_not be_nil
      expect(game.player2).to_not be_nil
    end
  end
  
  describe "#player1" do
    it "returns the first player" do
      expect(game.player1).to eq player_1
    end
  end

  describe "#player2" do
    it "returns the first player" do
      expect(game.player2).to eq player_2
    end
  end

  describe "#attack" do
    it "reduces the votes by ten" do
      allow(player_1).to receive(:reduce_votes) { 90 }
      expect(game.attack(player_1)).to eq 90
    end
  end
end
