Rails.application.routes.draw do
  root to: 'rooms#index'

  resources :rooms do
    resources :messages, only: [:index, :create], constraints: { format: 'json' }
  end

  mount ActionCable.server => '/cable'
end
