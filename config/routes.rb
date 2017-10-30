Rails.application.routes.draw do

  post '/post_data' => 'taruns#jayu_post'
  get '/fill_form' => 'taruns#my_form'
  # get '/products/new' => 'products#new'
  #
  # get 'products/index'

  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/findById' => 'library_system#findid'
  # get '/users' => 'users#index'
  # post '/users' => 'users#create'
  # get '/users/new' => 'users#new'
  # get '/users/:id' => 'users#show'
  # get '/users/:id/edit' => 'users#edit'
  # post '/users/:id' => 'users#update'
  get 'products/all' => 'products#all'
  get 'products/cart' => 'products#cart'
  resources :users
  resources :products
end
