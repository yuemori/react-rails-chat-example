Rails.application.routes.draw do
  resources :rooms do
    resources :messages, only: [:index, :create], constraints: { format: 'json' }
  end

  resources :users, only: [:show, :create, :new]

  mount ActionCable.server => '/cable'
end
