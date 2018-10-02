Rails.application.routes.draw do
  resources :pizzas
  
  resources :testJson, controller: 'test_json'

  resources :orders, controller: 'order'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
