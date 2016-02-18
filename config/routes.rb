Rails.application.routes.draw do

  devise_for :users
  
  root to: 'relationships#index'
  
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

  get '/visits' => 'visits#index'
  get '/visits/new' => 'visits#new'
  post '/visits' => 'visits#create'
  get '/visits/:id' => 'visits#show'
  get '/visits/:id/edit' => 'visits#edit'
  patch '/visits/:id' => 'visits#update'
  delete '/visits/:id' => 'visits#destroy'

  



end
