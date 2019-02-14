
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end
  
  get '/articles/new' do 
    erb :new 
  end 
  
  post '/articles' do 
   t = Article.new(title: params[:title], content: params[:content], id: params[:id]) 
  binding.pry
  end
    
  
  
end
