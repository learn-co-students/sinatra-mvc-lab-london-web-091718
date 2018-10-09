require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    word = params[:user_phrase]
    pl = PigLatinizer.new
    @result = pl.piglatinize(word)

    erb :show_input
  end


end
