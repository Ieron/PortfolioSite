Rails.application.routes.draw do
  devise_for :users
  resources :portfolios, except: [:show]
  get 'java-items', to: 'portfolios#java'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
  	member do
  		get :status_toggle
  	end
  end

  root to: 'pages#home'
end
