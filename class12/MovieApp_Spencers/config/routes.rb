MoviesApp::Application.routes.draw do
  devise_for :users, path_names: { sign_up: "register" }
  root "movies#index"
  resources :movies
  get 'search', to: 'movies#search'
end
