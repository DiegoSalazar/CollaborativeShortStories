Rails.application.routes.draw do
  get 'how_it_works/index'

	devise_scope :user do
  	devise_for :users
  end

  root to: 'phrases#index'
  
  resources :phrases, only: [:index, :new] do
    resources :phrase_collabs, only: [:new]
  end

  
end
