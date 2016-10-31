Rails.application.routes.draw do
  resources :wineries
  resources :breweries
  resources :beercolours
  resources :winecolours
  root 'index#main'
  get 'index/beermain'

  resources :wineposts
  resources :beerposts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
