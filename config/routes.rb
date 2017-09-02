Rails.application.routes.draw do
  devise_for :users, controllers: { devworks: "devworks" }
  get 'portfolio/index'
  resources :devworks
  root 'devworks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
