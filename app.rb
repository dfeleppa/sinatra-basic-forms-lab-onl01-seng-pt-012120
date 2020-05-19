require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :index
  end
  
  get '/new' do
    erb :create_puppy
  end
  
  post '/puppy' do
  @new_puppy Puppy.new(params(:))
    p = PigLatinizer.new
    @piglatin = p.piglatinize(params[:name, :bree])
    erb :piglatinize
  end
  
end
