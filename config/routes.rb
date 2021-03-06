Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  
  root to: 'blogs#home' 
  
  resources :blogs do
    collection do
      post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  
  resources :favorites, only: [:create, :destroy]
end

