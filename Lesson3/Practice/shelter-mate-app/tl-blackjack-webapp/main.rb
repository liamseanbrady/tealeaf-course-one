require 'rubygems'
require 'sinatra'
require 'pry'

set :sessions, true

get '/' do
  redirect '/sign_in'
end

get '/sign_in' do
  erb :sign_in
end

post '/sign_in' do
  session[:employee_name] = params[:employee_name]
  redirect '/new_dog'
end

get '/new_dog' do
  erb :new_dog
end

post '/new_dog' do
  dog_name = params[:dog_name]
  session[dog_name] = {}
  session[dog_name][:dog_name] = params[:dog_name]
  session[dog_name][:dog_age] = params[:dog_age]
  session[dog_name][:dog_gender] = params[:dog_gender]
  session[dog_name][:dog_status] = params[:dog_status]
  session[dog_name][:reason_in_shelter] = params[:reason_in_shelter]
  session[dog_name][:date_in_shelter] = params[:date_in_shelter]
  session[dog_name][:dog_breed] = params[:dog_breed]
  session[dog_name][:dog_spay_or_neuter] = params[:dog_spay_or_neuter]
  session[dog_name][:dog_weight] = params[:dog_weight]

  session[:current_dog] = dog_name

  redirect '/behavior_eval'
end

get '/behavior_eval' do
  erb :behavior_eval
end

post '/behavior_eval' do
  session[session[:current_dog]][:be_date_done] = params[:be_date_done]
  session[session[:current_dog]][:be_handler] = params[:be_handler]
  session[session[:current_dog]][:be_observer] = params[:be_observer]
  session[session[:current_dog]][:be_handling_notes] = params[:be_handling_notes]
  session[session[:current_dog]][:be_resource_notes] = params[:be_resource_notes]
  session[session[:current_dog]][:be_dog_test] = params[:be_dog_test]
  session[session[:current_dog]][:be_cat_test] = params[:be_cat_test]

  redirect '/medical_eval'
end

get '/medical_eval' do
  erb :medical_eval
end

post '/medical_eval' do
  session[session[:current_dog]][:medical_history] = params[:medical_history]
  session[session[:current_dog]][:indemnities] = params[:indemnities]

  redirect '/dog_info'
end

get '/dog_info' do
  erb :dog_info
end




