require 'sinatra/base'

class App < Sinatra::Base

    #get request route
    get '/newteam' do
        erb :newteam
    end

    #post request route
    post '/team' do
        @name = params[:name]
        @coach = params[:coach]
        @pg = params[:pg]
        @sg = params[:sg]
        @pf = params[:pf]
        @sf = params[:sf]
        @c = params[:c]
        
        erb :team 
    end
end
