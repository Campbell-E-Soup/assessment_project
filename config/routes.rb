Rails.application.routes.draw do
  root "home#index"

  get  "/customer/new", to: "customer#new",    as: :new_customer
  post "/customer", to: "customer#create", as: :create_customer
  get  "/customer/:id", to: "customer#show",   as: :show_customer
end
