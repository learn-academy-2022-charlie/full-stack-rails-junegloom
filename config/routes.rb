Rails.application.routes.draw do
  root 'post#index'
  get '/posts' => 'post#index', as:'posts' 
  get '/posts/:id' => 'post#show', as:'post'

  # Clicking submit on the form on the new.html.erb will go directly to the /posts route and trigger the #create method
  # These two go hand in hand
  get '/posts/new' => 'post#new', as: 'new_post'
  post '/posts'=> 'post#create'
  # ===========

  # Clicking submit on the form on the edit.html.erb will go directly to the PATCH /posts/:id route and trigger the #update method
  # These two go hand in hand
  get 'posts/:id/edit', to: 'post#edit', as: 'edit_post'
  patch 'posts/:id', to: 'post#update'
  # ===========

  delete '/posts/:id' => 'post#destroy', as: 'delete_post'
  
end
