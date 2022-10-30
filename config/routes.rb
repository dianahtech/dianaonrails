Rails.application.routes.draw do

   devise_for :users

   
   mount_devise_token_auth_for 'NativeUser', at: 'native'
      
    resources :items  
    resources :ordered_item
    get 'home/about'


    root 'home#about'
  
  # For details on the DSL available withithis fil, see https://guides.rubyonrails.org/routing.html
end
