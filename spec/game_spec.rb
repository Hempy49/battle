require "game.rb"

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }

  let(:player_1) do
    player_1 = double(:player_1)
    allow(player_1).to receive(:reduce_votes) { 10 }
    player_1
  end
  let(:player_2) do
    player_2 = double(:player_2)
    allow(player_2).to receive(:reduce_votes) { 10 }
    allow(player_2).to receive(:votes) { 10 }
    player_2
  end

  describe "#initialize" do
    it "is initialized with two instances of the Player class" do
      expect(game.player1).to_not be_nil
      expect(game.player2).to_not be_nil
    end
  end

  describe "#attack" do
    it "reduces the votes by ten" do
      expect(game.attack).to eq 10
    end
  end

  describe "#switch_player" do
    it "sets player1_turn to true" do
      expect(game.switch_player).to eq true
    end

    it "sets player1_turn to false" do
      game.switch_player
      expect(game.switch_player).to eq false
    end
  end
end
