Rails.application.routes.draw do
  #For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/new', to: 'restaurants#new', as: "new"
  get 'restaurants/:id', to: 'restaurants#show', as: "restaurant"
  post 'restaurants', to: 'restaurants#create'
  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'
  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new'
  # resources :restaurants, only: [:index, :show, :new, :create] do
  #   resources :reviews, only: [:create]
  # end


end
