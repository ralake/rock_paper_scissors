require 'sinatra/base'
require './lib/player'
require './lib/computer_player'
require './lib/game'

class Rock_Paper_Scissors < Sinatra::Base

  set :public_folder, Proc.new { File.join(root, "..", "public") }
  enable :sessions
  
  run! if app_file == $0

end

require_relative './controllers/registration'
require_relative './controllers/game'
require_relative './controllers/result'
