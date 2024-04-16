Rails.application.routes.draw do
  get 'competitions/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: 'pages#home'

  # PAGES ROUTES
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"

  # CLUBS ROUTES
  #   get "clubs", to: "clubs#index"
  #   get "clubs/new", to: "clubs#new" # #new needs to be before #show otherwise rails will think that "new" is an id
  #   get "clubs/:id", to: "clubs#show", as: :club
  #   post "clubs", to: "clubs#create"
  #   get "clubs/:id/edit", to: "clubs#edit", as: :edit_club
  #   patch "clubs/:id", to: "clubs#update"
  #   delete "clubs/:id", to: "clubs#destroy"
    # or
  #   resources :clubs
  resources :clubs, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :clubs do
    resources :competitions, only: [:new, :create]
  end
  resources :competitions, only: [:destroy]

end
