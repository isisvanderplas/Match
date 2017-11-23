Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  # authenticated :user do
  #   root to: 'users#index', as: :authenticated_root
  # end
end
