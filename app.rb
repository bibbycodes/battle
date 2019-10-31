require 'sinatra/base'
require_relative 'lib/player'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do # Post
    # setting the player names into the session hash as an intermediary
    # Post/Redirect/Get
    p params
    $player1 = Player.new(params[:player_1_name])
    $player2 = Player.new(params[:player_2_name])
    redirect '/play' # Redirect
  end

  get '/play' do # Get
    @player_1_name = $player1.name
    @player_2_name = $player2.name
    erb(:play)
  end

  get '/attack' do
    @player_1_name = $player1.name
    @player_2_name = $player2.name
    erb(:attack)
  end

  run! if app_file == $0
end
