Rails.application.routes.draw do
  resources :beercolours
  resources :winecolours
  root 'index#main'

  resources :wineposts
  resources :beerposts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
