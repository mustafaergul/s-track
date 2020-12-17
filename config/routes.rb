Rails.application.routes.draw do
  resources :user_stocks
  get 'welcome/new'
  get 'welcome/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
end
