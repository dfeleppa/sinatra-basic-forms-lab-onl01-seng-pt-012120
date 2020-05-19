require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :index
  end
  
  get '/new' do
    erb :create_puppy
  end
  
  post '/puppy' do
  
    p = PigLatinizer.new
    @piglatin = p.piglatinize(params[:user_phrase])
    erb :piglatinize
  end
  
end
