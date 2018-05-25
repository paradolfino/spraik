Rails.application.routes.draw do
  get 'pages/index'
    devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'categories#index'
  
    resources :categories
    resources :words
    resources :phrases
end
