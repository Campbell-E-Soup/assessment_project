Rails.application.routes.draw do
  root "home#index"

  get  "/customer/new", to: "customer#new",    as: :new_customer
  get  "/customer/:id", to: "customer#show",   as: :show_customer
  get "/customer/edit/:id", to: "customer#edit", as: :edit_customer
  
  post "/customer", to: "customer#create", as: :create_customer
  patch "/customer/:id", to: "customer#update", as: :update_customer

  delete "/customer/:id", to: "customer#destroy", as: :delete_customer
end
