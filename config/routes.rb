Rails.application.routes.draw do

  devise_for :users


  authenticated do
    root :to => 'pages#home', as: :authenticated
  end

  root :to => 'pages#static_page'

end
