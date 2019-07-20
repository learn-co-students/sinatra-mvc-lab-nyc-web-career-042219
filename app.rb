require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post '/piglatinize' do
    @pharse = params[:user_phrase]
    pig = PigLatinizer.new
    pig.piglatinize(@pharse)
  end

end
