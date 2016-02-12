Rails.application.routes.draw do

  devise_for :users

  devise_scope :user do
    root "devise/sessions#new"
  end
  get '/' => 'websites#index'
  
  get '/websites' => 'websites#index'
  
  get '/websites/new' => 'websites#new'
  post '/websites' => 'websites#create'
  
  get '/websites/:id' => 'websites#show'
  
  get '/websites/:id/edit' => 'websites#edit'
  patch '/websites/:id' => 'websites#update'
  
  delete '/websites/:id' => 'websites#destroy'



end
