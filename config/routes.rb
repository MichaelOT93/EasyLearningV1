Rails.application.routes.draw do



  get 'home' => 'static_pages#home'

  get  '/about' => 'static_pages#about' 
  get '/contact' => 'static_pages#contact'
  get 'cart/index' => 'cart#index'

  get '/cart/:id', to: 'cart#add'

  root :to => 'static_pages#home'


  devise_for :users
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
