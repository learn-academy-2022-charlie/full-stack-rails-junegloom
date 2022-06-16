Rails.application.routes.draw do
  get '/posts' => 'post#index', as:'posts' 
  get '/posts/new' => 'post#new', as: 'new_post'
  post '/posts'=> 'post#create'
  get '/posts/:id' => 'post#show', as:'post'
  delete '/posts/:id' => 'post#destroy', as: 'delete_post'
  root 'post#index'
end
