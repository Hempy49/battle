require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base
  enable:sessions

  get '/' do
    erb :index
  end

  post '/play' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player1_votes = $player1.votes
    @player2_votes = $player2.votes
    erb :play
  end

  get '/attack1' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player1_votes = $player1.reduce_votes
    erb :attack1
  end















  run! if app_file == $0
end
