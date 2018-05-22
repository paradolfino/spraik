Rails.application.routes.draw do
    devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'categories#index'
  
    get 'category/:id/words/new' => 'categories#new_word'
    post 'category/:id/words/new' => 'categories#create_word'
    resources :categories
    resources :words
    resources :phrases
end
