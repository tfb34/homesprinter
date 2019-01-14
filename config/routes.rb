Rails.application.routes.draw do
 
  post 'searchResults', to: 'search_results#create'
  get 'homes', to: 'homes#index'

  #get 'password_resets/new'
  #get 'password_resets/edit'
  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'welcome#index'
  get '/about',  to: 'welcome#about'
  get '/signup', to: 'users#new'
  resources :users
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :password_resets, only: [:new, :create, :edit, :update]
end
