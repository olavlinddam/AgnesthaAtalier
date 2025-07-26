Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
   root "products#index"



  #### PRODUCTS ####
  get "/products", to: "products#index" # gets all products
  get "/products/:id", to: "products#show" # gets single by id

  # creating
  get "/products/new", to: "products#new" # gets a form for creating
  post "/products", to: "products#create" # posts the new proudct

  # update
  get "/products/:id/edit", to: "products#edit" # gets form to edit single by id
  patch "/products/:id", to: "products#update" # update-partial by id
  put "/products/:id", to: "products#update" # update-full by id

  # delete
  delete "/products/:id", to: "products#destroy" # deletes record by id

  # all the above can be replaced by:
  # resources :products
end
