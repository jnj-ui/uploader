Rails.application.routes.draw do
  root to: 'blogs#home' 
  
  get 'sessions/new'

  get '/home', to: 'blogs#home'
  root to: 'blogs#home' 
  
  resources :blogs do
    collection do
      post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
end

