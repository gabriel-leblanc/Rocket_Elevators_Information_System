Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'corporate', to: 'home#corporate'
  get 'residential', to: 'home#residential'
  
  root 'home#index' # shortcut for the above /


  # root 'quotes#form'
  get '/quotes', to: 'quotes#form'
  post '/quotes', to: 'quotes#create'

  # get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'home' => 'home#index' 
end