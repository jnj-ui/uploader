Rails.application.routes.draw do
  resources :blogs do
    collection do
      post :confirm
    end
  end
  get '/home', to: 'blogs#home'
  root to: 'blogs#home'
end
