require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do 
        erb :index
    end
    get '/new' do 
        erb :create_puppy
    end
    post '/puppy' do
        p = Puppy.new(params[:name],params[:breed],params[:age])
        @name,@age,@breed = p.name,p.months_old,p.breed
        erb :display_puppy
    end

end
