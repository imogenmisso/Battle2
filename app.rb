require 'sinatra/base'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect to('/play')
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :play
  end

  post '/attack_response' do
    redirect to('/play2')
  end

  get '/play2' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :play2
  end


  run! if app_file == $0
end
