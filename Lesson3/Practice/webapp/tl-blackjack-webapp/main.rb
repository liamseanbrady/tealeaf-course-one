require 'rubygems'
require 'sinatra'

set :sessions, true

get '/' do
  erb :set_name
end

post '/set_name' do
  session[:player_name] = params[:player_name]
  redirect "/game"
end

get "/game" do
  session[:deck] = [["2", "H"], ["6", "D"]]
  session[:player_cards] = []
  session[:player_cards] << session[:deck].pop
  session[:player_cards] << session[:deck].pop

  erb :game
end


