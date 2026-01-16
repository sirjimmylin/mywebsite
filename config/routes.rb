Rails.application.routes.draw do
  # Set the homepage to the 'home' action in the 'Pages' controller
  root 'pages#home'

  # Static pages
  get 'about', to: 'pages#about'

  # Dynamic resources (Projects and Blog)
  resources :projects
  resources :posts

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

end
