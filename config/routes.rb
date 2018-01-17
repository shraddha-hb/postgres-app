Rails.application.routes.draw do 

  resources :payment_notifications
  # current_cart 'cart', :controller => 'carts', :action => 'show', :id => 'current'
  
  get '/carts', to: 'carts#show', as: 'current_cart'
  get '/line_items', to: 'line_items#create_line_item', as: 'create_current_cart'
  resources :products
  resources :categories
  # resources :line_items
  resources :carts

  # get 'errors/internal_server_error'
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
        confirmations: 'users/confirmations',
        passwords: 'users/passwords',
        unlocks: 'users/unlocks',
        omniauth_callbacks: 'users/omniauth_callbacks'
      }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :users, only: [:index, :show,:update]
  # match 'current_cart', :to => "carts#show", :via => :all 
  
  # resources :products
  # resources :categories
  # resources :accounts
end
