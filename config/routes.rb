Rails.application.routes.draw do
  root to: 'homepage#index'
  resources :users, except: [:new]
  post 'session_logout', to: 'session#logout'
  post 'session_login', to: 'session#login'
  namespace :api do
    namespace :v1 do
      get '/messages', to: 'messages#show'
    end
  end
end
