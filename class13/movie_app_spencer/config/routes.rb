MoviesApp::Application.routes.draw do
  devise_for :users
  root "movies#index"
  resources :movies
  get 'search', to: 'movies#search'
end
