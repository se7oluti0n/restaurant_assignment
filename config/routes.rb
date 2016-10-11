Rails.application.routes.draw do
  resources :orders
  resources :food_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/menu', to: 'home#menu'
  get '/contact', to: 'home#contact'
    root "home#index"
end
