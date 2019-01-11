Rails.application.routes.draw do
  root to: 'homepage#index'
  resources :users, except: [:new]
  delete 'session_logout', to: 'session#logout'
  post 'session_login', to: 'session#login'
  mount ActionCable.server => '/cable'

  namespace :admin do
    get 'bibliophile_admin', to: 'bibliophile_admin#index'
  end
end
