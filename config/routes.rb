Rails.application.routes.draw do
  root to: 'rooms#index'

  resources :rooms do
    resources :messages, only: [:index], constraints: { format: 'json' }
  end
end
