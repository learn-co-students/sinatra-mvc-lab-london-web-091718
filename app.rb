require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @piglatinized = pl.piglatinize(params[:user_phrase])

    erb :results
  end

  # post '' do
  #
  # end
end
