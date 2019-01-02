Rails.application.routes.draw do
  root to: 'homepage#index'
  resources :users, except: [:new]
  delete 'session_logout', to: 'session#logout'
  post 'session_login', to: 'session#login'
  namespace :api do
    namespace :v1 do
      get '/messages', to: 'messages#show'
      post '/messages', to: 'messages#create'
    end
  end
  mount ActionCable.server => '/cable'
end
