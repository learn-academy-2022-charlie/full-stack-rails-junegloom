Rails.application.routes.draw do
  get '/' => 'post#home', as:'home' 
  get '/post/:id' => 'post#post', as:'post'
  get '/new' => 'post#new_post'
  post '/create'=> 'post#create'
  # delete 'post/:id' => 'post#destroy', as: 'delete_post'
  
end
