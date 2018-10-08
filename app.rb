require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    wtf = PigLatinizer.new
    @piglatinized = wtf.piglatinize(params[:user_phrase])

    erb :piglatinize
  end
end