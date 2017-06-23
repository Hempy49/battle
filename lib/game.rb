require "./lib/player.rb"

class Game

attr_reader :votes, :player1_turn, :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player1_turn = false
  end

  def attack
    switch_player
    return @player2.reduce_votes if player1_can_attack?
    @player1.reduce_votes if player2_can_attack?
  end

  def player1_can_attack?
    @player2.votes >= 10 && @player1_turn == true
  end

  def player2_can_attack?
    @player1.votes >= 10 && @player1_turn == false
  end

  def switch_player
    @player1_turn = !@player1_turn
  end
end
