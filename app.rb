require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
  enable:sessions

  get '/' do
    erb :index
  end

  post '/play' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    session[:player1_votes] = 100
    session[:player2_votes] = 100
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player1_votes = session[:player1_votes]
    @player2_votes = session[:player2_votes]
    erb :play
  end

  get '/attack1' do
    @player1 = $player1.name
    @player2 = $player2.name
    # @player1_votes -= 10
    erb :attack1
  end















  run! if app_file == $0
end
