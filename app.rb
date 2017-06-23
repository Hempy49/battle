require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable:sessions

  get '/' do
    erb :index
  end

  post '/play' do
    $game = Game.new(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack1' do
    @game = $game
    @game.attack
    erb :attack1
  end

  run! if app_file == $0
end
