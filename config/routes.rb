Rails.application.routes.draw do
    mount_devise_token_auth_for 'NativeUser', at: 'native'
  
    devise_for :users
    resources :items  
    get 'home/about'


    root 'home#about'
  
  # For details on the DSL available withithis fil, see https://guides.rubyonrails.org/routing.html
end
