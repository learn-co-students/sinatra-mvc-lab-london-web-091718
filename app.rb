require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    input = params[:user_phrase]
    piglatin = PigLatinizer.new
    @display_res = piglatin.piglatinize(input)
    erb :display_input
  end

end
