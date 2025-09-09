Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "/notes", to: "notes#index"

  get "notes/new", to: "notes#new"
  post "/notes", to: "notes#create"

  get "/notes/:id", to: "notes#show"

  get "/notes/:id/edit", to: "notes#edit"
  patch "/notes/:id", to: "notes#update"
  put "/notes/:id", to: "notes#update"

  delete "/notes/:id", to: "notes#destroy"

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
