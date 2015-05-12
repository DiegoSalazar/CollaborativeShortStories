Rails.application.routes.draw do
	devise_scope :user do
  	devise_for :users
  	root to: 'devise/sessions#create'
  end
  
  resources :phrases, only: [:index, :new] do
    resources :phrase_collabs, only: [:new]
  end

  
end
