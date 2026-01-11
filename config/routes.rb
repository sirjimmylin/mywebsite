Rails.application.routes.draw do
  get "pages/home"
  get "pages/about"
  # Set the homepage to the 'home' action in the 'Pages' controller
  root 'pages#home'

  # Static pages
  get 'about', to: 'pages#about'

  # Dynamic resources (Projects and Blog)
  resources :projects
  resources :posts
end
