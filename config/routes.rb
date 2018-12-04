Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/messages', to: 'messages#show'
    end
  end
end
