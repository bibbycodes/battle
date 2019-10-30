require 'sinatra/base'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do # Post
    # setting the player names into the session hash as an intermediary
    # Post/Redirect/Get
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play' # Redirect
  end

  get '/play' do # Get
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end

  run! if app_file == $0
end
