require 'sinatra/base'


class Battle < Sinatra::Base
  get '/index' do
    @name = params[:name]
    erb(:index)
  end

  get '/' do
    'Testing infrastructure working!'
  end

  run! if app_file == $0
end
