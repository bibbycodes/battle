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
    $game = Game.new(
      Player.new(params[:player_1_name]), 
      Player.new(params[:player_2_name])
    )
    redirect '/play' # Redirect
  end

  get '/play' do # Get
    # @player_2_hp = $game.player_2.hp
    # @player_1_name = $game.player_1.name
    # @player_2_name = $game.player_2.name
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_2)
    erb(:attack)
  end

  run! if app_file == $0
end
