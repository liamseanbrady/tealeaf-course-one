require 'rubygems'
require 'sinatra'

set :sessions, true

helpers do
  def calculate_total(cards)
    55
  end
end

get '/' do
    redirect '/game'
end

get '/set_name' do
  erb :set_name
end

post '/set_name' do
  session[:player_name] = params[:player_name]
  redirect '/bet'
end

get '/bet' do
  erb :bet
end

post '/bet' do
  session[:bet_amount] = params[:bet_amount]
  redirect '/game'
end

get '/game' do
  if !session[:player_name]
    redirect '/set_name'
  elsif !session[:bet_amount]
    redirect '/bet'
  else
    suits = ['H', 'D', 'C', 'S']
    values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
    session[:deck] = suits.product(values).shuffle!
    session[:player_cards] = []
    session[:comp_cards] = []
    session[:player_cards] << session[:deck].pop
    session[:player_cards] << session[:deck].pop

    erb :game
  end
end

post '/deal_card' do
  session[:player_cards] << session[:deck].pop
  erb :game
end

post '/reset_game' do
  session.clear
  redirect '/'
end


