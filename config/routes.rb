Rails.application.routes.draw do
  root 'pages#index'
  devise_for :users

  resources :conversations do
    resources :messages
  end
end
