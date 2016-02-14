Rails.application.routes.draw do

  devise_for :users

  devise_scope :user do
    root "devise/sessions#new"
  end
  
  # get '/' => 'websites#index'
  get '/websites' => 'websites#index'
  get '/websites/new' => 'websites#new'
  post '/websites' => 'websites#create'
  get '/websites/:id' => 'websites#show'
  get '/websites/:id/edit' => 'websites#edit'
  patch '/websites/:id' => 'websites#update'
  delete '/websites/:id' => 'websites#destroy'

  
  get '/relationships' => 'relationships#index'
  get '/relationships/new' => 'relationships#new'
  post '/relationships' => 'relationships#create'
  get '/relationships/:id' => 'relationships#show'
  get '/relationships/:id/edit' => 'relationships#edit'
  patch '/relationships/:id' => 'relationships#update'
  delete '/relationships/:id' => 'relationships#destroy'



end
