# 'controller#action'
# get '/posts'            # 'posts#index'
# get '/posts/:id'        # 'posts#show'
# get '/posts/new'        # 'posts#new'
# post '/posts'           # 'posts#create'
# get '/posts/:id/edit'   # 'posts#edit'
# patch '/posts/:id'      # 'posts#update'
# delete '/posts/:id'     # 'posts#delete'
# resources :posts simplifies everything

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root 'posts#index'
  resources :posts
  resources :categories
  resources :comments
end
