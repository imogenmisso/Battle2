require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1])
    player2 = Player.new(params[:player_2])
    $game = Game.new(player1, player2)
    redirect to('/play')
  end

  get '/play' do
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    @score = $game.player2.score
    erb :play
  end

  post '/attack_response' do
    $game.attack($game.player2)
    redirect to('/play2')
  end

  get '/play2' do
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    @score = $game.player2.score
    erb :play2
  end


  run! if app_file == $0
end
