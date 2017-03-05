Rails.application.routes.draw do
  root 'users#index'
  resources :favorites
  resources :users
  get 'facebook/token'

  # get 'auth/:provider/callback' => 'sessions#create'
  # get 'auth/facebook', as: 'facebook_login'
  #
  # get 'logout' => 'sessions#destroy'
  #
  # get '/facebook_login' => 'users#index'
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #   # This is optional (as is the root to: above).
  #   get '/cool' => 'gif#cool'
  #   get '/sweet' => 'gif#sweet'
  #
  #   # These routes will be for signup. The first renders a form in the browse, the second will
  #   # receive the form and create a user in our database using the data given to us by the user.
  #   get '/signup' => 'users#new'
  #   post '/users' => 'users#create'

end
