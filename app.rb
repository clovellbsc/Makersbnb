
require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/flash'


class Makersbnb < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  register Sinatra::Flash
  enable :sessions

  get '/' do
    erb :index
  end
  
  run! if app_file == $0

end