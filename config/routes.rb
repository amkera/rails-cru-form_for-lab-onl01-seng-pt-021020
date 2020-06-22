Rails.application.routes.draw do
  get 'genres/new'

  get 'genres/edit'

  get 'genres/show'

  get 'artists/new'

  get 'artists/edit'

  get 'artists/show'

  resources :songs 
  resources :genres 
  resources :artists
end
