Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources:posts

   root 'posts#index'
    get '/posts' => 'posts#index' 
    get '/posts/new' => 'posts#new'
    get '/posts/:id' => 'posts#show'
    post '/posts' => 'posts#create'
    get '/posts/:id/edit' => 'posts#edit'
    put '/posts/:id' => 'posts#update'
    patch '/posts/:id' => 'posts#update'
    delete '/posts/:id' => 'posts#destroy'
end
