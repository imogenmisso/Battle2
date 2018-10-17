require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player_1])
    $player2 = Player.new(params[:player_2])
    redirect to('/play')
  end

  get '/play' do
    @player_1 = $player1.name
    @player_2 = $player2.name
    erb :play
  end

  post '/attack_response' do
    redirect to('/play2')
  end

  get '/play2' do
    @player_1 = $player1.name
    @player_2 = $player2.name
    erb :play2
  end


  run! if app_file == $0
end
