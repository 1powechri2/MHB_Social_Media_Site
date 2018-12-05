Rails.application.routes.draw do
  root to: 'homepage#index'
  namespace :api do
    namespace :v1 do
      get '/messages', to: 'messages#show'
    end
  end
end
