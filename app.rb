require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end 

    post '/piglantinize' do
        @piglatin = Piglatinizer.new.piglantinize(params[:user_phrase]) 
        erb :results        
    end 

end