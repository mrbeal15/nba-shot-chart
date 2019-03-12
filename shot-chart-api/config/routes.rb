Rails.application.routes.draw do
  resources :games, only: [:index, :show] do
    resources :shots, only: [:index, :show]
  end

  resources :players, only: [:index, :show] do
    resources :shots, only: [:index, :show]
  end
end
