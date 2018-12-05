Rails.application.routes.draw do
  root to: 'homepage#index'
  resources :users, except: [:new]
  namespace :api do
    namespace :v1 do
      get '/messages', to: 'messages#show'
    end
  end
end
