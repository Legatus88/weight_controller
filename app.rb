require 'sinatra'
require 'sinatra/activerecord'
require 'active_support'


set :database, "sqlite3:weight.sqlite3"

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  username == 'sportsman' and password == 'sportsmans_password'
end

get '/' do 
  @title = 'Новая запись'
  haml :index
end

post '/record/new' do 
  @record = Record.create(params)
  redirect to '/list' if @record.save
end

get '/list' do
  @records = Record.all.order(:record_date)
  haml :list
end

delete '/records/:id' do
  @record = Record.find(params[:id])
  @record.delete
  redirect to '/list'
end

get '/chart' do 
  @dates = Record.all.map(&:record_date)
  @weights = Record.all.map(&:weight)
  haml :chart
end

require './models'