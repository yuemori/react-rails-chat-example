Rails.application.routes.draw do
  root to: 'rooms#index'

  resources :rooms do
    resources :messages, only: [:index, :create], constraints: { format: 'json' }
  end

  resources :users, only: [:show, :create, :new]

  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  mount ActionCable.server => '/cable'
end
