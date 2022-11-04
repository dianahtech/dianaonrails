require 'api_constraints'

Rails.application.routes.draw do

  #http://localhost:3000/api/items
  #http://localhost:3000/api/orders
  namespace :api, defaults: {format: :json} do
      scope module: :v1,
        constraints: ApiConstraints.new(version:1, default: true) do
        resources :items    
        resources :orders
        mount_devise_token_auth_for 'NativeUser', at: 'native'      
      end
  end 

  devise_for :users   
  resources :items  
  resources :ordered_item
  get 'home/about'
  root 'home#about'
  # For details on the DSL available withithis fil, see https://guides.rubyonrails.org/routing.html
end
