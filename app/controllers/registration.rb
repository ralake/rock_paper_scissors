class Rock_Paper_Scissors

  get '/' do
    erb :index
  end

  get '/registration' do
    erb :registration
  end

  post '/registration' do
    erb :registration
  end
  
end