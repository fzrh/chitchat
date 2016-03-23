Rails.application.routes.draw do
  root 'pages#index'
  devise_for :users

  resources :conversations do
    resources :messages

    collection do
      get :inbox
      get :all, action: :index
      get :sent
      get :trash
    end
  end
end
