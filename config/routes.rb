Rails.application.routes.draw do
  resources :phrases, only: [:index, :new] do
    resources :phrase_collabs, only: [:new]
  end

  root to: 'phrases#index'
end
