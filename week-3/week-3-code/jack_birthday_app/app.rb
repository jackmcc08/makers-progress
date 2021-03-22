require 'sinatra/base'
require_relative './lib/birthday.rb'

class BirthdayTracker < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/store_birthday' do
    session[:birthday] = Birthday.new(
      params[:first_name], params[:last_name],
      params[:day], params[:month]
    )
    redirect '/birthday'
  end

  get '/birthday' do
    erb :birthday
  end

  run! if app_file == $0

end
