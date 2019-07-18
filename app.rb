require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pler = PigLatinizer.new
    @piglatin = pler.piglatinize(params[:user_phrase])
    
    erb :results
  end

  # get '/results' do
  #   erb :results
  # end


end
