GamesOnRails::Application.routes.draw do

  get "games", to: "games#index" 
  get "games/magic-eight-ball", to: "games#magic_eight_ball" , as: 'magic_eight_ball'
  get "games/magic-eight-ball/:question", to: "games#magic_eight_ball_question"


  get "games/secret-number/", to: "games#secret_number" , as: 'secret_number'
  get "games/secret-number/:guess", to: "games#secret_number_guess" , as: 'secret_number_guess'


  get "games/rps_game/", to: "games#rps_game" , as: 'rps_game'


  get "games/rps_game/:input", to: "games#rps_game_table" , as: 'rps_game_table'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
